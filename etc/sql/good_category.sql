CREATE TABLE dsm_good_category(
    id INT NOT NULL PRIMARY KEY, --类别id
    name varchar(20), --类别名称
    is_parent TINYINT NOT NULL,  --是否父级
    parent_id INT, --父类别id
    create_time TIMESTAMP --创建时间
    CONSTRAINT parent_category_fk FOREIGN KEY(parent_id) REFERENCES dsm_good_category(id)
)