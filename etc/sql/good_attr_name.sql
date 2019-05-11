CREATE TABLE dsm_good_attr_name (
    id INT PRIMARY KEY, --属性名id
    name VARCHAR(20), --属性名
    category_id INT PRIMARY KEY --类别id
    create_time TIMESTAMP --创建时间
    CONSTRAINT category_fk FOREIGN KEY(category_id) REFERENCES dsm_good_category(id)
)