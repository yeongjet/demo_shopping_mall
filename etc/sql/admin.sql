--管理员表
CREATE TABLE dsm_admin(
    admin_id INT NOT NULL PRIMARY KEY, --主键id
    username VARCHAR(30) NOT NULL, --用户名
    password VARCHAR(30) NOT NULL, --密码
    acl JSONB, --权限
    create_time TIMESTAMP, --创建时间
    last_login_time TIMESTAMP, --最后一次登录时间
    last_login_ip VARCHAR(10), --最后一次登录ip地址
)

CREATE SEQUENCE dsm_admin_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE dsm_admin_id_seq OWNER TO demo_shopmall;
ALTER TABLE dsm_admin alter column admin_id set default nextval('dsm_admin_id_seq');