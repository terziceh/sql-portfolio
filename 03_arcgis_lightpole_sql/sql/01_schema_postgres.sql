-- ============================
-- ArcGIS Feature Layer → Postgres
-- Layer: MPCZones_Identity_Sort2
-- ============================

CREATE SCHEMA IF NOT EXISTS gis;

-- For sample UUIDs (GlobalID)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS gis.mpczones_identity_sort2 CASCADE;

CREATE TABLE gis.mpczones_identity_sort2 (
  objectid                    bigint PRIMARY KEY,     -- ArcGIS ObjectID

  fid_vcu_streetlight_survey   integer,
  light_type                   text,
  light_owne                   text,
  notes                        text,
  date_of_su                   timestamptz,
  survey_24                    text,

  near_fid                     integer,
  near_dist                    double precision,

  fid_mpc_zones                integer,
  zone_id                      integer,
  polenumber                   text,
  orig_fid                     integer,

  globalid                     uuid,
  label_completed              text,
  power_source                 text
);

-- Keep survey_24 consistent (y/n)
ALTER TABLE gis.mpczones_identity_sort2
  ADD CONSTRAINT chk_survey_24
  CHECK (survey_24 IS NULL OR lower(survey_24) IN ('y','n'));

-- Indexes (nice for portfolio + shows best practice)
CREATE INDEX IF NOT EXISTS idx_mpc_light_type  ON gis.mpczones_identity_sort2 (light_type);
CREATE INDEX IF NOT EXISTS idx_mpc_light_owne  ON gis.mpczones_identity_sort2 (light_owne);
CREATE INDEX IF NOT EXISTS idx_mpc_survey_24   ON gis.mpczones_identity_sort2 (survey_24);
CREATE INDEX IF NOT EXISTS idx_mpc_date_of_su  ON gis.mpczones_identity_sort2 (date_of_su);
