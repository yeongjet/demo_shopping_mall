--商品表
CREATE TABLE dsm_good(
    id INT PRIMARY KEY, --主键id
    name VARCHAR(50), --名称
    category_id INT NOT NULL --类别id
    price NUMERIC(15,2), --列表价(在商品展示列表显示的价格)
    create_time TIMESTAMP --创建时间
    update_time TIMESTAMP --更新时间
    CONSTRAINT category_fk FOREIGN KEY(category_id) REFERENCES dsm_good_category(id)
)