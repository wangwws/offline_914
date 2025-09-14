-- 创建works914数据库
create database  if not exists works914;
--创建表
create external table works914.ods_activity_rule(
    id               int    comment '编号',
    activity_id      int    comment '类型',
    activity_type    STRING comment '活动类型',
    condition_amount STRING comment '满减金额',
    condition_num    int    comment '满减件数',
    benefit_amount   STRING comment '优惠金额',
    benefit_discount STRING comment '优惠折扣',
    benefit_level    int    comment '优惠级别'
)
PARTITIONED BY (ds STRING)
STORED AS ORC
LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_offline_v1_ws/ods_activity_rule/'
TBLPROPERTIES (
    'orc.compress' = 'SNAPPY',
    'external.table.purge' = 'true'
);
