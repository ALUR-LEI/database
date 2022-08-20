INSERT INTO system.version SELECT '2006a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '2006a');

DELETE FROM opentenure.administrative_boundary_type WHERE EXISTS (SELECT level FROM opentenure.administrative_boundary_type WHERE level<3);

INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('significant', 'Significant Area::::::::::::::::::::::::::::::::::::', 'c', 1, '');
INSERT INTO opentenure.administrative_boundary_type (code, display_value, status, level, description) VALUES ('interest', 'Area of Interest::::::::::::::::::::::::::::::::::::', 'c', 2, '');
