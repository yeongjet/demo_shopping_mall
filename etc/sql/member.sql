--用户表
CREATE TABLE dsm_member(
    user_id SERIAL NOT NULL PRIMARY KEY, --主键id
    username VARCHAR(30) NOT NULL, --用户名
    password VARCHAR(30) NOT NULL, --密码
    email VARCHAR(30), --邮箱
    telephone VARCHAR(30), --座机号码
    cellphone VARCHAR(30), --手机号码
    avatar_url VARCHAR(50), --头像地址
    role TINYINT NOT NULL, --角色(买家或卖家)
    create_time TIMESTAMP, --注册时间
    update_time TIMESTAMP, --最后一次更新资料时间
    last_login_time TIMESTAMP, --最后一次登录时间
    last_login_ip VARCHAR(10) --最后一次登录ip地址
)

CREATE SEQUENCE dsm_member_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE dsm_member_id_seq OWNER TO demo_shopmall;
ALTER TABLE dsm_member alter column user_id set default nextval('dsm_member_id_seq');