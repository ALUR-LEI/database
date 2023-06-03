--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: request_type_requires_source_type; Type: TABLE DATA; Schema: application; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE application.request_type_requires_source_type DISABLE TRIGGER ALL;

INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'cadastreChange');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'redefineCadastre');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('mortgage', 'varyMortgage');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'varyMortgage');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'regnOnTitle');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'regnDeeds');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('lease', 'registerLease');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('powerOfAttorney', 'regnPowerOfAttorney');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('standardDocument', 'regnStandardDocument');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'noteOccupation');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'noteOccupation');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'usufruct');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'waterRights');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('mortgage', 'mortgage');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'buildingRestriction');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'servitude');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'lifeEstate');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'lifeEstate');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'newApartment');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'newState');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'caveat');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeCaveat');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeCaveat');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'historicOrder');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'limitedRoadAccess');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('lease', 'varyLease');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'varyLease');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'varyRight');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'varyRight');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeRight');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeRight');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeRestriction');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeRestriction');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'cnclPowerOfAttorney');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'cnclStandardDocument');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('caveat', 'caveat');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'mapExistingParcel');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'newDigitalTitle');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('relationshipTitle', 'recordRelationship');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('relationshipTitle', 'cancelRelationship');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('restrictionOrder', 'obscurationRequest');


ALTER TABLE application.request_type_requires_source_type ENABLE TRIGGER ALL;

--
-- Data for Name: level; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

ALTER TABLE cadastre.level DISABLE TRIGGER ALL;

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('cadastreObject', 'Cadastre object', 'all', 'polygon', 'primaryRight', 'be03cc56-99dd-11e3-b772-13b58d0363c9', 1, 'i', 'db:postgres', '2014-02-20 16:19:00.595', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('bffd0bb2-99dd-11e3-a43e-17754b2def8e', 'Survey Control', 'all', 'point', 'geographicLocator', 'bffee072-99dd-11e3-b838-a3032aff2862', 1, 'i', 'test', '2014-02-20 16:19:03.908', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c06a4e0c-99dd-11e3-b4a8-df59099d962e', 'Roads', 'all', 'point', 'primaryRight', 'c06a9c2c-99dd-11e3-867c-3f6b8d26f6b4', 1, 'i', 'test', '2014-02-20 16:19:04.625', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c1532ad2-99dd-11e3-a445-237731ad01b0', 'Parcels', 'all', 'polygon', 'primaryRight', 'c15351e2-99dd-11e3-be93-6f678d1a08cd', 1, 'i', 'test', '2014-02-20 16:19:06.145', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('road-centerline', 'Road centerline', 'all', 'unStructuredLine', 'geographicLocator', 'f099731a-cd80-11e3-8b0c-53bca1817824', 1, 'i', 'db:postgres', '2014-04-26 22:25:42.727', true);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c03162e0-99dd-11e3-a27b-2bfeef31a969', 'Place Names', 'all', 'point', 'geographicLocator', 'c03189f0-99dd-11e3-905e-8be6604148a7', 2, 'u', 'test', '2014-04-26 22:25:42.727', true);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('house-num', 'House Number', 'all', 'point', 'geographicLocator', '4ae9b152-02f3-11e4-a6bb-db5f0510f653', 1, 'i', 'soladev', '2014-07-04 08:47:35.126', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('parcel-PSMA', 'Parcels (PSMA)', 'all', 'polygon', 'primaryRight', 'e2137c44-cae7-11ea-b498-0242ac140002', 3, 'u', 'db:postgres', '2020-07-21 10:34:09.267332', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('parcel-land-tenure-1993', 'Parcels (Land Tenure 1993)', 'all', 'polygon', 'primaryRight', 'e21909a2-cae7-11ea-b498-0242ac140002', 2, 'u', 'db:postgres', '2020-07-21 10:34:28.671093', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('native-title-determinations', 'Native Title Determinations', 'all', 'polygon', 'geographicLocator', '9d1fe116-cdff-11ea-a82e-0242ac130003', 1, 'i', 'db:postgres', '2020-07-25 08:47:12.460716', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('indigenous-land-use-agreements', 'Indigenous Land Use Agreements', 'all', 'polygon', 'geographicLocator', 'c2bff6f4-cdff-11ea-a82e-0242ac130003', 1, 'i', 'db:postgres', '2020-07-25 08:48:15.593277', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('native-title-corporations', 'Registered Native Title Body Corporation areas', 'all', 'polygon', 'geographicLocator', '0d35eb82-ced0-11ea-91af-0242ac130003', 1, 'i', 'db:postgres', '2020-07-26 09:39:15.835247', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('parcel-NSW', 'Parcels (NSW)', 'all', 'polygon', 'geographicLocator', '3b0df566-3020-11eb-be08-0242ac170003', 1, 'i', 'db:postgres', '2020-11-27 06:47:35.274816', false);
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('parcel', 'Parcels (NSW)', 'all', 'polygon', 'geographicLocator', '3273b0b2-3043-11eb-be08-0242ac170003', 1, 'i', 'db:postgres', '2020-11-27 10:57:53.231345', false);


ALTER TABLE cadastre.level ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

