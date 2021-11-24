DROP DATABASE IF EXISTS over_c_er;
CREATE DATABASE over_c_er;
DROP DATABASE IF EXISTS over_c_er_test;
CREATE DATABASE over_c_er_test;

\c over_c_er;

\i schema.sql;
\i base_data.sql;

\c over_c_er_test;

\i schema.sql;
