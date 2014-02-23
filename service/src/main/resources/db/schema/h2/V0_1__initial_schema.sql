CREATE  TABLE FEATURE_TOGGLE (
feature_toggle_id NUMBER(12),
feature_name VARCHAR2 (100 CHAR),
active boolean,
PRIMARY KEY(feature_toggle_id)
);


CREATE SEQUENCE FEATURE_TOGGLE_ID_SEQ
	START WITH 1
	INCREMENT BY 1
	CACHE 50;

InSERT INTO feature_toggle(feature_toggle_id, feature_name,active) VALUES (FEATURE_TOGGLE_ID_SEQ.nextval, 'test_feature_1', true);
