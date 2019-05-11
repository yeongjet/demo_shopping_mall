CREATE TABLE dsm_good_attr(
    id INT NOT NULL PRIMARY KEY,
    attr_name_id INT NOT NULL,
    attr_value_id INT NOT NULL,
    sku_id INT NOT NULL,
    CONSTRAINT attr_name_fk FOREIGN KEY(attr_name_id) REFERENCES dsm_good_attr_name(id),
    CONSTRAINT attr_value_fk FOREIGN KEY(attr_value_id) REFERENCES dsm_good_attr_value(id)
)