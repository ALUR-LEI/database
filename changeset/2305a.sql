INSERT INTO system.version 
  SELECT '2305a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '2305a');

INSERT INTO system.approle(code, display_value, status, description)
	VALUES ('Investor', 'Investor', 'c', 'Investor role for read-only access');
UPDATE system.approle SET display_value = 'First Nation' WHERE code = 'AccessCS';
UPDATE system.appgroup SET name = 'First Nation members', description = 'First Nation memebers, who can view claims' WHERE name = 'Community members';
UPDATE system.appgroup SET name = 'First Nation recorders', description = 'First Nation recorders, who can submit claims' WHERE name = 'Community recorders';
INSERT INTO system.appgroup (id, name, description) VALUES ('Investors', 'Investors', 'Investors group');
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('Investor', 'Investors');
ALTER TABLE system.appuser
    ADD COLUMN admin_boundary_id character varying(40);
ALTER TABLE system.appuser_historic
    ADD COLUMN admin_boundary_id character varying(40);
	
COMMENT ON COLUMN system.appuser.admin_boundary_id
    IS 'Administrativy boundary reference to conrol claims access';
ALTER TABLE system.appuser
    ADD CONSTRAINT fk_admin_boundary_appuser FOREIGN KEY (admin_boundary_id)
    REFERENCES opentenure.administrative_boundary (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
    NOT VALID;

ALTER TABLE opentenure.party
    ADD COLUMN admin_boundary_id character varying(40);
ALTER TABLE opentenure.party_historic
    ADD COLUMN admin_boundary_id character varying(40);
	
COMMENT ON COLUMN opentenure.party.admin_boundary_id
    IS 'Administrativy boundary reference';
ALTER TABLE opentenure.party
    ADD CONSTRAINT fk_admin_boundary_party FOREIGN KEY (admin_boundary_id)
    REFERENCES opentenure.administrative_boundary (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
    NOT VALID;