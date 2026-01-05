-- Sample rows (normalized from ArcGIS table examples)
-- Dates stored as timestamptz

INSERT INTO gis.mpczones_identity_sort2 (
  objectid,
  fid_vcu_streetlight_survey,
  light_type,
  light_owne,
  notes,
  date_of_su,
  survey_24,
  near_fid,
  near_dist,
  fid_mpc_zones,
  zone_id,
  polenumber,
  orig_fid,
  globalid,
  label_completed,
  power_source
)
VALUES
  (1,  1143, 'lantern', 'VCU',        NULL, '2024-10-10 20:00:00-04', 'y', 0, 151.316504, 1, 100, '1', 1592, gen_random_uuid(), 'Yes', 'VCU'),
  (2,  1142, 'lantern', 'VCU',        NULL, '2024-10-10 20:00:00-04', 'y', 0, 162.091749, 1, 100, '2', 1591, gen_random_uuid(), 'Yes', NULL),
  (3,   912, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 172.157299, 1, 100, '3', 1590, gen_random_uuid(), 'Yes', NULL),
  (4,   783, 'lantern', 'VCU',        NULL, '2024-09-19 20:00:00-04', 'y', 0, 203.127293, 1, 100, '4', 1588, gen_random_uuid(), 'Yes', 'City'),
  (5,   914, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 208.490293, 1, 100, '5', 1585, gen_random_uuid(), 'Yes', 'City'),
  (6,   781, 'lantern', 'VCU',        NULL, '2024-09-19 20:00:00-04', 'y', 0, 222.234920, 1, 100, '6', 1583, gen_random_uuid(), 'Yes', 'City'),
  (7,   915, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 225.856761, 1, 100, '7', 1580, gen_random_uuid(), 'Yes', 'City'),
  (8,   903, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 229.393062, 1, 100, '8', 1584, gen_random_uuid(), 'Yes', NULL),
  (9,   893, 'other',   'VCU - other','Cylinder fixture', '2024-09-25 20:00:00-04', 'n', 0, 231.717105, 1, 100, '9', 1576, gen_random_uuid(), NULL, NULL),
  (10,  897, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 233.378585, 1, 100, '10', 1574, gen_random_uuid(), 'Yes', NULL),
  (11,  902, 'lantern', 'VCU',        NULL, '2024-09-25 20:00:00-04', 'y', 0, 233.677463, 1, 100, '11', 1581, gen_random_uuid(), 'Yes', NULL),
  (12,  NULL, NULL,     NULL,         NULL, '2024-09-25 20:00:00-04', 'y', 0, 238.693291, 1, 100, '12', 1577, gen_random_uuid(), 'Yes', NULL);
