/*
* MySQLの初期設定
* ユーザ作成および権限付与を行う。
*/
-- データベース確認⇒demoデータベースはあった
SHOW databases;

-- demoデータベースを利用
USE demo;

-- ユーザの確認
SELECT user, host FROM mysql.user;

-- ユーザの新規作成⇒application.propertiesで設定してた接続ユーザ
CREATE USER 'app'@'%' IDENTIFIED BY 'app';

-- 権限の確認
SHOW GRANTS FOR 'app'@'%';

-- 権限の付与
GRANT ALL ON demo.* TO app`@`%;
FLUSH PRIVILEGES;

-- 権限の確認
SHOW GRANTS FOR 'app'@'%';