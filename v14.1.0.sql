-- insert newly mapped values into the macra_criteria_map table based on what the old value is

-- 170.315 (a)(1)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Computerized Provider Order Entry - Medications: Eligible Provider', description = 'Required Test 10: Stage 2 Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(1)') AND value = 'EP';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(1)'), 'EP Stage 3', 'Computerized Provider Order Entry - Medications: Eligible Provider', 'Required Test 10: Stage 3 Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Computerized Provider Order Entry - Medications: Eligible Hospital/Critical Access Hospital', description = 'Required Test 10: Stage 2 Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(1)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(1)'), 'EH/CAH Stage 3', 'Computerized Provider Order Entry - Medications: Eligible Hospital/Critical Access Hospital', 'Required Test 10: Stage 3 Objective 4 Measure 1', -1);

-- 170.315 (a)(2)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Computerized Provider Order - Laboratory: Eligible Provider', description = 'Required Test 11: Stage 2 Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(2)') AND value = 'EP';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(2)'), 'EP Stage 3', 'Computerized Provider Order Entry - Laboratory: Eligible Provider', 'Required Test 11: Stage 3 Objective 4 Measure 2', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Computerized Provider Order Entry - Laboratory: Eligible Hospital/Critical Access Hospital', description = 'Required Test 11: Stage 2 Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(2)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(2)'), 'EH/CAH Stage 3', 'Computerized Provider Order Entry - Laboratory: Eligible Hospital/Critical Access Hospital', 'Required Test 11: Stage 3 Objective 4 Measure 2', -1);

-- 170.315 (a)(3)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Provider', description = 'Required Test 12: Stage 2 Objective 3 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(3)') AND value = 'EP';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(3)'), 'EP Stage 3', 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Provider', 'Required Test 12: Stage 3 Objective 4 Measure 3', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Hospital/Critical Access Hospital', description = 'Required Test 12: Stage 2 Objective 3 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(3)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(3)'), 'EH/CAH Stage 3', 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Hospital/Critical Access Hospital', 'Required Test 12: Stage 3 Objective 4 Measure 3', -1);

-- 170.315 (a)(10)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Electronic Prescibing: Eligible Provider', description = 'Required Test 1: Stage 2 Objective 4'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)') AND value = 'EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)'), 'EP Stage 3', 'Electronic Prescibing: Eligible Provider', 'Required Test 1: Stage 3 Objective 2', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI Transition',  name = 'Electronic Prescribing: Eligible Clinician', description = 'Required Test 1: ACI Transition Objective 2 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)') AND value = 'EC Individual (TIN/NPI)';

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Electronic Prescribing: Eligible Clinician', description = 'Required Test 1: ACI Objective 2 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)') AND value = 'EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Electronic Prescribing: Eligible Hospital/Critical Access Hospital', description = 'Required Test 1: Stage 2 Objective 4'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(10)'), 'EH/CAH Stage 3', 'Electronic Prescribing: Eligible Hospital/Critical Access Hospital', 'Required Test 1: Stage 3 Objective 2', -1);

-- 170.315 (a)(13)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Patient-Specific Education: Eligible Provider', description = 'Required Test 3: Stage 2 Objective 6'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)') AND value = 'EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)'), 'EP Stage 3', 'Patient-Specific Education: Eligible Provider', 'Required Test 3: Stage 3 Objective 5 Measure 2', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI Transition',  name = 'Patient-Specific Education: Eligible Clinician', description = 'Required Test 3: ACI Transition Objective 4 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)') AND value = 'EC Individual (TIN/NPI)';

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Patient-Specific Education: Eligible Clinician', description = 'Required Test 3: ACI Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)') AND value = 'EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Patient-Specific Education: Eligible Hospital/Critical Access Hospital', description ='Required Test 3: Stage 2 Objective 6'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (a)(13)'), 'EH/CAH Stage 3', 'Patient-Specific Education: Eligible Hospital/Critical Access Hospital', 'Required Test 3: Stage 3 Objective 5 Measure 2', -1);


-- 170.315 (b)(1)
UPDATE openchpl.macra_criteria_map 
SET value = 'RT7 EP Stage 2',  name = 'Patient Care Record Exchange: Eligible Provider', description = 'Required Test 7: Stage 2 Objective 5'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT7 EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)'), 'RT7 EP Stage 3', 'Patient Care Record Exchange: Eligible Provider', 'Required Test 7: Stage 3 Objective 7 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT8 EP Stage 3',  name = 'Request/Accept Patient Care Record: Eligible Provider', description = 'Required Test 8: Stage 3 Objective 7 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT8 EP Individual';

UPDATE openchpl.macra_criteria_map 
SET value = 'RT7 EC ACI Transition',  name = 'Patient Care Record Exchange: Eligible Clinician', description = 'Required Test 7: ACI Transition Objective 6 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT7 EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)'), 'RT7 EC ACI', 'Patient Care Record Exchange: Eligible Clinician', 'Required Test 7: ACI Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT8 EC ACI',  name = 'Request/Accept Patient Care Record: Eligible Clinician', description = 'Required Test 8: ACI Objective 5 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT8 EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'RT7 EH/CAH Stage 2',  name = 'Patient Care Record Exchange: Eligible Hospital/Critical Access Hospital', description = 'Required Test 7: Stage 2 Objective 5'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT7 EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)'), 'RT7 EH/CAH Stage 3', 'Patient Care Record Exchange: Eligible Hospital/Critical Access Hospital', 'Required Test 7: Stage 3 Objective 7 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT8 EH/CAH Stage 3',  name = 'Request/Accept Patient Care Record: Eligible Hospital/Critical Access Hospital', description = 'Required Test 8: Stage 3 Objective 7 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(1)') AND value = 'RT8 EH/CAH';

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT7 EC Group' AND name = 'Patient Care Record Exchange: Eligible Clinician Group' AND description = 'Required Test 7: Stage 2 Objective 5 and Stage 3 Objective 7 Measure 1, ACI Transition Objective 6 Measure 1 and ACI Objective 5 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT7 EC Group' AND name = 'Patient Care Record Exchange: Eligible Clinician Group' AND description = 'Required Test 7: Stage 2 Objective 5 and Stage 3 Objective 7 Measure 1, ACI Transition Objective 6 Measure 1 and ACI Objective 5 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT7 EC Group' AND name = 'Patient Care Record Exchange: Eligible Clinician Group' AND description = 'Required Test 7: Stage 2 Objective 5 and Stage 3 Objective 7 Measure 1, ACI Transition Objective 6 Measure 1 and ACI Objective 5 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT7 EC Group' AND name = 'Patient Care Record Exchange: Eligible Clinician Group' AND description = 'Required Test 7: Stage 2 Objective 5 and Stage 3 Objective 7 Measure 1, ACI Transition Objective 6 Measure 1 and ACI Objective 5 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where value = 'RT7 EC Group' AND name = 'Patient Care Record Exchange: Eligible Clinician Group' AND description = 'Required Test 7: Stage 2 Objective 5 and Stage 3 Objective 7 Measure 1, ACI Transition Objective 6 Measure 1 and ACI Objective 5 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT8 EC Individual (TIN/NPI)' AND name = 'Request/Accept Patient Care Record: Eligible Clinician Individual (TIN/NPI)' AND description = 'Required Test 8: Stage 3 Objective 7 Measure 2, ACI Objective 5 Measure 2');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT8 EC Individual (TIN/NPI)' AND name = 'Request/Accept Patient Care Record: Eligible Clinician Individual (TIN/NPI)' AND description = 'Required Test 8: Stage 3 Objective 7 Measure 2, ACI Objective 5 Measure 2');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT8 EC Individual (TIN/NPI)' AND name = 'Request/Accept Patient Care Record: Eligible Clinician Individual (TIN/NPI)' AND description = 'Required Test 8: Stage 3 Objective 7 Measure 2, ACI Objective 5 Measure 2');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'RT8 EC Individual (TIN/NPI)' AND name = 'Request/Accept Patient Care Record: Eligible Clinician Individual (TIN/NPI)' AND description = 'Required Test 8: Stage 3 Objective 7 Measure 2, ACI Objective 5 Measure 2');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where value = 'RT8 EC Individual (TIN/NPI)' AND name = 'Request/Accept Patient Care Record: Eligible Clinician Individual (TIN/NPI)' AND description = 'Required Test 8: Stage 3 Objective 7 Measure 2, ACI Objective 5 Measure 2');

-- 170.315 (b)(2)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Medication/Clinical Information Reconciliation: Eligible Provider', description = 'Required Test 9: Stage 2 Objective 7'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)') AND value = 'EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)'), 'EP Stage 3', 'Medication/Clinical Information Reconciliation: Eligible Provider', 'Required Test 9: Stage 3 Objective 7 Measure 3', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI Transition',  name = 'Medication/Clinical Information Reconciliation: Eligible Clinician', description = 'Required Test 9: ACI Transition Objective 7 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)') AND value = 'EC Individual (TIN/NPI)';

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Medication/Clinical Information Reconciliation: Eligible Clinician', description = 'Required Test 9: ACI Objective 5 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)') AND value = 'EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Medication/Clinical Information Reconciliation: Eligible Hospital/Critical Access Hospital', description ='Required Test 9: Stage 2 Objective 7'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(2)'), 'EH/CAH Stage 3', 'Medication/Clinical Information Reconciliation: Eligible Hospital/Critical Access Hospital', 'Required Test 9: Stage 3 Objective 7 Measure 3', -1);

-- 170.315 (b)(3)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Electronic Prescribing: Eligible Provider', description = 'Required Test 1: Stage 2 Objective 4'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)') AND value = 'EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)'), 'EP Stage 3', 'Electronic Prescribing: Eligible Provider', 'Required Test 1: Stage 3 Objective 2', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI Transition',  name = 'Electronic Prescribing: Eligible Clinician', description = 'Required Test 1: ACI Transition Objective 2 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)') AND value = 'EC Individual (TIN/NPI)';

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Electronic Prescribing: Eligible Clinician', description = 'Required Test 1: ACI Objective 2 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)') AND value = 'EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Electronic Prescribing: Eligible Hospital/Critical Access Hospital', description ='Required Test 1: Stage 2 Objective 4'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (b)(3)'), 'EH/CAH Stage 3', 'Electronic Prescribing: Eligible Hospital/Critical Access Hospital', 'Required Test 1: Stage 3 Objective 2', -1);

-- 170.315 (e)(1)
UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2a EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2b EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2b EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2b EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4a EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4b EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4b EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4b EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4b EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician', description = 'Required Test 4: ACI Transition Objective 3 Measure 2 '
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4b EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4b EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician ', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician Group', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2a EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2b EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2b EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2b EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician', description ='Required Test 4: ACI Transition Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4a EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EH/CAH Stage 2',  name = 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2a EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2b EH/CAH Stage 2',  name = 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT2b EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT2b EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4a EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4b EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)') AND value = 'RT4b EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(1)'), 'RT4b EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2b EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2b EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2b EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2b EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT2b EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4b EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4b EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4b EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4b EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 40 AND value = 'RT4b EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

-- 170.315 (e)(2)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 2',  name = 'Secure Electronic Messaging: Eligible Provider', description ='Required Test 5: Stage 2 Objective 9'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)') AND value = 'EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)'), 'EP Stage 3', 'Secure Electronic Messaging: Eligible Provider ', 'Required Test 5: Stage 3 Objective 6 Measure 2', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI Transition',  name = 'Secure Electronic Messaging: Eligible Clinician', description ='Required Test 5: ACI Transition Objective 5 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)') AND value = 'EC Individual (TIN/NPI)';
UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Secure Electronic Messaging: Eligible Clinician', description ='Required Test 5: ACI Objective 4 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)') AND value = 'EC Group';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 2',  name = 'Secure Electronic Messaging: Eligible Hospital/Critical Access Hospital', description ='Required Test 5: Stage 2 Objective 9'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)') AND value = 'EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(2)'), 'EH/CAH Stage 3', 'Secure Electronic Messaging: Eligible Hospital/Critical Access Hospital', 'Required Test 5: Stage 3 Objective 6 Measure 2', -1);

-- 170.315 (e)(3)
UPDATE openchpl.macra_criteria_map 
SET value = 'EP Stage 3',  name = 'Eligible Provider Individual: Patient-Generated Health Data', description ='Required Test 6: Stage 3 Objective 6 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(3)') AND value = 'EP Individual';

UPDATE openchpl.macra_criteria_map 
SET value = 'EH/CAH Stage 3',  name = 'Patient-Generated Health Data: Eligible Hospital/Critical Access Hospital', description ='Required Test 6: Stage 3 Objective 6 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(3)') AND value = 'EH/CAH';

UPDATE openchpl.macra_criteria_map 
SET value = 'EC ACI',  name = 'Patient-Generated Health Data: Eligible Clinician Individual (TIN/NPI)', description ='Required Test 6: ACI Objective 4 Measure 3'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(3)') AND value = 'EC Individual (TIN/NPI)';

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'EC Group' AND name = 'Patient-Generated Health Data: Eligible Clinician Group' AND description = 'Required Test 6: Stage 3 Objective 6 Measure 3, ACI Objective 4 Measure 3');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'EC Group' AND name = 'Patient-Generated Health Data: Eligible Clinician Group' AND description = 'Required Test 6: Stage 3 Objective 6 Measure 3, ACI Objective 4 Measure 3');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'EC Group' AND name = 'Patient-Generated Health Data: Eligible Clinician Group' AND description = 'Required Test 6: Stage 3 Objective 6 Measure 3, ACI Objective 4 Measure 3');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where value = 'EC Group' AND name = 'Patient-Generated Health Data: Eligible Clinician Group' AND description = 'Required Test 6: Stage 3 Objective 6 Measure 3, ACI Objective 4 Measure 3');

UPDATE openchpl.macra_criteria_map 
SET deleted = true
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (e)(3)') AND value = 'EC Group';

-- 170.315 (g)(8)
UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2a EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2c EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2c EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4a EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4c EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4c EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2a EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2c EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2c EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician Group', description ='Required Test 4: ACI Transition Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4a EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician Individual (TIN/NPI)', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician Group', description ='Required Test 4: ACI Transition Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4c EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4c EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician Individual (TIN/NPI)', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EH/CAH Stage 2',  name = 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2a EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EH/CAH Stage 2',  name = 'Patient Electronic Access:  Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT2c EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT2c EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4a EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)') AND value = 'RT4c EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(8)'), 'RT4c EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND  value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 57 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

-- 170.315 (g)(9)

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2a EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EP Stage 2',  name = 'Patient Electronic Access: Eligible Provider', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2c EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2c EP Stage 3', 'Patient Electronic Access: Eligible Provider', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4a EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4a EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EP Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Provider', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4c EP Individual';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4c EP Stage 3', 'View, Download, or Transmit (VDT): Eligible Provider ', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2a EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EC ACI Transition',  name = 'Patient Electronic Access: Eligible Clinician', description ='Required Test 2: ACI Transition Objective 3 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2c EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2c EC ACI', 'Patient Electronic Access: Eligible Clinician', 'Required Test 2: ACI Objective 3 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician', description ='Required Test 4: ACI Transition Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4a EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4a EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EC ACI Transition',  name = 'View, Download, or Transmit (VDT): Eligible Clinician', description ='Required Test 4: ACI Transition Objective 3 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4c EC Individual (TIN/NPI)';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4c EC ACI', 'View, Download, or Transmit (VDT): Eligible Clinician', 'Required Test 4: ACI Objective 4 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2a EH/CAH Stage 2',  name = 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2a EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT2c EH/CAH Stage 2',  name = 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', description ='Required Test 2: Stage 2 Objective 8 Measure 1'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT2c EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT2c EH/CAH Stage 3', 'Patient Electronic Access: Eligible Hospital/Critical Access Hospital', 'Required Test 2: Stage 3 Objective 5 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4a EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4a EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4a EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.macra_criteria_map 
SET value = 'RT4c EH/CAH Stage 2',  name = 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', description ='Required Test 4: Stage 2 Objective 8 Measure 2'
WHERE criteria_id = (SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)') AND value = 'RT4c EH/CAH';
INSERT INTO openchpl.macra_criteria_map (criteria_id, value, name, description, last_modified_user) values
((SELECT certification_criterion_id from openchpl.certification_criterion where number = '170.315 (g)(9)'), 'RT4c EH/CAH Stage 3', 'View, Download, or Transmit (VDT): Eligible Hospital/Critical Access Hospital', 'Required Test 4: Stage 3 Objective 6 Measure 1', -1);

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2a EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT2c EC Group' AND name = 'Patient Electronic Access: Eligible Clinician Group' AND description = 'Required Test 2: Stage 2 Objective 8 Measure 1 and Stage 3 Objective 5 Measure 1, ACI Transition Objective 3 Measure 1 and ACI Objective 3 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4a EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g1_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.pending_certification_result_g2_macra 
SET deleted = true
WHERE macra_id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

UPDATE openchpl.macra_criteria_map
SET deleted = true
WHERE id = (SELECT id from openchpl.macra_criteria_map where criteria_id = 58 AND value = 'RT4c EC Group' AND name = 'View, Download, or Transmit (VDT): Eligible Clinician Group' AND description = 'Required Test 4: Stage 2 Objective 8 Measure 2 and Stage 3 Objective 6 Measure 1, ACI Transition Objective 3 Measure 2 and ACI Objective 4 Measure 1');

-- In order for this script to be able to be run twice we need to add a constraint on
-- certification_result_g1_macra, certification_result_g2_macra, pending_certification_result_g1_macra, pending_certification_result_g2_macra
-- so that macra_id and certification_result_id are unique for every row (i.e. no certification_result_id can have more than one macra_id)
ALTER TABLE openchpl.certification_result_g1_macra ADD CONSTRAINT macra_id_certification_result_id_unique UNIQUE (macra_id, certification_result_id);
ALTER TABLE openchpl.certification_result_g2_macra ADD CONSTRAINT macra_id_certification_result_id_unique UNIQUE (macra_id, certification_result_id);
ALTER TABLE openchpl.pending_certification_result_g1_macra ADD CONSTRAINT macra_id_certification_result_id_unique UNIQUE (macra_id, pending_certification_result_id);
ALTER TABLE openchpl.pending_certification_result_g2_macra ADD CONSTRAINT macra_id_certification_result_id_unique UNIQUE (macra_id, pending_certification_result_id);

-- for every new pair add the second mapped value that corresponds to the first
-- i.e. if EP maps to EP Stage 2 and EP Stage 3, if EP stage 2 is in any related table (i.e certification_result_g1_macra) then add EP Stage 3 to that table also
create or replace function openchpl.add_macra_measures() returns void as $$
	declare g1_macra record;
	declare g2_macra record;
    begin
    	FOR g1_macra IN (SELECT * FROM openchpl.certification_result_g1_macra) LOOP
    		-- if EP Stage 2 is in the certification result g1 macra table, then add EP Stage 3 to that table
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(1 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(2 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(3 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(10 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(13 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(17 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(18 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(41 AS BIGINT), 'EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;

    		-- if EH/CAH Stage 2 is in the certification result g1 macra table, then add EH/CAH Stage 3 to that table
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(1 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(2 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(3 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(10 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(13 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(17 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(18 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(41 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;

    		-- for 170.315 (b)(1)
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;

    		-- 170.315 (e)(1)
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;

    		-- 170.315(g)(8) and 170.315(g)(9)
    		FOR i in 57..58 LOOP
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EP Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EP Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EC ACI Transition'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EC ACI' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EH/CAH Stage 2'::varchar) THEN
    			INSERT INTO openchpl.certification_result_g1_macra (macra_id, certification_result_id, last_modified_user) values
    			((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EH/CAH Stage 3' LIMIT 1), g1_macra.certification_result_id, -1);
    		END IF;
    		END LOOP;

    	END LOOP;

    	FOR g2_macra IN (SELECT * FROM openchpl.certification_result_g2_macra) LOOP
            -- if EP Stage 2 is in the certification result g2 macra table, then add EP Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(1 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(2 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(3 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(10 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(17 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(18 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(41 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;

            -- if EH/CAH Stage 2 is in the certification result g2 macra table, then add EH/CAH Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(1 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(2 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(3 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(10 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'RT7 EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(17 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(18 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(41 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;

            -- for 170.315 (b)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;

            -- 170.315 (e)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;

            -- 170.315(g)(8) and 170.315(g)(9)
            FOR i in 57..58 LOOP
                IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EP Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EC ACI' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.certification_result_g2_macra (macra_id, certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EH/CAH Stage 3' LIMIT 1), g2_macra.certification_result_id, -1);
            END IF;
            END LOOP;
    	END LOOP;

    	-- update g1 pending certification results
    	FOR g1_macra IN (SELECT * FROM openchpl.pending_certification_result_g1_macra) LOOP
            -- if EP Stage 2 is in the certification result g1 macra table, then add EP Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(1 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(2 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(3 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(10 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(13 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EP Stage 3' LIMIT 1), 'RT7 EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(17 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(18 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(41 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;

            -- if EH/CAH Stage 2 is in the certification result g1 macra table, then add EH/CAH Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(1 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(2 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(3 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(10 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(13 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(13 AS BIGINT), 'RT7 EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'RT7 EH/CAH Stage 3' LIMIT 1), 'RT7 EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(17 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(18 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(41 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;

            -- for 170.315 (b)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EC ACI' LIMIT 1), 'RT7 EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;

            -- 170.315 (e)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EP Stage 3' LIMIT 1), 'RT2a EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EP Stage 3' LIMIT 1), 'RT2b EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EP Stage 3'),'RT4a EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EP Stage 3' LIMIT 1), 'RT4b EP Stage 3',g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EC ACI' LIMIT 1), 'RT2a EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EC ACI' LIMIT 1), 'RT2b EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EC ACI' LIMIT 1), 'RT4a EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EC ACI' LIMIT 1), 'RT4b EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), 'RT2a EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), 'RT4a EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EH/CAH Stage 3' LIMIT 1), 'RT2b EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EH/CAH Stage 3' LIMIT 1), 'RT4b EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;

            -- 170.315(g)(8) and 170.315(g)(9)
            FOR i in 57..58 LOOP
                IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EP Stage 3' LIMIT 1), 'RT2a EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EP Stage 3' LIMIT 1), 'RT2c EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EP Stage 3' LIMIT 1), 'RT4a EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EP Stage 3' LIMIT 1), 'RT4c EP Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EC ACI' LIMIT 1), 'RT2a EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EC ACI' LIMIT 1), 'RT2c EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EC ACI' LIMIT 1), 'RT4a EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EC ACI' LIMIT 1), 'RT4c EC ACI', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), 'RT2a EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), 'RT4a EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EH/CAH Stage 3' LIMIT 1), 'RT2c EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g1_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g1_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EH/CAH Stage 3' LIMIT 1), 'RT4c EH/CAH Stage 3', g1_macra.pending_certification_result_id, -1);
            END IF;
            END LOOP;
        END LOOP;

        -- update g2 pending certification results
    	FOR g2_macra IN (SELECT * FROM openchpl.pending_certification_result_g2_macra) LOOP
            -- if EP Stage 2 is in the certification result g2 macra table, then add EP Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(1 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(2 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(3 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(10 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EP Stage 3' LIMIT 1), 'RT7 EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(17 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(18 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(41 AS BIGINT), 'EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EP Stage 3' LIMIT 1), 'EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;

            -- if EH/CAH Stage 2 is in the certification result g2 macra table, then add EH/CAH Stage 3 to that table
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(1 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 1 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(2 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 2 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(3 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 3 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(10 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 10 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(13 AS BIGINT), 'RT7 EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 13 AND value = 'RT7 EH/CAH Stage 3' LIMIT 1), 'RT7 EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(17 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 17 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(18 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 18 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(41 AS BIGINT), 'EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 41 AND value = 'EH/CAH Stage 3' LIMIT 1), 'EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;

            -- for 170.315 (b)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(16 AS BIGINT), 'RT7 EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 16 AND value = 'RT7 EC ACI' LIMIT 1), 'RT7 EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;

            -- 170.315 (e)(1)
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EP Stage 3' LIMIT 1), 'RT2a EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EP Stage 3' LIMIT 1), 'RT2b EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EP Stage 3'),'RT4a EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EP Stage 3' LIMIT 1), 'RT4b EP Stage 3',g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EC ACI' LIMIT 1), 'RT2a EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EC ACI' LIMIT 1), 'RT2b EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EC ACI' LIMIT 1), 'RT4a EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EC ACI' LIMIT 1), 'RT4b EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), 'RT2a EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT2b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), 'RT4a EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT2b EH/CAH Stage 3' LIMIT 1), 'RT2b EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(40 AS BIGINT), 'RT4b EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = 40 AND value = 'RT4b EH/CAH Stage 3' LIMIT 1), 'RT4b EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;

            -- 170.315(g)(8) and 170.315(g)(9)
            FOR i in 57..58 LOOP
                IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EP Stage 3' LIMIT 1), 'RT2a EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EP Stage 3' LIMIT 1), 'RT2c EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EP Stage 3' LIMIT 1), 'RT4a EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EP Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EP Stage 3' LIMIT 1), 'RT4c EP Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EC ACI' LIMIT 1), 'RT2a EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EC ACI' LIMIT 1), 'RT2c EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EC ACI' LIMIT 1), 'RT4a EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EC ACI Transition'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EC ACI' LIMIT 1), 'RT4c EC ACI', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2a EH/CAH Stage 3' LIMIT 1), 'RT2a EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT2c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4a EH/CAH Stage 3' LIMIT 1), 'RT4a EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4a EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT2c EH/CAH Stage 3' LIMIT 1), 'RT2c EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            IF (SELECT (criteria_id, value) FROM openchpl.macra_criteria_map WHERE id = g2_macra.macra_id) = (CAST(i AS BIGINT), 'RT4c EH/CAH Stage 2'::varchar) THEN
                INSERT INTO openchpl.pending_certification_result_g2_macra (macra_id, macra_value, pending_certification_result_id, last_modified_user) values
                ((SELECT id FROM openchpl.macra_criteria_map WHERE criteria_id = i AND value = 'RT4c EH/CAH Stage 3' LIMIT 1), 'RT4c EH/CAH Stage 3', g2_macra.pending_certification_result_id, -1);
            END IF;
            END LOOP;
        END LOOP;
    end;
    $$ language plpgsql;
select openchpl.add_macra_measures();
drop function openchpl.add_macra_measures();

-- Update pending certification results g1, g2 macra macra_values (macra name)
UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'EP Stage 2'
WHERE macra_value = 'EP';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'EP Stage 2'
WHERE macra_value = 'EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'EC Individual (TIN/NPI)'
WHERE macra_value = 'EC ACI Transition';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'EC Group'
WHERE macra_value = 'EC ACI';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'EH/CAH Stage 2'
WHERE macra_value = 'EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EP Stage 2'
WHERE macra_value = 'RT7 EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EP Stage 3'
WHERE macra_value = 'RT8 EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EC ACI Transition'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EC ACI Transition'
WHERE macra_value = 'RT7 EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EC ACI'
WHERE macra_value = 'RT8 EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EH/CAH Stage 2'
WHERE macra_value = 'RT7 EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EH/CAH Stage 3'
WHERE macra_value = 'RT8 EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EP Stage 2'
WHERE macra_value = 'RT2a EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2b EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4b EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2b EC ACI Transition'
WHERE macra_value = 'RT2b EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2b EC ACI Transition'
WHERE macra_value = 'RT2b EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4b EC ACI Transition'
WHERE macra_value = 'RT4b EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4b EC ACI Transition'
WHERE macra_value = 'RT4b EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EH/CAH Stage 2'
WHERE macra_value = 'RT2a EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2b EH/CAH Stage 2'
WHERE macra_value = 'RT2b EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EH/CAH Stage 2'
WHERE macra_value = 'RT4a EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4b EH/CAH Stage 2'
WHERE macra_value = 'RT4b EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EP Stage 2'
WHERE macra_value = 'RT2a EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2c EP Stage 2'
WHERE macra_value = 'RT2c EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EP Stage 2'
WHERE macra_value = 'RT4a EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4c EP Stage 2'
WHERE macra_value = 'RT4c EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2c EC ACI Transition'
WHERE macra_value = 'RT2c EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2c EC ACI Transition'
WHERE macra_value = 'RT2c EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4c EC ACI Transition'
WHERE macra_value = 'RT4c EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4c EC ACI Transition'
WHERE macra_value = 'RT4c EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2a EH/CAH Stage 2'
WHERE macra_value = 'RT2a EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT2c EH/CAH Stage 2'
WHERE macra_value = 'RT2c EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4a EH/CAH Stage 2'
WHERE macra_value = 'RT4a EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT4c EH/CAH Stage 2'
WHERE macra_value = 'RT4c EH/CAH';


-- Update pending certification results g2 macra macra_values
UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'EP Stage 2'
WHERE macra_value = 'EP';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'EP Stage 2'
WHERE macra_value = 'EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'EC Individual (TIN/NPI)'
WHERE macra_value = 'EC ACI Transition';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'EC Group'
WHERE macra_value = 'EC ACI';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'EH/CAH Stage 2'
WHERE macra_value = 'EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EP Stage 2'
WHERE macra_value = 'RT7 EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EP Stage 3'
WHERE macra_value = 'RT8 EP Individual';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EC ACI Transition'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EC ACI Transition'
WHERE macra_value = 'RT7 EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EC ACI'
WHERE macra_value = 'RT8 EC Group';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT7 EH/CAH Stage 2'
WHERE macra_value = 'RT7 EH/CAH';

UPDATE openchpl.pending_certification_result_g1_macra
SET macra_value = 'RT8 EH/CAH Stage 3'
WHERE macra_value = 'RT8 EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EP Stage 2'
WHERE macra_value = 'RT2a EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2b EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4b EP Stage 2'
WHERE macra_value = 'RT7 EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2b EC ACI Transition'
WHERE macra_value = 'RT2b EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2b EC ACI Transition'
WHERE macra_value = 'RT2b EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4b EC ACI Transition'
WHERE macra_value = 'RT4b EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4b EC ACI Transition'
WHERE macra_value = 'RT4b EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EH/CAH Stage 2'
WHERE macra_value = 'RT2a EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2b EH/CAH Stage 2'
WHERE macra_value = 'RT2b EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EH/CAH Stage 2'
WHERE macra_value = 'RT4a EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4b EH/CAH Stage 2'
WHERE macra_value = 'RT4b EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EP Stage 2'
WHERE macra_value = 'RT2a EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2c EP Stage 2'
WHERE macra_value = 'RT2c EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EP Stage 2'
WHERE macra_value = 'RT4a EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4c EP Stage 2'
WHERE macra_value = 'RT4c EP Individual';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EC ACI Transition'
WHERE macra_value = 'RT2a EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2c EC ACI Transition'
WHERE macra_value = 'RT2c EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2c EC ACI Transition'
WHERE macra_value = 'RT2c EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EC ACI Transition'
WHERE macra_value = 'RT4a EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4c EC ACI Transition'
WHERE macra_value = 'RT4c EC Individual (TIN/NPI)';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4c EC ACI Transition'
WHERE macra_value = 'RT4c EC Group';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2a EH/CAH Stage 2'
WHERE macra_value = 'RT2a EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT2c EH/CAH Stage 2'
WHERE macra_value = 'RT2c EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4a EH/CAH Stage 2'
WHERE macra_value = 'RT4a EH/CAH';

UPDATE openchpl.pending_certification_result_g2_macra
SET macra_value = 'RT4c EH/CAH Stage 2'
WHERE macra_value = 'RT4c EH/CAH';

-- OCD-2245: Adding missing Listings
-- Add new Version for Listings to connect to
-- must be run as openchpl_dev to support function create/drop
insert into openchpl.product_version (product_id, version, last_modified_user) select 245, '4', -1
where not exists (select 1 from openchpl.product_version pv where pv.product_id = 245 and pv.version = '4');

-- create function to add listings
create or replace function openchpl.insert_missing_listings() returns void as $$
    begin
    -- if listing doesn't exist
    if (select count(*) from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232') = 0 then

        -- create listing
        insert into openchpl.certified_product (certification_edition_id, product_version_id, certification_body_id, chpl_product_number, transparency_attestation_url, report_file_location, acb_certification_id, practice_type_id, product_classification_type_id, product_additional_software, last_modified_user) values
            (2, (select product_version_id from openchpl.product_version pv where pv.product_id = 245 and pv.version = '4'), 1, 'CHP-029232', 'http://www.nexgenic.com/onc-certification', 'http://connect.ul.com/rs/365-LEA-623/images/16-3150-R-0011-PRA-V1.0-NexGenic-PTR.pdf', 'IG-3150-16-0011', 1, 1, 'Java Runtime Enviroment', 1);

        -- set status (figure out correct one first)
        insert into openchpl.certification_status_event (certified_product_id, certification_status_id, event_date, last_modified_user) values
            ((select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), 1, '2016-03-29', -1);

        -- set first certification event (uploaded to chpl)
        insert into openchpl.certification_event (certified_product_id, event_type_id, event_date, last_modified_user) values
            ((select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), 1, '2016-03-29', -1);

        -- set all certification results
        insert into openchpl.certification_result (certification_criterion_id, certified_product_id, success, last_modified_user) values
            (61, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (62, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (63, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (64, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (65, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (66, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (67, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (68, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (69, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (70, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (71, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (72, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), true, -1),
            (73, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (74, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (75, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (76, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (77, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (78, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (79, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (80, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (81, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (82, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (83, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (84, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (85, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (86, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (87, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (88, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (89, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (90, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (91, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (92, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (93, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (94, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (95, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (96, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (97, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (98, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (99, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (100, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (101, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (102, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (103, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (104, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (105, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), true, -1),
            (106, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (107, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (108, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (109, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (110, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (111, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (112, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (113, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), true, -1),
            (114, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (115, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (116, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), true, -1),
            (117, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (118, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1),
            (119, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029232'), false, -1);

        -- listing has now CQM results
    end if;

    -- if listing doesn't exist
    if (select count(*) from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233') = 0 then

        -- create listing
        insert into openchpl.certified_product (certification_edition_id, product_version_id, certification_body_id, chpl_product_number, transparency_attestation_url, report_file_location, acb_certification_id, practice_type_id, product_classification_type_id, product_additional_software, last_modified_user) values
            (2, (select product_version_id from openchpl.product_version pv where pv.product_id = 245 and pv.version = '4'), 1, 'CHP-029233', 'http://www.nexgenic.com/onc-certification', 'http://connect.ul.com/rs/365-LEA-623/images/16-3150-R-0011-PRI-V1.0-NexGenic-PTR.pdf', 'IG-3150-16-0012', 2, 1, 'Java Runtime Enviroment', 1);

        -- set status (figure out correct one first)
        insert into openchpl.certification_status_event (certified_product_id, certification_status_id, event_date, last_modified_user) values
            ((select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), 1, '2016-03-29', -1);

        -- set first certification event (uploaded to chpl)
        insert into openchpl.certification_event (certified_product_id, event_type_id, event_date, last_modified_user) values
            ((select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), 1, '2016-03-29', -1);

        -- set all certification results
        insert into openchpl.certification_result (certification_criterion_id, certified_product_id, success, last_modified_user) values
            (61, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (62, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (63, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (64, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (65, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (66, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (67, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (68, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (69, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (70, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (71, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (72, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), true, -1),
            (73, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (74, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (75, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (76, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (77, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (78, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (79, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (80, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (81, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (82, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (83, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (84, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (85, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (86, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (87, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (88, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (89, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (90, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (91, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (92, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (93, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (94, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (95, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (96, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (97, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (98, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (99, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (100, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (101, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (102, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (103, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (104, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (105, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (106, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (107, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (108, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (109, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (110, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (111, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (112, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (113, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), true, -1),
            (114, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (115, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (116, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), true, -1),
            (117, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (118, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1),
            (119, (select certified_product_id from openchpl.certified_product cp where cp.chpl_product_number = 'CHP-029233'), false, -1);

        -- listing has now CQM results
    end if;
    end;
$$ language plpgsql;

-- execute function
select openchpl.insert_missing_listings();

-- remove function
drop function openchpl.insert_missing_listings();


-- OCD-2223: Duplicate / missing listings
--
DROP VIEW IF EXISTS openchpl.certified_product_search;

CREATE OR REPLACE VIEW openchpl.certified_product_search AS
SELECT cp.certified_product_id,
       child.child,
       parent.parent,
       certs.cert_number AS certs,
       cqms.cqm_number AS cqms,
       openchpl.get_chpl_product_number(cp.certified_product_id) AS chpl_product_number,
       cp.meaningful_use_users,
       cp.transparency_attestation_url,
       edition.year,
       acb.certification_body_name,
       cp.acb_certification_id,
       prac.practice_type_name,
       version.product_version,
       product.product_name,
       vendor.vendor_name,
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
          vendor_1.vendor_code
   FROM openchpl.vendor vendor_1) vendor ON product.vendor_id = vendor.vendor_id
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

DROP TABLE IF EXISTS openchpl.criterion_product_statistics;

CREATE TABLE openchpl.criterion_product_statistics (
        id bigserial NOT NULL,
        product_count bigint NOT NULL,
        certification_criterion_id bigint NOT NULL REFERENCES openchpl.certification_criterion (certification_criterion_id),
        creation_date timestamp without time zone NOT NULL DEFAULT now(),
        last_modified_date timestamp without time zone NOT NULL DEFAULT now(),
        last_modified_user bigint NOT NULL,
        deleted boolean NOT NULL DEFAULT false,
        CONSTRAINT criterion_product_statistics_pk PRIMARY KEY (id)
        );
CREATE TRIGGER criterion_product_statistics_audit AFTER INSERT OR UPDATE OR DELETE on openchpl.criterion_product_statistics FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();
CREATE TRIGGER criterion_product_statistics_timestamp BEFORE UPDATE on openchpl.criterion_product_statistics FOR EACH ROW EXECUTE PROCEDURE openchpl.update_last_modified_date_column();


-- OCD-2232 fix certification_date and decertification_date to respect deleted certification status events
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
    a.meaningful_use_users,
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
    u.first_name,
    u.last_name,
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
            contact.first_name,
            contact.last_name,
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
		   
--re-run grants
\i dev/openchpl_grant-all.sql