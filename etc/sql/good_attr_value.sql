CREATE TABLE dsm_good_attr (
    id INT NOT NULL PRIMARY KEY, --属性值id
    name varchar(20) NOT NULL, --属性值
    attr_name_id INT NOT NULL, --对应属性名id
    CONSTRAINT attr_name_fk FOREIGN KEY(attr_name_id) REFERENCES dsm_good_attr_name(id),
    CONSTRAINT category_fk FOREIGN KEY(category_id) REFERENCES dsm_good_category(id)
)