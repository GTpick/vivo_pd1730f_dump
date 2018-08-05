/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 4);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('460','000','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('460','08','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('460','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('460','911','','');
DELETE FROM qcril_emergency_source_voice_table where MCC = '460' AND NUMBER = '112';
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('460','000','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('460','08','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('460','118','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('460','000','','');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('460','08','','');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('460','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('460','911','','');

INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('404','101','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('404','102','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('405','101','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('405','102','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('406','100','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('406','101','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('406','102','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('406','100','','');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('406','101','','');
INSERT OR REPLACE INTO "qcril_emergency_source_hard_mcc_table" VALUES('406','102','','');


DELETE FROM qcril_emergency_source_voice_table where MCC = '404' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '405' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table WHERE MCC = '404' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table WHERE MCC = '405' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table WHERE MCC = '404' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table WHERE MCC = '405' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '404' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '405' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '404' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '405' AND NUMBER = '100';

COMMIT TRANSACTION;
