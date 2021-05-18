INSERT INTO system.version SELECT '2105a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '2105a');

DELETE FROM opentenure.administrative_boundary_type WHERE EXISTS (SELECT level FROM opentenure.administrative_boundary_type WHERE level<4);

INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('interest', 'Area of Interest::::::::::::::::::::::::::::::::::::::::::::First Nation', 'c', 2, 'First Nation::::::::::::::::::::::::::::::::::::::::::::First Nation territory');
INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('significant', 'Significant Area::::::::::::::::::::::::::::::::::::::::::::Continent', 'c', 1, 'Continent::::::::::::::::::::::::::::::::::::::::::::The Continent');
INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('sub-use', 'Seasonal use::::::::::::::::::::::::::::::::::::::::::::Not used in ALUR', 'x', 4, 'Not used in ALUR::::::::::::::::::::::::::::::::::::::::::::Not used in ALUR');
INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('use', 'Land Use::::::::::::::::::::::::::::::::::::::::::::Exclusion from First Nation', 'c', 3, 'Exclusion from First Nation::::::::::::::::::::::::::::::::::::::::::::Exclusion from First Nation');

INSERT INTO system.language VALUES ('en-AU', 'English (Australia)', true, true, 12, true);

DELETE FROM opentenure.system.setting;

INSERT INTO system.setting VALUES ('email-msg-claim-approve-moderation-subject', 'Allodial Land Use Registry - Allodial Land Use Permit approval', true, 'Permit moderation approval notice subject');
INSERT INTO system.setting VALUES ('email-send-interval1', '1', true, 'Time interval in minutes for the first attempt to send email message.');
INSERT INTO system.setting VALUES ('max-file-size', '10000', true, 'Maximum file size in KB for uploading.');
INSERT INTO system.setting VALUES ('max-uploading-daily-limit', '100000', true, 'Maximum size of files uploaded daily.');
INSERT INTO system.setting VALUES ('email-admin-address', '', true, 'Email address of server administrator. If empty, no notifications will be sent');
INSERT INTO system.setting VALUES ('email-admin-name', '', true, 'Name of server administrator');
INSERT INTO system.setting VALUES ('email-body-format', 'html', true, 'Message body format. text - for simple text format, html - for html format');
INSERT INTO system.setting VALUES ('email-send-attempts1', '2', true, 'Number of attempts to send email with first interval');
INSERT INTO system.setting VALUES ('email-send-interval2', '120', true, 'Time interval in minutes for the second attempt to send email message.');
INSERT INTO system.setting VALUES ('email-send-attempts2', '2', true, 'Number of attempts to send email with second interval');
INSERT INTO system.setting VALUES ('email-send-interval3', '1440', true, 'Time interval in minutes for the third attempt to send email message.');
INSERT INTO system.setting VALUES ('email-send-attempts3', '1', true, 'Number of attempts to send email with third interval');
INSERT INTO system.setting VALUES ('email-msg-failed-send-subject', 'Delivery failure', true, 'Subject text for delivery failure of message');
INSERT INTO system.setting VALUES ('email-msg-failed-send-body', 'Message send to the user #{userName} has been failed to deliver after number of attempts with the following error: <br/>#{error}', true, 'Message text for delivery failure');
INSERT INTO system.setting VALUES ('account-activation-timeout', '70', true, 'Account activation timeout in hours. After this time, activation should expire.');
INSERT INTO system.setting VALUES ('email-service-interval', '10', true, 'Time interval in seconds for email service to check and process scheduled messages.');
INSERT INTO system.setting VALUES ('pword-expiry-days', '90', false, 'The number of days a users password remains valid');
INSERT INTO system.setting VALUES ('email-msg-claim-approve-review-subject', 'Allodial Land Use Registry - permit review approval', true, 'Permit review approval notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-approve-moderation-body', 'Dear #{userFirstName},<br /><br />
Permit challenge <a href="#{challengeLink}"><b>##{challengeNumber}</b></a> has been moderated.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Claim challenge moderation approval notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-approve-moderation-subj', 'Allodial Land Use Registry - permit challenge moderation', true, 'Permit challenge moderation approval notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-approve-review-body', 'Dear #{userFirstName},<br /><br />
Permit challenge <a href="#{challengeLink}"><b>##{challengeNumber}</b></a> has passed review stage.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit challenge review approval notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-approve-review-subject', 'Allodial Land Use Registry - permit challenge review', true, 'Permit challenge review approval notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-submitted-body', 'Dear #{userFullName},<br /><br />
New permit challenge <a href="#{challengeLink}"><b>##{challengeNumber}</b></a> has been submitted
to challenge the permit <a href="#{claimLink}"><b>##{claimNumber}</b></a>.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'New permit challenge body text');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-submitted-subject', 'Allodial Land Use Registry - new claim challenge to the permit ##{claimNumber}', true, 'New permit challenge subject text');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-updated-body', 'Dear #{userFullName},<br /><br />
Permit challenge <b>##{challengeNumber}</b> has been updated.
Follow <a href="#{challengeLink}">this link</a> to check updated information.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit challenge update body text');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-updated-subject', 'Allodial Land Use Registry - permit challenge ##{challengeNumber} update', true, 'Permit challenge update subject text');
INSERT INTO system.setting VALUES ('email-msg-claim-reject-subject', 'Allodial Land Use Registry - permit rejection', true, 'Permit rejection notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-submit-body', 'Dear #{userFullName},<br /><br />
New permit <b>##{claimNumber}</b> has been submitted.
You can follow its status by <a href="#{claimLink}">this address</a>.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'New permit body text');
INSERT INTO system.setting VALUES ('email-msg-claim-submit-subject', 'Allodial Land Use Registry - new permit submitted', true, 'New permit subject text');
INSERT INTO system.setting VALUES ('email-msg-claim-updated-body', 'Dear #{userFullName},<br /><br />Permit <b>##{claimNumber}</b> has been updated. Follow <a href="#{claimLink}">this link</a> to check permit status and updated information.<br /><br />Regards,<br />Allodial Land Use Registry', true, 'Permit update body text');
INSERT INTO system.setting VALUES ('email-msg-claim-updated-subject', 'Allodial Land Use Registry - permit ##{claimNumber} update', true, 'Permit update subject text');
INSERT INTO system.setting VALUES ('email-msg-claim-withdraw-body', 'Dear #{userFirstName},<br /><br />
Permit <a href="#{claimLink}"><b>##{claimNumber}</b></a> has been withdrawn by community recorder.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit withdrawal notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-withdraw-subject', 'Allodial Land Use Registry - permit withdrawal', true, 'Permit withdrawal notice subject');
INSERT INTO system.setting VALUES ('email-msg-pswd-restore-body', 'Dear #{userFullName},<br /><br />You have requested to restore the password. If you didn''t ask for this action, just ignore this message. Otherwise, follow <a href="#{passwordRestoreLink}">this link</a> to reset your password.<br /><br />Regards,<br />Allodial Land Use Registry', true, 'Message text for password restore');
INSERT INTO system.setting VALUES ('email-msg-pswd-restore-subject', 'Allodial Land Use Registry - password restore', true, 'Password restore subject');
INSERT INTO system.setting VALUES ('email-msg-reg-subject', 'Allodial Land Use Registry - enrolment', true, 'Subject text for new user enrolment on Allodial Land Use Registry. Sent to user.');
INSERT INTO system.setting VALUES ('email-msg-user-registration-body', 'New user "#{userName}" has been registered registered on Allodial Land Use Registry Web-site.', true, 'Message text for new user enrolment on Allodial Land Use Registry Web-site');
INSERT INTO system.setting VALUES ('email-msg-user-registration-subject', 'New user registration', true, 'Subject text for new user registration on Allodial Land Use Registry Web-site. Sent to administrator.');
INSERT INTO system.setting VALUES ('moderation-days', '1', true, 'Duration of moderation time in days');
INSERT INTO system.setting VALUES ('email-msg-notifiable-submit-body', 'Dear #{notifiablePartyName},<p></p> this is to inform you that one <b>#{actionToNotify}</b> action has been requested
				<br>by <b>#{targetPartyName}</b>
				<br>on the following property: <b>#{baUnitName}</b>. <p></p><p></p>Regards,<br />#{sendingOffice}', true, 'Action on Interest body text');
INSERT INTO system.setting VALUES ('email-mailer-jndi-name', 'mail/sola', true, 'Configured mailer service JNDI name');
INSERT INTO system.setting VALUES ('product-name', 'SOLA Community Server', true, 'SOLA product name');
INSERT INTO system.setting VALUES ('product-code', 'scs', true, 'SOLA product code. sr - SOLA Registry, ssr - SOLA Systematic Registration, ssl - SOLA State Land, scs - SOLA Community Server');
INSERT INTO system.setting VALUES ('moderation_date', '2015-01-01', true, 'Closing date of public display for the claims. Date must be set in the format "yyyy-mm-dd". If date is not set or in the past, "moderation-days" setting will be used for calculating closing date.');
INSERT INTO system.setting VALUES ('requires_spatial', '0', true, 'Indicates whether spatial representation of the parcel is required (mandatory). If values is 0, spatial part can be omitted, otherwise validation will request it.');
INSERT INTO system.setting VALUES ('report_server_user', 'jasperadmin', true, 'Reporting server user name.');
INSERT INTO system.setting VALUES ('report_server_pass', 'jasperadmin', true, 'Reporting server user password.');
INSERT INTO system.setting VALUES ('ot-title-plan-crs-wkt', '', true, 'Custom Coordinate Reference System in WKT format of the map image, generated for claim certificate in OpenTenure');
INSERT INTO system.setting VALUES ('offline-mode', '0', true, 'Indicates whether Community Server is connected to the Internet or not. 0 - connected, 1 - not connected');
INSERT INTO system.setting VALUES ('email-enable-email-service', '0', true, 'Enables or disables email service. 1 - enable, 0 - disable');
INSERT INTO system.setting VALUES ('boundary-print-crs-description', 'Unit: degree<br>Geodetic CRS: WGS 84<br>Datum: World Geodetic System 1984<br>Ellipsoid: WGS 84<br>Prime meridian: Greenwich', true, 'Description of Coordinate Reference System, which will be listed in the legend area.');
INSERT INTO system.setting VALUES ('boundary-print-country-name', '', true, 'Country name for adding at the end of the boundary location description');
INSERT INTO system.setting VALUES ('ot-title-plan-crs-proj4', '', true, 'Custom Coordinate Reference System in Proj4 format, used for generating map image for claim certificate or boundary in OpenTenure. It should match to ot-title-plan-crs-wkt setting. If not provided, WGS84 will be used as default.');
INSERT INTO system.setting VALUES ('boundary-print-produced-by', 'Allodial Land Use Registry', true, 'Name of report producer. In real environment can be Ministry''s name.');
INSERT INTO system.setting VALUES ('email-msg-claim-approve-review-body', 'Dear #{userFirstName},<br /><br />
Permit <a href="#{claimLink}"><b>##{claimNumber}</b></a> has passed review stage with success.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Claim review approval notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-reject-body', 'Dear #{userFirstName},<br /><br />
Permit challenge <a href="#{challengeLink}"><b>##{challengeNumber}</b></a> has been rejected with the following reason:<br /><br />
<i>"#{challengeRejectionReason}"</i><br /> <br />
Permit challenge comments:<br />#{challengeComments}<br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit challenge rejection notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-reject-subject', 'Allodial Land Use Registry - permit challenge rejection', true, 'Permit challenge rejection notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-withdraw-body', 'Dear #{userFirstName},<br /><br />
Permit challenge <a href="#{challengeLink}"><b>##{challengeNumber}</b></a> has been withdrawn by community recorder.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit challenge withdrawal notice body');
INSERT INTO system.setting VALUES ('email-msg-claim-challenge-withdraw-subject', 'Allodial Land Use Registry - claim challenge withdrawal', true, 'Permit withdrawal notice subject');
INSERT INTO system.setting VALUES ('email-msg-claim-reject-body', 'Dear #{userFirstName},<br /><br />
Claim <a href="#{claimLink}"><b>##{claimNumber}</b></a> has been rejected with the following reason:<br /><br />
<i>"#{claimRejectionReason}"</i><br /> <br />
The following comments were recorded on the permit:<br />#{claimComments}<br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit rejection notice body');
INSERT INTO system.setting VALUES ('email-msg-notifiable-subject', 'Allodial Land Use Registry - #{actionToNotify} action on property #{baUnitName}', true, 'Action on Interest subject text');
INSERT INTO system.setting VALUES ('email-msg-reg-body', 'Dear #{userFullName},<p></p>You have registered on Allodial Land Use Registry Web-site. Before you can use your account, it will be reviewed and approved by the Community Technologist.
Upon account approval, you will receive notification message.<p></p>Your user name is<br />#{userName}<p></p><p></p>Regards,<br />Allodial Land Use Registry', true, 'Message text for new user registration on Allodial Land Use Registry Web-site. Sent to user.');
INSERT INTO system.setting VALUES ('email-msg-user-activation-body', 'Dear #{userFullName},<p></p>Your account has been activated.
<p></p>Please use <b>#{userName}</b> to login.<p></p><p></p>Regards,<br />Allodial Land Use Registry', true, 'Message text to notify Community member account activation on the Allodial Land Use Registry Web-site');
INSERT INTO system.setting VALUES ('email-msg-user-activation-subject', 'Allodial Land Use Registry account activation', true, 'Subject text to notify Community member account activation on the Allodial Land Use Registry Web-site');
INSERT INTO system.setting VALUES ('reports_folder_url', '/Reports/community_server', true, 'Folder URL on the reporting server containing reports to display on the menu.');
INSERT INTO system.setting VALUES ('db-utilities-folder', '/usr/bin', true, 'Full path to PostgreSQL utilities (bin) folder (e.g. C:\Program Files\PostgreSQL\9.1\bin). Used for backup/restore implementation of SOLA Web admin application');
INSERT INTO system.setting VALUES ('email-msg-claim-approve-moderation-body', 'Dear #{userFirstName},<br /><br />
Permit <a href="#{claimLink}"><b>##{claimNumber}</b></a> has been approved.<br /><br />
<i>You are receiving this notification as the #{partyRole}</i><br /><br />
Regards,<br />Allodial Land Use Registry', true, 'Permit moderation approval notice body');
INSERT INTO system.setting VALUES ('docs_for_issuing_cert', 'title', true, 'List of document type codes, required to set certificate issued status');
INSERT INTO system.setting VALUES ('community-name', 'Gudang Yadhaykenu Tribal Governing Council - under the auspices of Treaty Council Aboriginal & Torres Strait Islander Corporation', true, 'Community name');
INSERT INTO system.setting VALUES ('system-id', 'GYTGC', true, 'A unique number that identifies the installed SOLA system. This unique number is used in the br that generate unique identifiers.');
INSERT INTO system.setting VALUES ('enable-reports', '1', true, 'Indicates whether reports are enbled or disabled. 1 - enabled, 0 - disabled');
INSERT INTO system.setting VALUES ('report_server_url', 'http://alur.world:8996', true, 'Reporting server URL.');
INSERT INTO system.setting VALUES ('claim_certificate_report_url', '/Allodial/Permit/permit', true, '	URL to the claim certificate report, hosted on the reporting server');
INSERT INTO system.setting VALUES ('ot-community-area', 'POLYGON((142.142931915735 -11.046840940807996,129.70472405098647 -9.8014138045909,111.0719115509848 -24.05813570476607,115.07093498848569 -35.91957329598739,131.2867553009817 -33.802246053652595,143.67933342598326 -43.6029086496965,149.7437865509859 -45.04892000514543,151.98499748848513 -38.817711976743354,157.30238030098508 -26.757023834983716,142.835049129933 -11.5705932332202,143.631557919 -11.578665417405901,143.634304501031 -11.530228822698207,143.62881133697 -11.497933115984491,143.62606475494 -11.430638510516104,143.62606475494 -11.398331416637888,143.62606475494 -11.357942385253194,143.6233181729 -11.336399228509093,143.62057159087 -11.309467999092796,143.62057159087 -11.282534237801606,143.62057159087 -11.247516572367608,143.62057159087 -11.2205770094546,143.6233181729 -11.188246217293997,143.6233181729 -11.169384921316299,143.6233181729 -11.158606487305699,143.62606475494 -11.139743265569722,143.6233181729 -11.115488755187497,143.62057159087 -11.083146270488893,143.6233181729 -11.07236464695399,143.62057159087 -11.0386695160442,143.62057159087 -10.968571272706486,143.615078426809 -10.909244384897606,143.613705135789 -10.828325010781795,143.615078426809 -10.762224628511607,143.612331844779 -10.586786237916995,142.59884307524 -10.590835954687707,142.515072323292 -10.590835954687707,142.424714066011 -10.662962549147911,142.329731680383 -10.70202465085101,142.318058706747 -10.745877114939903,142.300838924851 -10.786508090780892,142.281612850639 -10.806742811814097,142.254147030326 -10.822929606692389,142.230114437558 -10.843161870812608,142.197842098681 -10.857997994971692,142.162136532277 -10.883622291556518,142.148403622116 -10.901153435849793,142.138790585014 -10.9078959086771,142.131924129934 -10.921380395533697,142.125057674854 -10.936212623805398,142.121624447318 -10.948347531534688,142.114521957857 -10.957111322404604,142.100102402191 -10.97362699193669,142.098385788428 -10.994860067677289,142.142931915735 -11.046840940807996))', true, 'Open Tenure community area where parcels can be claimed');
INSERT INTO system.setting VALUES ('boundary_certificate_report_url', '/Allodial/Ownership/certificate', true, 'URL to boundary certificate report hosted on the JasperServer reporting server');
INSERT INTO system.setting VALUES ('cs_server_url', 'http://alur.world:8080', true, 'This setting is used for Docker or similar environments where Community Server sometimes cannot be located by the Reports Server for generating parcel map, used in Claims certificate. The URL should be without ending "/", e.g. http://server:8080. If this setting is empty, Community Server address will be defined automatically.');

ALTER TABLE opentenure.administrative_boundary ADD COLUMN authority_code character varying(20);

DELETE FROM system.config_map_layer_metadata;
INSERT INTO system.config_map_layer_metadata VALUES ('adminBoundaries', 'transparent', 'true', false);
INSERT INTO system.config_map_layer_metadata VALUES ('adminBoundaries', 'LEGEND_OPTIONS', 'fontSize:12', false);
INSERT INTO system.config_map_layer_metadata VALUES ('claims', 'transparent', 'true', false);
INSERT INTO system.config_map_layer_metadata VALUES ('claims', 'LEGEND_OPTIONS', 'fontSize:12', false);
INSERT INTO system.config_map_layer_metadata VALUES ('parcels', 'transparent', 'true', false);
INSERT INTO system.config_map_layer_metadata VALUES ('parcels', 'LEGEND_OPTIONS', 'fontSize:12', false);
INSERT INTO system.config_map_layer_metadata VALUES ('aiatsis-map', 'transparent', 'false', false);
INSERT INTO system.config_map_layer_metadata VALUES ('aiatsis-map', 'LEGEND_OPTIONS', 'fontSize:12', false);
INSERT INTO system.config_map_layer_metadata VALUES ('Native Title Determinations', 'transparent', 'true', false);
INSERT INTO system.config_map_layer_metadata VALUES ('Native Title Determinations', 'LEGEND_OPTIONS', 'fontSize:12', false);

DELETE FROM system.config_map_layer;
INSERT INTO system.config_map_layer VALUES ('adminBoundaries', 'Community Areas::::::::::::::::::::::::::::::::::::::::::::First Nations', 'wms', true, false, 11, '', 'http://alur.world:8985/geoserver/opentenure/wms', 'opentenure:boundaries', '1.1.1', 'image/png', '', '', NULL, NULL, '', '', '', false, false, true);
INSERT INTO system.config_map_layer VALUES ('claims', 'Claims::::::::::::::::::::::::::::::::::::::::::::Registry Recordings', 'wms', true, false, 13, '', 'http://alur.world:8985/geoserver/opentenure/wms', 'opentenure:claims', '1.1.1', 'image/png', '', '', NULL, NULL, '', '', '', false, false, true);
INSERT INTO system.config_map_layer VALUES ('parcels', 'Parcels::::::::::::::::::::::::::::::::::::::::::::Parcels', 'wms', true, true, 9, '', 'http://alur.world:8985/geoserver/opentenure/wms', 'opentenure:parcels', '1.1.1', 'image/png', '', '', NULL, NULL, '', '', '', false, false, true);
INSERT INTO system.config_map_layer VALUES ('aiatsis-map', 'AIATSIS Map::::::::::::::::::::::::::::::::::::::::::::AIATSIS Map', 'wms', true, true, 10, '', 'http://103.230.173.42:8085/geoserver/opentenure/wms', 'opentenure:aiatsis-map', '1.1.0', 'image/png', '', '', NULL, NULL, '', '', '', false, false, true);
INSERT INTO system.config_map_layer VALUES ('Native Title Determinations', 'Native Title Determinations::::::::::::::::::::::::::::::::::::::::::::Native Title Determinations', 'wms', true, false, 8, '', 'http://alur.world:8985/geoserver/opentenure/wms', 'opentenure:native-title-determinations', '1.1', 'image/png', '', '', NULL, NULL, '', '', '', false, false, true);

-- FUNCTION: opentenure.create_claim_seq(character varying, character varying)

-- DROP FUNCTION opentenure.create_claim_seq(character varying, character varying);

CREATE OR REPLACE FUNCTION opentenure.create_claim_seq(
	_seq character varying,
	_bdy_name character varying)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
   _schema character varying := 'opentenure';
   _fullname character varying := format('%I.%I', COALESCE(_schema,current_schema),_seq);
   _relkind "char" := (SELECT c.relkind
                       FROM   pg_namespace n
                       JOIN   pg_class c ON c.relnamespace = n.oid
                       WHERE  n.nspname = COALESCE(_schema, current_schema)
                       AND    c.relname = _seq);
  result_no integer := 0;
  seq_comment character varying := 'claim nr sequence for the ' || _bdy_name || ' administrative_boundary (First Nation)';
BEGIN
   IF _relkind IS NULL THEN   -- name is free
      EXECUTE 'CREATE SEQUENCE IF NOT EXISTS ' || LOWER(_fullname) || ' START 1';
      RAISE NOTICE 'New sequence % created.', LOWER(_fullname);
	  EXECUTE 'COMMENT ON SEQUENCE ' || LOWER(_fullname) || ' IS ' || quote_literal(seq_comment);
      RAISE NOTICE 'Sequence comment % added.', LOWER(_fullname);
	  result_no = 1;
   ELSE
      RAISE EXCEPTION 'A(n) "%" named % already exists.'
      -- Table-like objects in pg 11:
      -- www.postgresql.org/docs/current/static/catalog-pg-class.html
         , CASE _relkind WHEN 'r' THEN 'ordinary table'
                         WHEN 'i' THEN 'index'
                      -- WHEN 'S' THEN 'sequence'  -- impossible here
                         WHEN 'v' THEN 'view'
                         WHEN 'm' THEN 'materialized view'
                         WHEN 'c' THEN 'composite type'
                         WHEN 't' THEN 'TOAST table'
                         WHEN 'p' THEN 'partitioned table'
                         WHEN 'I' THEN 'partitioned index'
                         WHEN 'f' THEN 'foreign table'
                         ELSE 'unknown object' END
         , LOWER(_fullname);
		 result_no = 0;
   END IF;
   RETURN result_no;
END
$BODY$;

ALTER FUNCTION opentenure.create_claim_seq(character varying, character varying)
    OWNER TO postgres;

COMMENT ON FUNCTION opentenure.create_claim_seq(character varying, character varying)
    IS 'Create claim nr sequence for claims associated with an administrative_boundary First Nation) if name is free.
RAISE NOTICE on successful creation.
RAISE WARNING if it already exists.
RAISE EXCEPTION if it already exists and current user lacks USAGE privilege.
RAISE EXCEPTION if object of a different kind occupies the name.
$1 _seq    .. sequence name
$2 _bdy_name  .. name of boundary (First Nation) associated with claim';

-- FUNCTION: opentenure.generate_recording_nr(character varying)

-- DROP FUNCTION opentenure.generate_recording_nr(character varying);

CREATE OR REPLACE FUNCTION opentenure.generate_recording_nr(
	boundary_id character varying)
    RETURNS character varying
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  _schema character varying := 'opentenure.';
  seq_prefix character varying;
  seq_suffix character varying := '_nr_seq';
  seq_fullname character varying;
  string_format character varying := '0000';
BEGIN
   EXECUTE format('SELECT authority_code FROM opentenure.administrative_boundary'
				  ' WHERE id = $1')
				  INTO STRICT seq_prefix
				  USING boundary_id;
	seq_fullname := _schema || LOWER(seq_prefix) || seq_suffix;
	RETURN UPPER(seq_prefix) || trim(to_char(nextval(seq_fullname), string_format));
END
$BODY$;

ALTER FUNCTION opentenure.generate_recording_nr(character varying)
    OWNER TO postgres;

COMMENT ON FUNCTION opentenure.generate_recording_nr(character varying)
    IS 'Generates (recording) nr value with First Nation code as prefix and a First Nation based sequence.';
