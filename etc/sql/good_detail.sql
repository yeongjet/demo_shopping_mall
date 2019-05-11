--商品详情
CREATE TABLE dsm_good_detail(
    id INT PRIMARY KEY, --主键id
    url VARCHAR(50), --图片地址
    good_id INT NOT NULL --类别id
    is_primary TINYINT NOT NULL --是否主图
    create_time TIMESTAMP --创建时间
    update_time TIMESTAMP --更新时间
    CONSTRAINT category_fk FOREIGN KEY(good_id) REFERENCES dsm_good(id)
)