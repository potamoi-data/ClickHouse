DROP TABLE IF EXISTS test.test_00740;
DROP TABLE IF EXISTS test.test_view_00740;
DROP TABLE IF EXISTS test.test_nested_view_00740;
DROP TABLE IF EXISTS test.test_joined_view_00740;

USE test;
CREATE VIEW test_00740 AS SELECT 1 AS N;
CREATE VIEW test_view_00740 AS SELECT * FROM test_00740;
CREATE VIEW test_nested_view_00740 AS SELECT * FROM (SELECT * FROM test_00740);
CREATE VIEW test_joined_view_00740 AS SELECT *, N AS x FROM test_00740 ANY LEFT JOIN test_00740 USING N;

SELECT * FROM test_view_00740;
SELECT * FROM test_nested_view_00740;
SELECT * FROM test_joined_view_00740;

USE default;
SELECT * FROM test.test_view_00740;
SELECT * FROM test.test_nested_view_00740;
SELECT * FROM test.test_joined_view_00740;

DROP TABLE IF EXISTS test.test_00740;
DROP TABLE IF EXISTS test.test_view_00740;
DROP TABLE IF EXISTS test.test_nested_view_00740;