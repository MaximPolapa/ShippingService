USE shop_1;
alter table holiday ADD shop_id BIGINT NOT NULL;
alter table holiday ADD foreign key (shop_id) references shop(id) on delete cascade;

alter table shop DROP foreign key shop_ibfk_2;
alter table shop DROP COLUMN holiday_id;