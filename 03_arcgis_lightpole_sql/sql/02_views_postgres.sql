-- Status summary view (survey + labeling)

CREATE OR REPLACE VIEW gis.v_mpczones_status_summary AS
SELECT
  COALESCE(lower(survey_24), 'unknown') AS survey_24,
  COALESCE(label_completed, 'unknown')  AS label_completed,
  COUNT(*)                              AS row_count
FROM gis.mpczones_identity_sort2
GROUP BY 1, 2
ORDER BY row_count DESC;
