-- Slowly Changing Dimension: Dimension keys are "opportunity_id"
-- Effective date columns are "created_date", "validity_start_date", "validity_end_date"
-- We will create Type 1 SCD (latest snapshot)
SELECT 
    "forecast_category_id",
    "is_closed",
    "opportunity_category",
    "opportunity_type_id",
    "has_overdue_task",
    "opportunity_amount",
    "is_deleted",
    "is_won",
    "opportunity_id",
    "is_active",
    "salesforce_account_id",
    "lead_source_id",
    "win_probability",
    "stage_name",
    "has_line_items",
    "owner_id",
    "forecast_category_name",
    "opportunity_name",
    "has_open_activity",
    "campaign_id",
    "close_date",
    "fiscal_quarter",
    "fiscal_year"
FROM (
     SELECT 
            "forecast_category_id",
            "is_closed",
            "opportunity_category",
            "opportunity_type_id",
            "has_overdue_task",
            "opportunity_amount",
            "is_deleted",
            "is_won",
            "opportunity_id",
            "is_active",
            "salesforce_account_id",
            "lead_source_id",
            "win_probability",
            "stage_name",
            "has_line_items",
            "owner_id",
            "forecast_category_name",
            "opportunity_name",
            "has_open_activity",
            "campaign_id",
            "close_date",
            "fiscal_quarter",
            "fiscal_year",
            ROW_NUMBER() OVER (
                PARTITION BY "opportunity_id" 
                ORDER BY "created_date", "validity_start_date", "validity_end_date" 
            DESC) AS "cocoon_rn"
    FROM "stg_sf_opportunity_history_data"
) ranked
WHERE "cocoon_rn" = 1