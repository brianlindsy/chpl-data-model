---
--- OCD-1739: Save MUU history
---
-- create table and triggers
DROP VIEW IF EXISTS openchpl.certified_product_summary;
DROP VIEW IF EXISTS openchpl.developers_with_attestations;
DROP VIEW IF EXISTS openchpl.certified_product_details;
DROP VIEW IF EXISTS openchpl.certified_product_search;
DROP VIEW IF EXISTS openchpl.certified_product_search_result;
DROP TABLE IF EXISTS openchpl.meaningful_use_user;
CREATE TABLE openchpl.meaningful_use_user (
	id  bigserial NOT NULL,
	certified_product_id bigint NOT NULL,
	meaningful_use_users bigint NOT NULL,
	meaningful_use_users_date timestamp NOT NULL,
	creation_date timestamp NOT NULL DEFAULT NOW(),
	last_modified_date timestamp NOT NULL DEFAULT NOW(),
	last_modified_user bigint NOT NULL,
	deleted bool NOT NULL DEFAULT false,
	CONSTRAINT meaningful_use_user_pk PRIMARY KEY (id),
	CONSTRAINT certified_product_fk FOREIGN KEY (certified_product_id) REFERENCES openchpl.certified_product (certified_product_id)
		MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TRIGGER meaningful_use_user_audit AFTER INSERT OR UPDATE OR DELETE ON openchpl.meaningful_use_user FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();
CREATE TRIGGER meaningful_use_user_timestamp BEFORE UPDATE ON openchpl.meaningful_use_user FOR EACH ROW EXECUTE PROCEDURE openchpl.update_last_modified_date_column();
-- Load existing data into table
INSERT INTO openchpl.meaningful_use_user (certified_product_id, meaningful_use_users, meaningful_use_users_date, last_modified_user)
	SELECT cp.certified_product_id, cp.meaningful_use_users, muu.accurate_as_of_date, muu.last_modified_user
	FROM openchpl.certified_product cp, openchpl.muu_accurate_as_of_date muu
	WHERE cp.meaningful_use_users IS NOT NULL;
	
-- Update views
CREATE OR REPLACE VIEW openchpl.certified_product_summary AS
 SELECT cp.certified_product_id,
    cp.certification_edition_id,
    cp.product_version_id,
    cp.testing_lab_id,
    cp.certification_body_id,
    cp.chpl_product_number,
    cp.report_file_location,
    cp.sed_report_file_location,
    cp.sed_intended_user_description,
    cp.sed_testing_end,
    cp.acb_certification_id,
    cp.practice_type_id,
    cp.product_classification_type_id,
    cp.product_additional_software,
    cp.other_acb,
    cp.transparency_attestation_url,
    cp.ics,
    cp.sed,
    cp.qms,
    cp.accessibility_certified,
    cp.product_code,
    cp.version_code,
    cp.ics_code,
    cp.additional_software_code,
    cp.certified_date_code,
    cp.creation_date,
    cp.last_modified_date,
    cp.last_modified_user,
    cp.deleted,
    cp.pending_certified_product_id,
	muuResult.meaningful_use_users,
    ce.year,
    p.name AS product_name,
    v.name AS vendor_name,
    v.vendor_code,
    cs.certification_status,
    cb.acb_code,
    cb.name AS certification_body_name,
    cb.website AS certification_body_website
   FROM openchpl.certified_product cp
     JOIN openchpl.certification_edition ce ON cp.certification_edition_id = ce.certification_edition_id
     JOIN ( SELECT cse.certification_status_id,
            cse.certified_product_id,
            cse.event_date AS last_certification_status_change
           FROM openchpl.certification_status_event cse
             JOIN ( SELECT certification_status_event.certified_product_id,
                    max(certification_status_event.event_date) AS event_date
                   FROM openchpl.certification_status_event
                  WHERE certification_status_event.deleted <> true
                  GROUP BY certification_status_event.certified_product_id) cseinner ON cse.certified_product_id = cseinner.certified_product_id AND cse.event_date = cseinner.event_date
          WHERE cse.deleted <> true) max_cse ON max_cse.certified_product_id = cp.certified_product_id
     JOIN openchpl.certification_status cs ON cs.certification_status_id = max_cse.certification_status_id
     JOIN openchpl.product_version pv ON cp.product_version_id = pv.product_version_id
     JOIN openchpl.product p ON pv.product_id = p.product_id
     JOIN openchpl.vendor v ON p.vendor_id = v.vendor_id
     JOIN openchpl.certification_body cb ON cp.certification_body_id = cb.certification_body_id
	 JOIN ( SELECT muu.meaningful_use_users,
            muu.certified_product_id,
            muu.meaningful_use_users_date AS meaningful_use_users_date
           FROM openchpl.meaningful_use_user muu
             JOIN ( SELECT meaningful_use_user.certified_product_id,
                    max(meaningful_use_user.meaningful_use_users_date) AS meaningful_use_users_date
                   FROM openchpl.meaningful_use_user
                  WHERE meaningful_use_user.deleted <> true
                  GROUP BY meaningful_use_user.certified_product_id) muuInner ON muu.certified_product_id = muuInner.certified_product_id AND muu.meaningful_use_users_date = muuInner.meaningful_use_users_date
          WHERE muu.deleted <> true) muuResult ON muuResult.certified_product_id = cp.certified_product_id;

CREATE OR REPLACE VIEW openchpl.certified_product_details AS
SELECT
    a.certified_product_id,
    a.certification_edition_id,
    a.product_version_id,
    a.certification_body_id,
    (select chpl_product_number from openchpl.get_chpl_product_number(a.certified_product_id)),
    a.report_file_location,
    a.sed_report_file_location,
    a.sed_intended_user_description,
    a.sed_testing_end,
    a.acb_certification_id,
    a.practice_type_id,
    a.product_classification_type_id,
    a.other_acb,
    a.creation_date,
    a.deleted,
    a.product_code,
    a.version_code,
    a.ics_code,
    a.additional_software_code,
    a.certified_date_code,
    a.transparency_attestation_url,
    a.ics,
    a.sed,
    a.qms,
    a.accessibility_certified,
    a.product_additional_software,
    a.last_modified_date,
	muuResult.meaningful_use_users,
    b.year,
    c.certification_body_name,
    c.certification_body_code,
    c.acb_is_deleted,
    d.product_classification_name,
    e.practice_type_name,
    f.product_version,
    f.product_id,
    g.product_name,
    g.vendor_id,
    h.vendor_name,
    h.vendor_code,
    h.vendor_website,
    v.vendor_status_id,
    v.vendor_status_name,
    vendorstatus.last_vendor_status_change,
    t.address_id,
    t.street_line_1,
    t.street_line_2,
    t.city,
    t.state,
    t.zipcode,
    t.country,
    u.contact_id,
    u.full_name,
    u.email,
    u.phone_number,
    u.title,
    i.certification_date,
    decert.decertification_date,
    COALESCE(k.count_certifications, 0::bigint) AS count_certifications,
    COALESCE(m.count_cqms, 0::bigint) AS count_cqms,
    COALESCE(surv.count_surveillance_activities, 0::bigint) AS count_surveillance_activities,
    COALESCE(surv_open.count_open_surveillance_activities, 0::bigint) AS count_open_surveillance_activities,
    COALESCE(surv_closed.count_closed_surveillance_activities, 0::bigint) AS count_closed_surveillance_activities,
    COALESCE(nc_open.count_open_nonconformities, 0::bigint) AS count_open_nonconformities,
    COALESCE(nc_closed.count_closed_nonconformities, 0::bigint) AS count_closed_nonconformities,
    r.certification_status_id,
    r.last_certification_status_change,
    n.certification_status_name,
    p.transparency_attestation,
    q.testing_lab_name,
    q.testing_lab_code
   FROM openchpl.certified_product a
     LEFT JOIN ( 
	   SELECT cse.certification_status_id,
       		cse.certified_product_id,
            cse.event_date AS last_certification_status_change
       FROM openchpl.certification_status_event cse
         INNER JOIN ( 
		   SELECT certification_status_event.certified_product_id,
           		max(certification_status_event.event_date) AS event_date
           FROM openchpl.certification_status_event
		   WHERE deleted <> true
           GROUP BY certification_status_event.certified_product_id) cseinner 
		 ON cse.certified_product_id = cseinner.certified_product_id 
		 AND cse.event_date = cseinner.event_date 
		WHERE cse.deleted <> true) r
	   ON r.certified_product_id = a.certified_product_id
     LEFT JOIN ( SELECT certification_status.certification_status_id,
            certification_status.certification_status AS certification_status_name
           FROM openchpl.certification_status) n ON r.certification_status_id = n.certification_status_id
	 LEFT JOIN ( 
	   SELECT muu.meaningful_use_users,
       		muu.certified_product_id,
            muu.meaningful_use_users_date
       FROM openchpl.meaningful_use_user muu
         INNER JOIN ( 
		   SELECT meaningful_use_user.certified_product_id,
           		max(meaningful_use_user.meaningful_use_users_date) as meaningful_use_users_date
           FROM openchpl.meaningful_use_user
		   WHERE deleted <> true
           GROUP BY meaningful_use_user.certified_product_id) muuInner 
		 ON muu.certified_product_id = muuInner.certified_product_id 
		 AND muu.meaningful_use_users_date = muuInner.meaningful_use_users_date
		WHERE muu.deleted <> true) muuResult
	   ON muuResult.certified_product_id = a.certified_product_id
     LEFT JOIN ( SELECT certification_edition.certification_edition_id,
            certification_edition.year
           FROM openchpl.certification_edition) b ON a.certification_edition_id = b.certification_edition_id
     LEFT JOIN ( SELECT certification_body.certification_body_id,
            certification_body.name AS certification_body_name,
            certification_body.acb_code AS certification_body_code,
            certification_body.deleted AS acb_is_deleted
           FROM openchpl.certification_body) c ON a.certification_body_id = c.certification_body_id
     LEFT JOIN ( SELECT product_classification_type.product_classification_type_id,
            product_classification_type.name AS product_classification_name
           FROM openchpl.product_classification_type) d ON a.product_classification_type_id = d.product_classification_type_id
     LEFT JOIN ( SELECT practice_type.practice_type_id,
            practice_type.name AS practice_type_name
           FROM openchpl.practice_type) e ON a.practice_type_id = e.practice_type_id
     LEFT JOIN ( SELECT product_version.product_version_id,
            product_version.version AS product_version,
            product_version.product_id
           FROM openchpl.product_version) f ON a.product_version_id = f.product_version_id
     LEFT JOIN ( SELECT product.product_id,
            product.vendor_id,
            product.name AS product_name
           FROM openchpl.product) g ON f.product_id = g.product_id
     LEFT JOIN ( SELECT vendor.vendor_id,
            vendor.name AS vendor_name,
            vendor.vendor_code,
            vendor.website AS vendor_website,
            vendor.address_id AS vendor_address,
            vendor.contact_id AS vendor_contact,
            vendor.vendor_status_id
           FROM openchpl.vendor) h ON g.vendor_id = h.vendor_id
     LEFT JOIN ( SELECT acb_vendor_map.vendor_id,
            acb_vendor_map.certification_body_id,
            acb_vendor_map.transparency_attestation
           FROM openchpl.acb_vendor_map) p ON h.vendor_id = p.vendor_id AND a.certification_body_id = p.certification_body_id
     LEFT JOIN ( SELECT address.address_id,
            address.street_line_1,
            address.street_line_2,
            address.city,
            address.state,
            address.zipcode,
            address.country
           FROM openchpl.address) t ON h.vendor_address = t.address_id
     LEFT JOIN ( SELECT contact.contact_id,
            contact.full_name,
            contact.email,
            contact.phone_number,
            contact.title
           FROM openchpl.contact) u ON h.vendor_contact = u.contact_id
     LEFT JOIN ( SELECT vshistory.vendor_status_id,
            vshistory.vendor_id,
            vshistory.status_date AS last_vendor_status_change
           FROM openchpl.vendor_status_history vshistory
             JOIN ( SELECT vendor_status_history.vendor_id,
                    max(vendor_status_history.status_date) AS status_date
                   FROM openchpl.vendor_status_history
                  WHERE vendor_status_history.deleted = false
                  GROUP BY vendor_status_history.vendor_id) vsinner ON vshistory.vendor_id = vsinner.vendor_id AND vshistory.status_date = vsinner.status_date) vendorstatus ON vendorstatus.vendor_id = h.vendor_id
     LEFT JOIN ( SELECT vendor_status.vendor_status_id,
            vendor_status.name AS vendor_status_name
           FROM openchpl.vendor_status) v ON vendorstatus.vendor_status_id = v.vendor_status_id
     LEFT JOIN ( SELECT min(certification_status_event.event_date) AS certification_date,
            certification_status_event.certified_product_id
           FROM openchpl.certification_status_event
          WHERE certification_status_event.certification_status_id = 1
		  AND certification_status_event.deleted <> true
          GROUP BY certification_status_event.certified_product_id) i ON a.certified_product_id = i.certified_product_id
     LEFT JOIN ( SELECT max(certification_status_event.event_date) AS decertification_date,
            certification_status_event.certified_product_id
           FROM openchpl.certification_status_event
          WHERE certification_status_event.certification_status_id = ANY (ARRAY[3::bigint, 4::bigint, 8::bigint])
		  AND certification_status_event.deleted <> true
          GROUP BY certification_status_event.certified_product_id) decert ON a.certified_product_id = decert.certified_product_id
     LEFT JOIN ( SELECT j.certified_product_id,
            count(*) AS count_certifications
           FROM ( SELECT certification_result.certification_result_id,
                    certification_result.certification_criterion_id,
                    certification_result.certified_product_id,
                    certification_result.success,
                    certification_result.gap,
                    certification_result.sed,
                    certification_result.g1_success,
                    certification_result.g2_success,
                    certification_result.api_documentation,
                    certification_result.privacy_security_framework,
                    certification_result.creation_date,
                    certification_result.last_modified_date,
                    certification_result.last_modified_user,
                    certification_result.deleted
                   FROM openchpl.certification_result
                  WHERE certification_result.success = true AND certification_result.deleted <> true) j
          GROUP BY j.certified_product_id) k ON a.certified_product_id = k.certified_product_id
     LEFT JOIN ( SELECT l.certified_product_id,
            count(*) AS count_cqms
           FROM (SELECT DISTINCT
    						a.certified_product_id,
    						COALESCE(b.cms_id, b.nqf_number) AS cqm_id
   					FROM openchpl.cqm_result a
     					LEFT JOIN openchpl.cqm_criterion b 
							ON a.cqm_criterion_id = b.cqm_criterion_id
					WHERE a.success = true
					AND a.deleted <> true
					AND b.deleted <> true) l
          GROUP BY l.certified_product_id
          ORDER BY l.certified_product_id) m ON a.certified_product_id = m.certified_product_id
     LEFT JOIN ( SELECT n_1.certified_product_id,
            count(*) AS count_surveillance_activities
           FROM ( SELECT surveillance.id,
                    surveillance.certified_product_id,
                    surveillance.friendly_id,
                    surveillance.start_date,
                    surveillance.end_date,
                    surveillance.type_id,
                    surveillance.randomized_sites_used,
                    surveillance.creation_date,
                    surveillance.last_modified_date,
                    surveillance.last_modified_user,
                    surveillance.deleted,
                    surveillance.user_permission_id
                   FROM openchpl.surveillance
                  WHERE surveillance.deleted <> true) n_1
          GROUP BY n_1.certified_product_id) surv ON a.certified_product_id = surv.certified_product_id
     LEFT JOIN ( SELECT n_1.certified_product_id,
            count(*) AS count_open_surveillance_activities
           FROM ( SELECT surveillance.id,
                    surveillance.certified_product_id,
                    surveillance.friendly_id,
                    surveillance.start_date,
                    surveillance.end_date,
                    surveillance.type_id,
                    surveillance.randomized_sites_used,
                    surveillance.creation_date,
                    surveillance.last_modified_date,
                    surveillance.last_modified_user,
                    surveillance.deleted,
                    surveillance.user_permission_id
                   FROM openchpl.surveillance
                  WHERE surveillance.deleted <> true AND surveillance.start_date <= now() AND (surveillance.end_date IS NULL OR surveillance.end_date >= now())) n_1
          GROUP BY n_1.certified_product_id) surv_open ON a.certified_product_id = surv_open.certified_product_id
     LEFT JOIN ( SELECT n_1.certified_product_id,
            count(*) AS count_closed_surveillance_activities
           FROM ( SELECT surveillance.id,
                    surveillance.certified_product_id,
                    surveillance.friendly_id,
                    surveillance.start_date,
                    surveillance.end_date,
                    surveillance.type_id,
                    surveillance.randomized_sites_used,
                    surveillance.creation_date,
                    surveillance.last_modified_date,
                    surveillance.last_modified_user,
                    surveillance.deleted,
                    surveillance.user_permission_id
                   FROM openchpl.surveillance
                  WHERE surveillance.deleted <> true AND surveillance.start_date <= now() AND surveillance.end_date IS NOT NULL AND surveillance.end_date <= now()) n_1
          GROUP BY n_1.certified_product_id) surv_closed ON a.certified_product_id = surv_closed.certified_product_id
     LEFT JOIN ( SELECT n_1.certified_product_id,
            count(*) AS count_open_nonconformities
           FROM ( SELECT surv_1.id,
                    surv_1.certified_product_id,
                    surv_1.friendly_id,
                    surv_1.start_date,
                    surv_1.end_date,
                    surv_1.type_id,
                    surv_1.randomized_sites_used,
                    surv_1.creation_date,
                    surv_1.last_modified_date,
                    surv_1.last_modified_user,
                    surv_1.deleted,
                    surv_1.user_permission_id,
                    surv_req.id,
                    surv_req.surveillance_id,
                    surv_req.type_id,
                    surv_req.certification_criterion_id,
                    surv_req.requirement,
                    surv_req.result_id,
                    surv_req.creation_date,
                    surv_req.last_modified_date,
                    surv_req.last_modified_user,
                    surv_req.deleted,
                    surv_nc.id,
                    surv_nc.surveillance_requirement_id,
                    surv_nc.certification_criterion_id,
                    surv_nc.nonconformity_type,
                    surv_nc.nonconformity_status_id,
                    surv_nc.date_of_determination,
                    surv_nc.corrective_action_plan_approval_date,
                    surv_nc.corrective_action_start_date,
                    surv_nc.corrective_action_must_complete_date,
                    surv_nc.corrective_action_end_date,
                    surv_nc.summary,
                    surv_nc.findings,
                    surv_nc.sites_passed,
                    surv_nc.total_sites,
                    surv_nc.developer_explanation,
                    surv_nc.resolution,
                    surv_nc.creation_date,
                    surv_nc.last_modified_date,
                    surv_nc.last_modified_user,
                    surv_nc.deleted,
                    nc_status.id,
                    nc_status.name,
                    nc_status.creation_date,
                    nc_status.last_modified_date,
                    nc_status.last_modified_user,
                    nc_status.deleted
                   FROM openchpl.surveillance surv_1
                     JOIN openchpl.surveillance_requirement surv_req ON surv_1.id = surv_req.surveillance_id AND surv_req.deleted <> true
                     JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id AND surv_nc.deleted <> true
                     JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
                  WHERE surv_1.deleted <> true AND nc_status.name::text = 'Open'::text) n_1(id, certified_product_id, friendly_id, start_date, end_date, type_id, randomized_sites_used, creation_date, last_modified_date, last_modified_user, deleted, user_permission_id, id_1, surveillance_id, type_id_1, certification_criterion_id, requirement, result_id, creation_date_1, last_modified_date_1, last_modified_user_1, deleted_1, id_2, surveillance_requirement_id, certification_criterion_id_1, nonconformity_type, nonconformity_status_id, date_of_determination, corrective_action_plan_approval_date, corrective_action_start_date, corrective_action_must_complete_date, corrective_action_end_date, summary, findings, sites_passed, total_sites, developer_explanation, resolution, creation_date_2, last_modified_date_2, last_modified_user_2, deleted_2, id_3, name, creation_date_3, last_modified_date_3, last_modified_user_3, deleted_3)
          GROUP BY n_1.certified_product_id) nc_open ON a.certified_product_id = nc_open.certified_product_id
     LEFT JOIN ( SELECT n_1.certified_product_id,
            count(*) AS count_closed_nonconformities
           FROM ( SELECT surv_1.id,
                    surv_1.certified_product_id,
                    surv_1.friendly_id,
                    surv_1.start_date,
                    surv_1.end_date,
                    surv_1.type_id,
                    surv_1.randomized_sites_used,
                    surv_1.creation_date,
                    surv_1.last_modified_date,
                    surv_1.last_modified_user,
                    surv_1.deleted,
                    surv_1.user_permission_id,
                    surv_req.id,
                    surv_req.surveillance_id,
                    surv_req.type_id,
                    surv_req.certification_criterion_id,
                    surv_req.requirement,
                    surv_req.result_id,
                    surv_req.creation_date,
                    surv_req.last_modified_date,
                    surv_req.last_modified_user,
                    surv_req.deleted,
                    surv_nc.id,
                    surv_nc.surveillance_requirement_id,
                    surv_nc.certification_criterion_id,
                    surv_nc.nonconformity_type,
                    surv_nc.nonconformity_status_id,
                    surv_nc.date_of_determination,
                    surv_nc.corrective_action_plan_approval_date,
                    surv_nc.corrective_action_start_date,
                    surv_nc.corrective_action_must_complete_date,
                    surv_nc.corrective_action_end_date,
                    surv_nc.summary,
                    surv_nc.findings,
                    surv_nc.sites_passed,
                    surv_nc.total_sites,
                    surv_nc.developer_explanation,
                    surv_nc.resolution,
                    surv_nc.creation_date,
                    surv_nc.last_modified_date,
                    surv_nc.last_modified_user,
                    surv_nc.deleted,
                    nc_status.id,
                    nc_status.name,
                    nc_status.creation_date,
                    nc_status.last_modified_date,
                    nc_status.last_modified_user,
                    nc_status.deleted
                   FROM openchpl.surveillance surv_1
                     JOIN openchpl.surveillance_requirement surv_req ON surv_1.id = surv_req.surveillance_id AND surv_req.deleted <> true
                     JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id AND surv_nc.deleted <> true
                     JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
                  WHERE surv_1.deleted <> true AND nc_status.name::text = 'Closed'::text) n_1(id, certified_product_id, friendly_id, start_date, end_date, type_id, randomized_sites_used, creation_date, last_modified_date, last_modified_user, deleted, user_permission_id, id_1, surveillance_id, type_id_1, certification_criterion_id, requirement, result_id, creation_date_1, last_modified_date_1, last_modified_user_1, deleted_1, id_2, surveillance_requirement_id, certification_criterion_id_1, nonconformity_type, nonconformity_status_id, date_of_determination, corrective_action_plan_approval_date, corrective_action_start_date, corrective_action_must_complete_date, corrective_action_end_date, summary, findings, sites_passed, total_sites, developer_explanation, resolution, creation_date_2, last_modified_date_2, last_modified_user_2, deleted_2, id_3, name, creation_date_3, last_modified_date_3, last_modified_user_3, deleted_3)
          GROUP BY n_1.certified_product_id) nc_closed ON a.certified_product_id = nc_closed.certified_product_id
     LEFT JOIN ( SELECT testing_lab.testing_lab_id,
            testing_lab.name AS testing_lab_name,
            testing_lab.testing_lab_code
           FROM openchpl.testing_lab) q ON a.testing_lab_id = q.testing_lab_id;

CREATE OR REPLACE VIEW openchpl.certified_product_search AS
SELECT cp.certified_product_id,
       child.child,
       parent.parent,
       certs.cert_number AS certs,
       cqms.cqm_number AS cqms,
       openchpl.get_chpl_product_number(cp.certified_product_id) AS chpl_product_number,
       muuResult.meaningful_use_users,
       cp.transparency_attestation_url,
       edition.year,
       acb.certification_body_name,
       cp.acb_certification_id,
       prac.practice_type_name,
       version.product_version,
       product.product_name,
       vendor.vendor_name,
       vendor_status.vendor_status_name,
       owners.history_vendor_name AS owner_history,
       certstatusevent.certification_date,
       certstatus.certification_status_name,
       decert.decertification_date,
       certs_with_api_documentation.cert_number AS api_documentation,
       COALESCE(survs.count_surveillance_activities, 0::bigint) AS surveillance_count,
       COALESCE(nc_open.count_open_nonconformities, 0::bigint) AS open_nonconformity_count,
       COALESCE(nc_closed.count_closed_nonconformities, 0::bigint) AS closed_nonconformity_count
FROM openchpl.certified_product cp
LEFT JOIN
  (SELECT cse.certification_status_id,
          cse.certified_product_id,
          cse.event_date AS last_certification_status_change
   FROM openchpl.certification_status_event cse
   JOIN
     (SELECT certification_status_event.certified_product_id,
             max(certification_status_event.event_date) AS event_date
      FROM openchpl.certification_status_event
      WHERE certification_status_event.deleted = FALSE
      GROUP BY certification_status_event.certified_product_id) cseinner ON cse.certified_product_id = cseinner.certified_product_id
   AND cse.event_date = cseinner.event_date
   AND cse.deleted = false) certstatusevents ON certstatusevents.certified_product_id = cp.certified_product_id
LEFT JOIN
  (SELECT certification_status.certification_status_id,
          certification_status.certification_status AS certification_status_name
   FROM openchpl.certification_status) certstatus ON certstatusevents.certification_status_id = certstatus.certification_status_id
LEFT JOIN ( 
	SELECT muu.meaningful_use_users,
		muu.certified_product_id,
		muu.meaningful_use_users_date
	FROM openchpl.meaningful_use_user muu
	 INNER JOIN ( 
	   SELECT meaningful_use_user.certified_product_id,
			max(meaningful_use_user.meaningful_use_users_date) as meaningful_use_users_date
	   FROM openchpl.meaningful_use_user
	   WHERE deleted <> true
	   GROUP BY meaningful_use_user.certified_product_id) muuInner 
	 ON muu.certified_product_id = muuInner.certified_product_id 
	 AND muu.meaningful_use_users_date = muuInner.meaningful_use_users_date
	WHERE muu.deleted <> true) muuResult
ON muuResult.certified_product_id = cp.certified_product_id
LEFT JOIN
  (SELECT string_agg(DISTINCT child_chpl_product_number||'☹'||children.child_listing_id::text, '☹'::text) AS child,
          parent_listing_id FROM
     (SELECT certified_product.certified_product_id, listing_to_listing_map.parent_listing_id, listing_to_listing_map.child_listing_id,
        (SELECT chpl_product_number
         FROM openchpl.get_chpl_product_number(child_listing_id)) AS child_chpl_product_number
      FROM openchpl.listing_to_listing_map
      JOIN openchpl.certified_product ON listing_to_listing_map.parent_listing_id = certified_product.certified_product_id) children
   GROUP BY parent_listing_id) child ON cp.certified_product_id = child.parent_listing_id
LEFT JOIN
  (SELECT string_agg(DISTINCT parent_chpl_product_number||'☹'||parents.parent_listing_id::text, '☹'::text) AS parent,
          parents.child_listing_id FROM
     (SELECT certified_product.certified_product_id, listing_to_listing_map.child_listing_id, listing_to_listing_map.parent_listing_id,
        (SELECT chpl_product_number
         FROM openchpl.get_chpl_product_number(parent_listing_id)) AS parent_chpl_product_number, certified_product.chpl_product_number
      FROM openchpl.listing_to_listing_map
      JOIN openchpl.certified_product ON listing_to_listing_map.child_listing_id = certified_product.certified_product_id) parents
   GROUP BY child_listing_id) parent ON cp.certified_product_id = parent.child_listing_id
LEFT JOIN
  (SELECT certification_edition.certification_edition_id,
          certification_edition.year
   FROM openchpl.certification_edition) edition ON cp.certification_edition_id = edition.certification_edition_id
LEFT JOIN
  (SELECT certification_body.certification_body_id,
          certification_body.name AS certification_body_name,
          certification_body.acb_code AS certification_body_code,
          certification_body.deleted AS acb_is_deleted
   FROM openchpl.certification_body) acb ON cp.certification_body_id = acb.certification_body_id
LEFT JOIN
  (SELECT practice_type.practice_type_id,
          practice_type.name AS practice_type_name
   FROM openchpl.practice_type) prac ON cp.practice_type_id = prac.practice_type_id
LEFT JOIN
  (SELECT product_version.product_version_id,
          product_version.version AS product_version,
          product_version.product_id
   FROM openchpl.product_version) VERSION ON cp.product_version_id = version.product_version_id
LEFT JOIN
  (SELECT product_1.product_id,
          product_1.vendor_id,
          product_1.name AS product_name
   FROM openchpl.product product_1) product ON version.product_id = product.product_id
LEFT JOIN
  (SELECT vendor_1.vendor_id,
          vendor_1.name AS vendor_name,
          vendor_1.vendor_code,
          vendor_1.vendor_status_id
   FROM openchpl.vendor vendor_1) vendor ON product.vendor_id = vendor.vendor_id
     LEFT JOIN ( SELECT vshistory.vendor_status_id,
            vshistory.vendor_id,
            vshistory.status_date AS last_vendor_status_change
           FROM openchpl.vendor_status_history vshistory
             JOIN ( SELECT vendor_status_history.vendor_id,
                    max(vendor_status_history.status_date) AS status_date
                   FROM openchpl.vendor_status_history
                  WHERE vendor_status_history.deleted = false
                  GROUP BY vendor_status_history.vendor_id) vsinner ON vshistory.vendor_id = vsinner.vendor_id AND vshistory.status_date = vsinner.status_date) vendor_status_history ON vendor_status_history.vendor_id = vendor.vendor_id
     LEFT JOIN ( SELECT vendor_status.vendor_status_id,
            vendor_status.name AS vendor_status_name
           FROM openchpl.vendor_status) vendor_status ON vendor_status_history.vendor_status_id = vendor_status.vendor_status_id
LEFT JOIN
  (SELECT string_agg(vendor_1.name, '|') AS history_vendor_name,
          product_owner_history_map.product_id AS history_product_id
   FROM openchpl.vendor vendor_1
   JOIN openchpl.product_owner_history_map ON vendor_1.vendor_id = product_owner_history_map.vendor_id
   WHERE product_owner_history_map.deleted = FALSE
   GROUP BY history_product_id) owners ON owners.history_product_id = product.product_id
LEFT JOIN
  (SELECT min(certification_status_event.event_date) AS certification_date,
          certification_status_event.certified_product_id
   FROM openchpl.certification_status_event
   WHERE certification_status_event.certification_status_id = 1
     AND certification_status_event.deleted = FALSE
   GROUP BY certification_status_event.certified_product_id) certstatusevent ON cp.certified_product_id = certstatusevent.certified_product_id
LEFT JOIN
  (SELECT max(certification_status_event.event_date) AS decertification_date,
          certification_status_event.certified_product_id
   FROM openchpl.certification_status_event
   WHERE certification_status_event.certification_status_id = ANY (ARRAY[3::bigint,
                                                                         4::bigint,
                                                                         8::bigint])
     AND certification_status_event.deleted = FALSE
   GROUP BY certification_status_event.certified_product_id) decert ON cp.certified_product_id = decert.certified_product_id
LEFT JOIN
  (SELECT surveillance.certified_product_id,
          count(*) AS count_surveillance_activities
   FROM openchpl.surveillance
   WHERE surveillance.deleted <> TRUE
   GROUP BY surveillance.certified_product_id) survs ON cp.certified_product_id = survs.certified_product_id
LEFT JOIN
  (SELECT surv.certified_product_id,
          count(*) AS count_open_nonconformities
   FROM openchpl.surveillance surv
   JOIN openchpl.surveillance_requirement surv_req ON surv.id = surv_req.surveillance_id
   AND surv_req.deleted <> TRUE
   JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id
   AND surv_nc.deleted <> TRUE
   JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
   WHERE surv.deleted <> TRUE
     AND nc_status.name::text = 'Open'::text
   GROUP BY surv.certified_product_id) nc_open ON cp.certified_product_id = nc_open.certified_product_id
LEFT JOIN
  (SELECT surv.certified_product_id,
          count(*) AS count_closed_nonconformities
   FROM openchpl.surveillance surv
   JOIN openchpl.surveillance_requirement surv_req ON surv.id = surv_req.surveillance_id
   AND surv_req.deleted <> TRUE
   JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id
   AND surv_nc.deleted <> TRUE
   JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
   WHERE surv.deleted <> TRUE
     AND nc_status.name::text = 'Closed'::text
   GROUP BY surv.certified_product_id) nc_closed ON cp.certified_product_id = nc_closed.certified_product_id
LEFT JOIN
  (SELECT certification_result.certified_product_id,
          string_agg(DISTINCT certification_criterion.number, '☺') AS cert_number
   FROM openchpl.certification_criterion
   JOIN openchpl.certification_result ON certification_criterion.certification_criterion_id = certification_result.certification_criterion_id
   WHERE certification_result.success = TRUE
     AND certification_result.deleted = FALSE
     AND certification_criterion.deleted = FALSE
   GROUP BY certified_product_id) AS certs ON certs.certified_product_id = cp.certified_product_id
LEFT JOIN
  (SELECT string_agg(DISTINCT certification_criterion.number::text||'☹'||certification_result.api_documentation, '☺') AS cert_number, --certification_result.api_documentation,
 certification_result.certified_product_id
   FROM openchpl.certification_criterion
   JOIN openchpl.certification_result ON certification_criterion.certification_criterion_id = certification_result.certification_criterion_id
   WHERE certification_result.success = TRUE
     AND certification_result.api_documentation IS NOT NULL
     AND certification_result.deleted = FALSE
     AND certification_criterion.deleted = FALSE
   GROUP BY certified_product_id) certs_with_api_documentation ON certs_with_api_documentation.certified_product_id = cp.certified_product_id
LEFT JOIN
  (SELECT string_agg(DISTINCT COALESCE(cqm_criterion.cms_id, ('NQF-'::text || cqm_criterion.nqf_number::text)::CHARACTER varying), '☺') AS cqm_number,
          cqm_result.certified_product_id
   FROM openchpl.cqm_criterion
   JOIN openchpl.cqm_result ON cqm_criterion.cqm_criterion_id = cqm_result.cqm_criterion_id
   WHERE cqm_result.success = TRUE
     AND cqm_result.deleted = FALSE
     AND cqm_criterion.deleted = FALSE
   GROUP BY certified_product_id) cqms ON cqms.certified_product_id = cp.certified_product_id
WHERE cp.deleted <> TRUE;

CREATE OR REPLACE VIEW openchpl.certified_product_search_result
    AS
SELECT all_listings_simple.*,
    certs_for_listing.cert_number,
    COALESCE(cqms_for_listing.cms_id, 'NQF-'||cqms_for_listing.nqf_number) as "cqm_number"
FROM
    (SELECT
	cp.certified_product_id,
        (select chpl_product_number from openchpl.get_chpl_product_number(cp.certified_product_id)),
	lastCertStatusEvent.certification_status_name,
	muuResult.meaningful_use_users,
	cp.transparency_attestation_url,
	edition.year,
	acb.certification_body_name,
	cp.acb_certification_id,
	prac.practice_type_name,
	version.product_version,
	product.product_name,
	vendor.vendor_name,
	history_vendor_name as "prev_vendor",
	certStatusEvent.certification_date,
	decert.decertification_date,
	COALESCE(count_surveillance_activities, 0) as "count_surveillance_activities",
	COALESCE(count_open_nonconformities, 0) as "count_open_nonconformities",
	COALESCE(count_closed_nonconformities, 0) as "count_closed_nonconformities"
    FROM openchpl.certified_product cp
    --certification date
	INNER JOIN (SELECT MIN(event_date) as "certification_date", certified_product_id from openchpl.certification_status_event where certification_status_id = 1 group by (certified_product_id)) certStatusEvent on cp.certified_product_id = certStatusEvent.certified_product_id
    --year
	INNER JOIN (SELECT certification_edition_id, year FROM openchpl.certification_edition) edition on cp.certification_edition_id = edition.certification_edition_id
    --ACB
	INNER JOIN (SELECT certification_body_id, name as "certification_body_name", acb_code as "certification_body_code", deleted as "acb_is_deleted" FROM openchpl.certification_body) acb on cp.certification_body_id = acb.certification_body_id
    -- version
	INNER JOIN (SELECT product_version_id, version as "product_version", product_id from openchpl.product_version) version on cp.product_version_id = version.product_version_id
    --product
	INNER JOIN (SELECT product_id, vendor_id, name as "product_name" FROM openchpl.product) product ON version.product_id = product.product_id
    --developer
	INNER JOIN (SELECT vendor_id, name as "vendor_name", vendor_code FROM openchpl.vendor) vendor on product.vendor_id = vendor.vendor_id
    --certification status
	INNER JOIN (
	SELECT certStatus.certification_status as "certification_status_name", cse.certified_product_id as "certified_product_id"
	FROM openchpl.certification_status_event cse
	    INNER JOIN openchpl.certification_status certStatus ON cse.certification_status_id = certStatus.certification_status_id
	    INNER JOIN
	    (SELECT certified_product_id, extract(epoch from MAX(event_date)) event_date
	    FROM openchpl.certification_status_event
	    GROUP BY certified_product_id) maxCse
	    ON cse.certified_product_id = maxCse.certified_product_id
	--conversion to epoch/long comparison significantly faster than comparing the timestamp fields as-is
	    AND extract(epoch from cse.event_date) = maxCse.event_date
	    ) lastCertStatusEvent
	ON lastCertStatusEvent.certified_product_id = cp.certified_product_id
	-- meaningful use users count
	LEFT JOIN (
		SELECT muu.meaningful_use_users as "meaningful_use_users", muu.certified_product_id as "certified_product_id"
		FROM openchpl.meaningful_use_user muu
			INNER JOIN
			(SELECT certified_product_id, extract(epoch from MAX(meaningful_use_users_date)) meaningful_use_users_date
			FROM openchpl.meaningful_use_user
			GROUP BY certified_product_id) maxMuu
			ON muu.certified_product_id = maxMuu.certified_product_id
		--conversion to epoch/long comparison significantly faster than comparing the timestamp fields as-is
			AND extract(epoch from muu.meaningful_use_users_date) = maxMuu.meaningful_use_users_date
			) muuResult
	ON muuResult.certified_product_id = cp.certified_product_id
    -- Practice type (2014 only)
	LEFT JOIN (SELECT practice_type_id, name as "practice_type_name" FROM openchpl.practice_type) prac on cp.practice_type_id = prac.practice_type_id
    --decertification date
	LEFT JOIN (SELECT MAX(event_date) as "decertification_date", certified_product_id from openchpl.certification_status_event where certification_status_id IN (3, 4, 8) group by (certified_product_id)) decert on cp.certified_product_id = decert.certified_product_id
    -- developer history
	LEFT JOIN (SELECT name as "history_vendor_name", product_owner_history_map.product_id as "history_product_id"
	FROM openchpl.vendor
	    JOIN openchpl.product_owner_history_map ON vendor.vendor_id = product_owner_history_map.vendor_id
	WHERE product_owner_history_map.deleted = false) prev_vendor_owners
	ON prev_vendor_owners.history_product_id = product.product_id
    -- surveillance
	LEFT JOIN
        (SELECT certified_product_id, count(*) as "count_surveillance_activities"
        FROM openchpl.surveillance
        WHERE openchpl.surveillance.deleted <> true
        GROUP BY certified_product_id) survs
        ON cp.certified_product_id = survs.certified_product_id
        LEFT JOIN
        (SELECT certified_product_id, count(*) as "count_open_nonconformities"
        FROM openchpl.surveillance surv
            JOIN openchpl.surveillance_requirement surv_req ON surv.id = surv_req.surveillance_id AND surv_req.deleted <> true
            JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id AND surv_nc.deleted <> true
            JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
        WHERE surv.deleted <> true AND nc_status.name = 'Open'
        GROUP BY certified_product_id) nc_open
        ON cp.certified_product_id = nc_open.certified_product_id
        LEFT JOIN
        (SELECT certified_product_id, count(*) as "count_closed_nonconformities"
        FROM openchpl.surveillance surv
            JOIN openchpl.surveillance_requirement surv_req ON surv.id = surv_req.surveillance_id AND surv_req.deleted <> true
            JOIN openchpl.surveillance_nonconformity surv_nc ON surv_req.id = surv_nc.surveillance_requirement_id AND surv_nc.deleted <> true
            JOIN openchpl.nonconformity_status nc_status ON surv_nc.nonconformity_status_id = nc_status.id
        WHERE surv.deleted <> true AND nc_status.name = 'Closed'
        GROUP BY certified_product_id) nc_closed
        ON cp.certified_product_id = nc_closed.certified_product_id
	) all_listings_simple
--certs (adds so many rows to the result set it's faster to join it out here)
    LEFT OUTER JOIN
    (
    SELECT certification_criterion.number as "cert_number", certification_result.certified_product_id
    FROM openchpl.certification_result, openchpl.certification_criterion
    WHERE certification_criterion.certification_criterion_id = certification_result.certification_criterion_id
	AND certification_criterion.deleted = false
	AND certification_result.success = true
	AND certification_result.deleted = false
	) certs_for_listing
    ON certs_for_listing.certified_product_id = all_listings_simple.certified_product_id
--cqms (adds so many rows to the result set it's faster to join it out here)
    LEFT OUTER JOIN
    (
    SELECT cms_id, nqf_number, certified_product_id
    FROM openchpl.cqm_result, openchpl.cqm_criterion
    WHERE cqm_criterion.cqm_criterion_id = cqm_result.cqm_criterion_id
	AND cqm_criterion.deleted = false
	AND cqm_result.success = true
	AND cqm_result.deleted = false
	) cqms_for_listing
    ON cqms_for_listing.certified_product_id = all_listings_simple.certified_product_id;

--dropped and re-created because it depends on certified_product_details
CREATE OR REPLACE VIEW openchpl.developers_with_attestations AS
SELECT
    v.vendor_id as vendor_id,
    v.name as vendor_name,
    s.name as status_name,
    sum(case when certification_status.certification_status = 'Active' then 1 else 0 end) as countActiveListings,
    sum(case when certification_status.certification_status = 'Retired' then 1 else 0 end) as countRetiredListings,
    sum(case when certification_status.certification_status = 'Pending' then 1 else 0 end) as countPendingListings,
    sum(case when certification_status.certification_status = 'Withdrawn by Developer' then 1 else 0 end) as countWithdrawnByDeveloperListings,
    sum(case when certification_status.certification_status = 'Withdrawn by ONC-ACB' then 1 else 0 end) as countWithdrawnByOncAcbListings,
    sum(case when certification_status.certification_status = 'Suspended by ONC-ACB' then 1 else 0 end) as countSuspendedByOncAcbListings,
    sum(case when certification_status.certification_status = 'Suspended by ONC' then 1 else 0 end) as countSuspendedByOncListings,
    sum(case when certification_status.certification_status = 'Terminated by ONC' then 1 else 0 end) as countTerminatedByOncListings,
    sum(case when certification_status.certification_status = 'Withdrawn by Developer Under Surveillance/Review' then 1 else 0 end) as countWithdrawnByDeveloperUnderSurveillanceListings,
--only include urls that are not empty strings and come from
-- a listing with one of the active... or suspended... statuses
    string_agg(DISTINCT
	case when
	listings.transparency_attestation_url::text != ''
	and
	(certification_status.certification_status = 'Active'
	    or
	    certification_status.certification_status = 'Suspended by ONC'
	    or
	    certification_status.certification_status = 'Suspended by ONC-ACB')
	then listings.transparency_attestation_url::text else null end, '☺')
    as "transparency_attestation_urls",
--using coalesce here because the attestation can be null and concatting null with anything just gives null
--so null/empty attestations are left out unless we replace null with empty string
    string_agg(DISTINCT acb.name::text||':'||COALESCE(attestations.transparency_attestation::text, ''), '☺') as "attestations"
FROM openchpl.vendor v
    LEFT OUTER JOIN openchpl.vendor_status s ON v.vendor_status_id = s.vendor_status_id
    LEFT OUTER JOIN openchpl.certified_product_details listings ON listings.vendor_id = v.vendor_id AND listings.deleted != true
    LEFT OUTER JOIN openchpl.certification_status ON listings.certification_status_id = certification_status.certification_status_id
    LEFT OUTER JOIN openchpl.acb_vendor_map attestations ON attestations.vendor_id = v.vendor_id AND attestations.deleted != true
    LEFT OUTER JOIN openchpl.certification_body acb ON attestations.certification_body_id = acb.certification_body_id AND acb.deleted != true
WHERE v.deleted != true
GROUP BY v.vendor_id, v.name, s.name;

--re-run grants
\i dev/openchpl_grant-all.sql

-- TODO Next Release
-- Drop muu_accurate_as_of_date
-- Drop certified_product.meaningful_use_users