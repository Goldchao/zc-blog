DELETE FROM sys_config WHERE sys_key IN("BAIDU_PUSH_URL");
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('BAIDU_PUSH_URL', 'http://data.zz.baidu.com/urls?site=www.nbclass.com&token=asdasd324234234', '1', '百度推送地址');
DROP TABLE
IF EXISTS `tmp`;

CREATE TABLE tmp AS SELECT
	id AS id
FROM
	permission
WHERE
	url = '/articles';

INSERT INTO `permission` (
	permission_id,
	NAME,
	description,
	url,
	perms,
	parent_id,
	type,
	order_num,
	icon,
	STATUS,
	create_time,
	update_time
)
VALUES
	(
		FLOOR(+ RAND() * 10000000000000000),
		'批量推送',
		'批量推送百度',
		'/article/batch/push',
		'article:batchPush',
		(
			SELECT
				id
			FROM
				tmp
		),
		2,
		0,
		'',
		1,
		now(),
		now()
	);

DROP TABLE `tmp`;

ALTER TABLE biz_link ADD img VARCHAR(255) NULL comment "友链图片地址" AFTER description  ;