CREATE  TABLE FEATURE_TOGGLE (
feature_toggle_id BIGINT,
feature_name VARCHAR2 (100 CHAR),
feature_description VARCHAR2(4000 CHAR),
enabled boolean,
active boolean,
created_timestamp TIMESTAMP NOT NULL,
updated_timestamp TIMESTAMP NOT NULL,
PRIMARY KEY(feature_toggle_id)
);


CREATE SEQUENCE FEATURE_TOGGLE_ID_SEQ
	START WITH 1
	INCREMENT BY 1
	CACHE 50;

InSERT INTO feature_toggle(feature_toggle_id, feature_name, active, enabled, created_timestamp, updated_timestamp)
VALUES (FEATURE_TOGGLE_ID_SEQ.nextval, 'show_featuretoggles', true, true, current_timestamp(), current_timestamp());

InSERT INTO feature_toggle(feature_toggle_id, feature_name, active, enabled, created_timestamp, updated_timestamp)
VALUES (FEATURE_TOGGLE_ID_SEQ.nextval, 'update_featuretoggles', true, false, current_timestamp(), current_timestamp());
