--商品主图
CREATE TABLE dsm_good_picture(
    id INT PRIMARY KEY, --主键id
    url VARCHAR(50), --图片地址
    good_id INT NOT NULL --商品id
    is_primary TINYINT NOT NULL --是否主图
    CONSTRAINT category_fk FOREIGN KEY(good_id) REFERENCES dsm_good(id)
)