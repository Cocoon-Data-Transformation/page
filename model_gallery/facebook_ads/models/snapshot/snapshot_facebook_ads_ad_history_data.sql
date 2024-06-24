-- Slowly Changing Dimension: Dimension keys are "ad_id"
-- Effective date columns are "last_updated"
-- We will create Type 1 SCD (latest snapshot)
SELECT 
    "ad_name",
    "account_id",
    "ad_id",
    "ad_set_id",
    "campaign_id",
    "creative_id"
FROM (
     SELECT 
            "ad_name",
            "account_id",
            "ad_id",
            "ad_set_id",
            "campaign_id",
            "creative_id",
            ROW_NUMBER() OVER (
                PARTITION BY "ad_id" 
                ORDER BY "last_updated" 
            DESC) AS "cocoon_rn"
    FROM "stg_facebook_ads_ad_history_data"
) ranked
WHERE "cocoon_rn" = 1