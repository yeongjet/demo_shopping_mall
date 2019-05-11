CREATE TABLE dsm_good_sku(
    id INT NOT NULL PRIMARY KEY, --主键id
    name VARCHAR(50), --名称
    good_id INT NOT NULL, --产品id
    buy_price NUMERIC(15,2), --进货价
    orig_price NUMERIC(15,2), --原价
    sale_price NUMERIC(15,2), --售价
    quantity INT NOT NULL, --数量
    CONSTRAINT good_sku_fk FOREIGN KEY(good_id) REFERENCES dsm_good(id)
)