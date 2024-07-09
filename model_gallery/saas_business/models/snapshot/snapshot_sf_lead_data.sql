-- Slowly Changing Dimension: Dimension keys are "id"
-- Effective date columns are "last_modified_date", "last_modified_timestamp"
-- We will create Type 1 SCD (latest snapshot)
SELECT 
    "owner_id",
    "last_modified_by_id",
    "converted_contact_id",
    "id",
    "photo_url",
    "created_by_id",
    "is_converted",
    "is_unread_by_owner",
    "status",
    "lead_industry",
    "is_deleted",
    "company_name",
    "email",
    "lead_last_name",
    "active_in_sequence",
    "clearbit_data_ready",
    "has_opted_out_of_email",
    "converted_salesforce_account_id",
    "demo_scheduled_calendly",
    "marked_for_deletion",
    "email_quality",
    "email_bounced_c",
    "created_by_clearbit",
    "is_competitor",
    "routing_action",
    "search_index",
    "reporting_matched_account_id",
    "routing_status",
    "do_not_route_lead",
    "contact_stage",
    "prospect_routing_rules",
    "email_explicit_opt_in",
    "email_implicit_opt_in",
    "gdpr_opt_in_status",
    "is_user_gem",
    "last_interaction_description",
    "last_interaction_source",
    "last_interaction_type",
    "lead_priority_score",
    "lead_urgency",
    "cloudingo_agent_as",
    "cloudingo_agent_les",
    "marketo_sync_exclusion",
    "last_utm_campaign",
    "last_utm_content",
    "last_utm_medium",
    "last_utm_source",
    "last_utm_term",
    "behavioral_score",
    "is_emea_event_routing",
    "csi_description",
    "attended_event",
    "manual_route_trigger",
    "mql_reason",
    "enrichment_request",
    "fivetran_use_case",
    "sales_email_opt_out_c",
    "created_by_user_gems",
    "is_verified",
    "startup_certification_eligible",
    "email_double_opt_in",
    "all_lead_source_categories",
    "all_lead_sources",
    "all_utm_campaigns",
    "all_utm_mediums",
    "all_utm_sources",
    "annual_revenue",
    "contact_status",
    "conversion_date",
    "conversion_object_name",
    "conversion_object_type",
    "converted_date",
    "converted_datetime",
    "converted_opportunity_id",
    "created_date",
    "email_bounce_date",
    "email_bounce_reason",
    "engagio_first_engagement_date",
    "first_mql_date",
    "first_search_term",
    "first_search_type",
    "fivetran_account_id",
    "fivetran_account_stage",
    "fivetran_active_status",
    "fivetran_association_date",
    "fivetran_user_id",
    "fivetran_user_roles",
    "free_trial_confirmation_date",
    "intent_topics",
    "last_completed_cadence_step",
    "last_interesting_moment_date",
    "lead_bi_tools",
    "lead_comments",
    "lead_creation_datetime",
    "lead_notes",
    "lead_number_c",
    "lead_tags",
    "lead_url",
    "metadata_creation_date",
    "partner_rep_email",
    "partner_rep_name",
    "partner_type",
    "past_account",
    "past_user_gems_info",
    "previous_company",
    "previous_job_title",
    "previous_lead_source",
    "previous_lead_source_detail",
    "referral_account",
    "referral_contact",
    "referral_email",
    "referral_first_name",
    "referral_last_name",
    "reporting_timestamp",
    "sales_email_opt_out_date_time_c",
    "sales_volume_millions",
    "twitter_url",
    "zoominfo_technologies"
FROM (
     SELECT 
            "owner_id",
            "last_modified_by_id",
            "converted_contact_id",
            "id",
            "photo_url",
            "created_by_id",
            "is_converted",
            "is_unread_by_owner",
            "status",
            "lead_industry",
            "is_deleted",
            "company_name",
            "email",
            "lead_last_name",
            "active_in_sequence",
            "clearbit_data_ready",
            "has_opted_out_of_email",
            "converted_salesforce_account_id",
            "demo_scheduled_calendly",
            "marked_for_deletion",
            "email_quality",
            "email_bounced_c",
            "created_by_clearbit",
            "is_competitor",
            "routing_action",
            "search_index",
            "reporting_matched_account_id",
            "routing_status",
            "do_not_route_lead",
            "contact_stage",
            "prospect_routing_rules",
            "email_explicit_opt_in",
            "email_implicit_opt_in",
            "gdpr_opt_in_status",
            "is_user_gem",
            "last_interaction_description",
            "last_interaction_source",
            "last_interaction_type",
            "lead_priority_score",
            "lead_urgency",
            "cloudingo_agent_as",
            "cloudingo_agent_les",
            "marketo_sync_exclusion",
            "last_utm_campaign",
            "last_utm_content",
            "last_utm_medium",
            "last_utm_source",
            "last_utm_term",
            "behavioral_score",
            "is_emea_event_routing",
            "csi_description",
            "attended_event",
            "manual_route_trigger",
            "mql_reason",
            "enrichment_request",
            "fivetran_use_case",
            "sales_email_opt_out_c",
            "created_by_user_gems",
            "is_verified",
            "startup_certification_eligible",
            "email_double_opt_in",
            "all_lead_source_categories",
            "all_lead_sources",
            "all_utm_campaigns",
            "all_utm_mediums",
            "all_utm_sources",
            "annual_revenue",
            "contact_status",
            "conversion_date",
            "conversion_object_name",
            "conversion_object_type",
            "converted_date",
            "converted_datetime",
            "converted_opportunity_id",
            "created_date",
            "email_bounce_date",
            "email_bounce_reason",
            "engagio_first_engagement_date",
            "first_mql_date",
            "first_search_term",
            "first_search_type",
            "fivetran_account_id",
            "fivetran_account_stage",
            "fivetran_active_status",
            "fivetran_association_date",
            "fivetran_user_id",
            "fivetran_user_roles",
            "free_trial_confirmation_date",
            "intent_topics",
            "last_completed_cadence_step",
            "last_interesting_moment_date",
            "lead_bi_tools",
            "lead_comments",
            "lead_creation_datetime",
            "lead_notes",
            "lead_number_c",
            "lead_tags",
            "lead_url",
            "metadata_creation_date",
            "partner_rep_email",
            "partner_rep_name",
            "partner_type",
            "past_account",
            "past_user_gems_info",
            "previous_company",
            "previous_job_title",
            "previous_lead_source",
            "previous_lead_source_detail",
            "referral_account",
            "referral_contact",
            "referral_email",
            "referral_first_name",
            "referral_last_name",
            "reporting_timestamp",
            "sales_email_opt_out_date_time_c",
            "sales_volume_millions",
            "twitter_url",
            "zoominfo_technologies",
            ROW_NUMBER() OVER (
                PARTITION BY "id" 
                ORDER BY "last_modified_date", "last_modified_timestamp" 
            DESC) AS "cocoon_rn"
    FROM "stg_sf_lead_data"
) ranked
WHERE "cocoon_rn" = 1