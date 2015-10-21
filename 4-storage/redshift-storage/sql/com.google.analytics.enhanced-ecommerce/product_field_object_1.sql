-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.1.0
-- Generated: 2015-10-21 15:19

-- Source: iglu:com.google.analytics.enhanced-ecommerce/productFieldObject/jsonschema/1-0-0

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_google_analytics_enhanced_ecommerce_product_field_object_1 (
    "schema_vendor"  VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP        ENCODE RAW       NOT NULL,
    "ref_root"       VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "brand"          VARCHAR(500),
    "category"       VARCHAR(500),
    "coupon"         VARCHAR(500),
    "currency"       CHAR(3),
    "id"             VARCHAR(500),
    "list"           VARCHAR(500),
    "name"           VARCHAR(500),
    "position"       BIGINT,
    "price"          DOUBLE PRECISION,
    "quantity"       BIGINT,
    "variant"        VARCHAR(500),
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);
