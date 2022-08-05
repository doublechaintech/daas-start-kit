
-- BUILD WITH MODEL TIME 700101T0800
-- Turn off safe mode
SET SQL_SAFE_UPDATES = 0;


drop database  if exists webaccess;
create database webaccess;
-- alter  database webaccess  character set = utf8mb4  collate = utf8mb4_unicode_ci; -- 支持表情符号
use webaccess;
set SESSION sql_mode='';

drop table  if exists platform_data;
create table platform_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(32)                              comment '名称',
	create_time                   	datetime                                 comment '创建于',
	last_update_time              	datetime                                 comment '更新于',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "平台";
-- primary key will be created later for better import performance

drop table  if exists site_data;
create table site_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	location                      	varchar(512)                             comment '位置',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "网站";
-- primary key will be created later for better import performance

drop table  if exists referral_domain_data;
create table referral_domain_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	location                      	varchar(512)                             comment '位置',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "推荐领域";
-- primary key will be created later for better import performance

drop table  if exists web_user_data;
create table web_user_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "网络用户";
-- primary key will be created later for better import performance

drop table  if exists access_record_data;
create table access_record_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	user                          	varchar(48)                              comment '用户',
	referral_domain               	varchar(48)                              comment '推荐领域',
	location                      	varchar(1000)                            comment '位置',
	referral_url                  	varchar(1000)                            comment '推荐的Url',
	destination_url               	varchar(1000)                            comment '目标Url',
	create_time                   	datetime                                 comment '创建于',
	platform                      	varchar(48)                              comment '平台',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "访问记录";
-- primary key will be created later for better import performance

drop table  if exists mobile_app_data;
create table mobile_app_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(20)                              comment '名称',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "手机应用程序";
-- primary key will be created later for better import performance

drop table  if exists page_data;
create table page_data (
	id                            	varchar(48)          not null            comment 'ID',
	page_title                    	varchar(10)                              comment '页面标题',
	link_to_url                   	varchar(512)                             comment '链接网址',
	page_type                     	varchar(48)                              comment '页面类型',
	display_order                 	int                                      comment '顺序',
	mobile_app                    	varchar(48)                              comment '手机应用程序',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "页面";
-- primary key will be created later for better import performance

drop table  if exists page_type_data;
create table page_type_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(40)                              comment '名称',
	code                          	varchar(40)                              comment '编码',
	mobile_app                    	varchar(48)                              comment '手机应用程序',
	footer_tab                    	tinyint                                  comment '页脚选项卡',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "页面类型";
-- primary key will be created later for better import performance

drop table  if exists slide_data;
create table slide_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(40)                              comment '名称',
	display_order                 	int                                      comment '顺序',
	image_url                     	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '图片链接',
	video_url                     	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '视频网址',
	link_to_url                   	varchar(512)                             comment '链接网址',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "轮播内容";
-- primary key will be created later for better import performance

drop table  if exists ui_action_data;
create table ui_action_data (
	id                            	varchar(48)          not null            comment 'ID',
	code                          	varchar(40)                              comment '编码',
	icon                          	varchar(512)                             comment '图标',
	title                         	varchar(40)                              comment '标题',
	display_order                 	int                                      comment '顺序',
	brief                         	varchar(200)                             comment '短暂的',
	image_url                     	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '图片链接',
	link_to_url                   	varchar(512)                             comment '链接网址',
	extra_data                    	longtext                                 comment '额外的数据',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "用户界面操作";
-- primary key will be created later for better import performance

drop table  if exists section_data;
create table section_data (
	id                            	varchar(48)          not null            comment 'ID',
	title                         	varchar(40)                              comment '标题',
	brief                         	varchar(200)                             comment '短暂的',
	icon                          	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '图标',
	display_order                 	int                                      comment '顺序',
	view_group                    	varchar(40)                              comment '视图组',
	link_to_url                   	varchar(512)                             comment '链接网址',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "板块";
-- primary key will be created later for better import performance

drop table  if exists user_domain_data;
create table user_domain_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(16)                              comment '名称',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "用户域";
-- primary key will be created later for better import performance

drop table  if exists user_allow_list_data;
create table user_allow_list_data (
	id                            	varchar(48)          not null            comment 'ID',
	user_identity                 	varchar(40)                              comment '用户标识',
	user_special_functions        	varchar(200)                             comment '用户特权',
	domain                        	varchar(48)                              comment '域',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "用户权限列表";
-- primary key will be created later for better import performance

drop table  if exists sec_user_data;
create table sec_user_data (
	id                            	varchar(48)          not null            comment 'ID',
	login                         	varchar(256)                             comment '登录名',
	mobile                        	varchar(11)                              comment '手机',
	email                         	varchar(256)                             comment '邮箱',
	pwd                           	varchar(64)                              comment '密码',
	weixin_openid                 	varchar(128)                             comment '微信openId',
	weixin_appid                  	varchar(128)                             comment '微信应用ID',
	access_token                  	varchar(128)                             comment '访问令牌',
	verification_code             	int                                      comment '验证码',
	verification_code_expire      	datetime                                 comment '验证码有效期',
	last_login_time               	datetime                                 comment '最后登录时间',
	domain                        	varchar(48)                              comment '域',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "安全用户";
-- primary key will be created later for better import performance

drop table  if exists user_app_data;
create table user_app_data (
	id                            	varchar(48)          not null            comment 'ID',
	title                         	varchar(300)                             comment '标题',
	sec_user                      	varchar(48)                              comment '系统用户',
	app_icon                      	varchar(20)                              comment '图标',
	full_access                   	tinyint                                  comment '完全访问',
	permission                    	varchar(20)                              comment '权限',
	app_type                      	varchar(100)                             comment '对象类型',
	app_id                        	varchar(100)                             comment '对象ID',
	ctx_type                      	varchar(100)                             comment '上下文类型',
	ctx_id                        	varchar(100)                             comment '上下文类型',
	location                      	varchar(200)                             comment '位置',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "应用";
-- primary key will be created later for better import performance

drop table  if exists quick_link_data;
create table quick_link_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(200)                             comment '名称',
	icon                          	varchar(200)                             comment '图标',
	image_path                    	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '图片路径',
	link_target                   	varchar(200)                             comment '链接的目标',
	create_time                   	datetime                                 comment '创建于',
	app                           	varchar(48)                              comment '应用程序',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "快速链接";
-- primary key will be created later for better import performance

drop table  if exists list_access_data;
create table list_access_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(200)                             comment '名称',
	internal_name                 	varchar(200)                             comment '内部名称',
	read_permission               	tinyint                                  comment '可读',
	create_permission             	tinyint                                  comment '可创建',
	delete_permission             	tinyint                                  comment '可删除',
	update_permission             	tinyint                                  comment '可更新',
	execution_permission          	tinyint                                  comment '可执行',
	app                           	varchar(48)                              comment '应用',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "列表访问控制";
-- primary key will be created later for better import performance

drop table  if exists login_history_data;
create table login_history_data (
	id                            	varchar(48)          not null            comment 'ID',
	login_time                    	datetime                                 comment '登录时间',
	from_ip                       	varchar(44)                              comment '来自IP',
	description                   	varchar(16)                              comment '描述',
	sec_user                      	varchar(48)                              comment '系统用户',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "登录历史";
-- primary key will be created later for better import performance

drop table  if exists candidate_container_data;
create table candidate_container_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(28)                              comment '名称',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "候选容器";
-- primary key will be created later for better import performance

drop table  if exists candidate_element_data;
create table candidate_element_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(200)                             comment '标题',
	type                          	varchar(200)                             comment '类型',
	image                         	varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci                     comment '图像',
	container                     	varchar(48)                              comment '容器',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "候选人元素";
-- primary key will be created later for better import performance

drop table  if exists wechat_workapp_identity_data;
create table wechat_workapp_identity_data (
	id                            	varchar(48)          not null            comment 'ID',
	corp_id                       	varchar(100)                             comment '公司',
	user_id                       	varchar(100)                             comment '用户',
	sec_user                      	varchar(48)                              comment '系统用户',
	create_time                   	datetime                                 comment '创建时间',
	last_login_time               	datetime                                 comment '最后登录时间',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "企业微信认证";
-- primary key will be created later for better import performance

drop table  if exists wechat_miniapp_identity_data;
create table wechat_miniapp_identity_data (
	id                            	varchar(48)          not null            comment 'ID',
	open_id                       	varchar(128)                             comment 'openId',
	app_id                        	varchar(128)                             comment '应用ID',
	union_id                      	varchar(128)                             comment 'UnionID',
	sec_user                      	varchar(48)                              comment '系统用户',
	create_time                   	datetime                                 comment '创建时间',
	last_login_time               	datetime                                 comment '最后登录时间',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "微信小程序认证";
-- primary key will be created later for better import performance

drop table  if exists key_pair_identity_data;
create table key_pair_identity_data (
	id                            	varchar(48)          not null            comment 'ID',
	public_key                    	longtext                                 comment '公钥',
	key_type                      	varchar(48)                              comment '秘钥类型',
	sec_user                      	varchar(48)                              comment '系统用户',
	create_time                   	datetime                                 comment '创建时间',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "秘钥对认证";
-- primary key will be created later for better import performance

drop table  if exists public_key_type_data;
create table public_key_type_data (
	id                            	varchar(48)          not null            comment 'ID',
	key_alg                       	varchar(10)                              comment '加密算法',
	sign_alg                      	varchar(50)                              comment '签名算法',
	domain                        	varchar(48)                              comment '域',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "公钥类型";
-- primary key will be created later for better import performance

drop table  if exists tree_node_data;
create table tree_node_data (
	id                            	varchar(48)          not null            comment 'ID',
	node_id                       	varchar(40)                              comment '节点ID',
	node_type                     	varchar(32)                              comment '节点类型',
	left_value                    	int                                      comment '左值',
	right_value                   	int                                      comment '右值',
	version                       	int                                      comment '版本'

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = "节点";
-- primary key will be created later for better import performance




insert into platform_data values
	('P000001','网站流量分析系统','2021-06-26 14:34:32','2021-06-27 19:37:41','1');

insert into site_data values
	('S000001','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-06-30 16:06:17','1'),
	('S000002','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-03 04:09:36','1'),
	('S000003','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-07-01 09:41:48','1'),
	('S000004','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-06-20 04:52:48','1');

insert into referral_domain_data values
	('RD000001','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-07-04 00:44:04','1'),
	('RD000002','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-01 16:26:17','1'),
	('RD000003','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-07-07 21:27:29','1'),
	('RD000004','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-01 03:00:46','1');

insert into web_user_data values
	('WU000001','freshchain演示项目','P000001','2021-06-21 23:35:54','1'),
	('WU000002','retailchain演示项目','P000001','2021-06-22 18:55:34','1'),
	('WU000003','freshchain演示项目','P000001','2021-07-03 09:54:12','1'),
	('WU000004','retailchain演示项目','P000001','2021-06-21 00:05:22','1');

insert into access_record_data values
	('AR000001','访问记录','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-04 22:44:33','P000001','1'),
	('AR000002','访问记录0002','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-30 19:18:03','P000001','1'),
	('AR000003','访问记录0003','WU000001','RD000001','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-23 04:57:05','P000001','1'),
	('AR000004','访问记录0004','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-03 15:28:36','P000001','1'),
	('AR000005','访问记录0005','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-01 04:31:06','P000001','1'),
	('AR000006','访问记录0006','WU000002','RD000002','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-08 16:34:10','P000001','1'),
	('AR000007','访问记录0007','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-25 10:01:09','P000001','1'),
	('AR000008','访问记录0008','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-03 16:40:27','P000001','1'),
	('AR000009','访问记录0009','WU000003','RD000003','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-08 23:39:43','P000001','1'),
	('AR000010','访问记录0010','WU000003','RD000003','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-11 07:46:33','P000001','1'),
	('AR000011','访问记录0011','WU000003','RD000003','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-26 18:07:41','P000001','1'),
	('AR000012','访问记录0012','WU000003','RD000003','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-28 17:19:51','P000001','1'),
	('AR000013','访问记录0013','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-20 14:00:40','P000001','1'),
	('AR000014','访问记录0014','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-07 23:40:24','P000001','1'),
	('AR000015','访问记录0015','WU000004','RD000004','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-28 16:11:24','P000001','1'),
	('AR000016','访问记录0016','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-03 23:11:33','P000001','1');

insert into mobile_app_data values
	('MA000001','移动端配置','1');

insert into page_data values
	('P000001','首页','首页','home','1','MA000001','1'),
	('P000002','首页0002','首页0002','home','2','MA000001','1'),
	('P000003','首页0003','首页0003','home','3','MA000001','1'),
	('P000004','首页0004','首页0004','me','1','MA000001','1'),
	('P000005','首页0005','首页0005','me','2','MA000001','1'),
	('P000006','首页0006','首页0006','me','3','MA000001','1'),
	('P000007','首页0007','首页0007','generic-page','1','MA000001','1'),
	('P000008','首页0008','首页0008','generic-page','2','MA000001','1'),
	('P000009','首页0009','首页0009','listof-page','3','MA000001','1'),
	('P000010','首页0010','首页0010','listof-page','1','MA000001','1'),
	('P000011','首页0011','首页0011','listof-page','2','MA000001','1'),
	('P000012','首页0012','首页0012','service-center','3','MA000001','1'),
	('P000013','首页0013','首页0013','service-center','1','MA000001','1'),
	('P000014','首页0014','首页0014','service-center','2','MA000001','1'),
	('P000015','首页0015','首页0015','simple','3','MA000001','1'),
	('P000016','首页0016','首页0016','simple','1','MA000001','1');

insert into page_type_data values
	('home','首页','home','MA000001','1','1'),
	('me','我的','me','MA000001','1','1'),
	('generic-page','Generic Page','generic-page','MA000001','1','1'),
	('listof-page','Listof Page','listof-page','MA000001','1','1'),
	('service-center','功能大厅','service-center','MA000001','1','1'),
	('simple','普通','simple','MA000001','1','1');

insert into slide_data values
	('S000001','首页Focus的内容','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000001','1'),
	('S000002','首页Focus的内容0002','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000001','1'),
	('S000003','首页Focus的内容0003','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000001','1'),
	('S000004','首页Focus的内容0004','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000001','1'),
	('S000005','首页Focus的内容0005','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000002','1'),
	('S000006','首页Focus的内容0006','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000002','1'),
	('S000007','首页Focus的内容0007','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000002','1'),
	('S000008','首页Focus的内容0008','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000002','1'),
	('S000009','首页Focus的内容0009','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000003','1'),
	('S000010','首页Focus的内容0010','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000003','1'),
	('S000011','首页Focus的内容0011','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000003','1'),
	('S000012','首页Focus的内容0012','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000003','1'),
	('S000013','首页Focus的内容0013','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000004','1'),
	('S000014','首页Focus的内容0014','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000004','1'),
	('S000015','首页Focus的内容0015','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000004','1'),
	('S000016','首页Focus的内容0016','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000004','1'),
	('S000017','首页Focus的内容0017','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000005','1'),
	('S000018','首页Focus的内容0018','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000005','1'),
	('S000019','首页Focus的内容0019','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000005','1'),
	('S000020','首页Focus的内容0020','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000005','1'),
	('S000021','首页Focus的内容0021','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000006','1'),
	('S000022','首页Focus的内容0022','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000006','1'),
	('S000023','首页Focus的内容0023','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000006','1'),
	('S000024','首页Focus的内容0024','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000006','1'),
	('S000025','首页Focus的内容0025','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000007','1'),
	('S000026','首页Focus的内容0026','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000007','1'),
	('S000027','首页Focus的内容0027','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000007','1'),
	('S000028','首页Focus的内容0028','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000007','1'),
	('S000029','首页Focus的内容0029','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000008','1'),
	('S000030','首页Focus的内容0030','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000008','1'),
	('S000031','首页Focus的内容0031','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000008','1'),
	('S000032','首页Focus的内容0032','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000008','1'),
	('S000033','首页Focus的内容0033','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000009','1'),
	('S000034','首页Focus的内容0034','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000009','1'),
	('S000035','首页Focus的内容0035','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000009','1'),
	('S000036','首页Focus的内容0036','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000009','1'),
	('S000037','首页Focus的内容0037','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000010','1'),
	('S000038','首页Focus的内容0038','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000010','1'),
	('S000039','首页Focus的内容0039','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000010','1'),
	('S000040','首页Focus的内容0040','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000010','1'),
	('S000041','首页Focus的内容0041','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000011','1'),
	('S000042','首页Focus的内容0042','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000011','1'),
	('S000043','首页Focus的内容0043','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000011','1'),
	('S000044','首页Focus的内容0044','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000011','1'),
	('S000045','首页Focus的内容0045','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000012','1'),
	('S000046','首页Focus的内容0046','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000012','1'),
	('S000047','首页Focus的内容0047','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000012','1'),
	('S000048','首页Focus的内容0048','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000012','1'),
	('S000049','首页Focus的内容0049','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000013','1'),
	('S000050','首页Focus的内容0050','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000013','1'),
	('S000051','首页Focus的内容0051','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000013','1'),
	('S000052','首页Focus的内容0052','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000013','1'),
	('S000053','首页Focus的内容0053','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000014','1'),
	('S000054','首页Focus的内容0054','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000014','1'),
	('S000055','首页Focus的内容0055','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000014','1'),
	('S000056','首页Focus的内容0056','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000014','1'),
	('S000057','首页Focus的内容0057','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000015','1'),
	('S000058','首页Focus的内容0058','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000015','1'),
	('S000059','首页Focus的内容0059','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000015','1'),
	('S000060','首页Focus的内容0060','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000015','1'),
	('S000061','首页Focus的内容0061','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000016','1'),
	('S000062','首页Focus的内容0062','2','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000016','1'),
	('S000063','首页Focus的内容0063','3','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000016','1'),
	('S000064','首页Focus的内容0064','1','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000016','1');

insert into ui_action_data values
	('UA000001','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000001','1'),
	('UA000002','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0002','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000001','1'),
	('UA000003','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0003','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000001','1'),
	('UA000004','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0004','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000001','1'),
	('UA000005','submit','icon_edit','提交','2','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0005','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000002','1'),
	('UA000006','share','icon_share','分享','3','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0006','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000002','1'),
	('UA000007','view','icon_eye','查看','1','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0007','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000002','1'),
	('UA000008','more','icon_more','更多','2','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0008','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000002','1'),
	('UA000009','submit','icon_edit','提交','3','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0009','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000003','1'),
	('UA000010','share','icon_share','分享','1','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0010','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000003','1'),
	('UA000011','view','icon_eye','查看','2','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0011','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000003','1'),
	('UA000012','more','icon_more','更多','3','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0012','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000003','1'),
	('UA000013','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0013','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000004','1'),
	('UA000014','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0014','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000004','1'),
	('UA000015','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0015','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000004','1'),
	('UA000016','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0016','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000004','1'),
	('UA000017','submit','icon_edit','提交','2','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0017','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000005','1'),
	('UA000018','share','icon_share','分享','3','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0018','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000005','1'),
	('UA000019','view','icon_eye','查看','1','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0019','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000005','1'),
	('UA000020','more','icon_more','更多','2','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0020','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000005','1'),
	('UA000021','submit','icon_edit','提交','3','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0021','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000006','1'),
	('UA000022','share','icon_share','分享','1','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0022','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000006','1'),
	('UA000023','view','icon_eye','查看','2','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0023','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000006','1'),
	('UA000024','more','icon_more','更多','3','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0024','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000006','1'),
	('UA000025','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0025','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000007','1'),
	('UA000026','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0026','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000007','1'),
	('UA000027','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0027','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000007','1'),
	('UA000028','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0028','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000007','1'),
	('UA000029','submit','icon_edit','提交','2','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0029','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000008','1'),
	('UA000030','share','icon_share','分享','3','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0030','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000008','1'),
	('UA000031','view','icon_eye','查看','1','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0031','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000008','1'),
	('UA000032','more','icon_more','更多','2','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0032','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000008','1'),
	('UA000033','submit','icon_edit','提交','3','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0033','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000009','1'),
	('UA000034','share','icon_share','分享','1','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0034','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000009','1'),
	('UA000035','view','icon_eye','查看','2','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0035','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000009','1'),
	('UA000036','more','icon_more','更多','3','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0036','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000009','1'),
	('UA000037','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0037','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000010','1'),
	('UA000038','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0038','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000010','1'),
	('UA000039','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0039','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000010','1'),
	('UA000040','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0040','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000010','1'),
	('UA000041','submit','icon_edit','提交','2','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0041','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000011','1'),
	('UA000042','share','icon_share','分享','3','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0042','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000011','1'),
	('UA000043','view','icon_eye','查看','1','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0043','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000011','1'),
	('UA000044','more','icon_more','更多','2','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0044','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000011','1'),
	('UA000045','submit','icon_edit','提交','3','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0045','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000012','1'),
	('UA000046','share','icon_share','分享','1','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0046','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000012','1'),
	('UA000047','view','icon_eye','查看','2','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0047','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000012','1'),
	('UA000048','more','icon_more','更多','3','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0048','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000012','1'),
	('UA000049','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0049','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000013','1'),
	('UA000050','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0050','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000013','1'),
	('UA000051','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0051','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000013','1'),
	('UA000052','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0052','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000013','1'),
	('UA000053','submit','icon_edit','提交','2','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0053','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000014','1'),
	('UA000054','share','icon_share','分享','3','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0054','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000014','1'),
	('UA000055','view','icon_eye','查看','1','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0055','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000014','1'),
	('UA000056','more','icon_more','更多','2','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0056','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000014','1'),
	('UA000057','submit','icon_edit','提交','3','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0057','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000015','1'),
	('UA000058','share','icon_share','分享','1','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0058','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000015','1'),
	('UA000059','view','icon_eye','查看','2','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0059','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000015','1'),
	('UA000060','more','icon_more','更多','3','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0060','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000015','1'),
	('UA000061','submit','icon_edit','提交','1','Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0061','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000016','1'),
	('UA000062','share','icon_share','分享','2','Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0062','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000016','1'),
	('UA000063','view','icon_eye','查看','3','View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0063','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000016','1'),
	('UA000064','more','icon_more','更多','1','View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0064','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','P000016','1');

insert into section_data values
	('S000001','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0001/400/200/grey/','1','icon_edit','wxappService/section/article/','P000001','1'),
	('S000002','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0002/400/200/grey/','2','icon_share','wxappService/section/article/0002','P000001','1'),
	('S000003','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0003/400/200/grey/','3','icon_eye','wxappService/section/article/0003','P000001','1'),
	('S000004','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0004/400/200/grey/','1','icon_more','wxappService/section/article/0004','P000001','1'),
	('S000005','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0005/400/200/grey/','2','icon_edit','wxappService/section/article/0005','P000002','1'),
	('S000006','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0006/400/200/grey/','3','icon_share','wxappService/section/article/0006','P000002','1'),
	('S000007','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0007/400/200/grey/','1','icon_eye','wxappService/section/article/0007','P000002','1'),
	('S000008','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0008/400/200/grey/','2','icon_more','wxappService/section/article/0008','P000002','1'),
	('S000009','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0009/400/200/grey/','3','icon_edit','wxappService/section/article/0009','P000003','1'),
	('S000010','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0010/400/200/grey/','1','icon_share','wxappService/section/article/0010','P000003','1'),
	('S000011','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0011/400/200/grey/','2','icon_eye','wxappService/section/article/0011','P000003','1'),
	('S000012','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0012/400/200/grey/','3','icon_more','wxappService/section/article/0012','P000003','1'),
	('S000013','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0013/400/200/grey/','1','icon_edit','wxappService/section/article/0013','P000004','1'),
	('S000014','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0014/400/200/grey/','2','icon_share','wxappService/section/article/0014','P000004','1'),
	('S000015','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0015/400/200/grey/','3','icon_eye','wxappService/section/article/0015','P000004','1'),
	('S000016','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0016/400/200/grey/','1','icon_more','wxappService/section/article/0016','P000004','1'),
	('S000017','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0017/400/200/grey/','2','icon_edit','wxappService/section/article/0017','P000005','1'),
	('S000018','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0018/400/200/grey/','3','icon_share','wxappService/section/article/0018','P000005','1'),
	('S000019','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0019/400/200/grey/','1','icon_eye','wxappService/section/article/0019','P000005','1'),
	('S000020','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0020/400/200/grey/','2','icon_more','wxappService/section/article/0020','P000005','1'),
	('S000021','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0021/400/200/grey/','3','icon_edit','wxappService/section/article/0021','P000006','1'),
	('S000022','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0022/400/200/grey/','1','icon_share','wxappService/section/article/0022','P000006','1'),
	('S000023','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0023/400/200/grey/','2','icon_eye','wxappService/section/article/0023','P000006','1'),
	('S000024','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0024/400/200/grey/','3','icon_more','wxappService/section/article/0024','P000006','1'),
	('S000025','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0025/400/200/grey/','1','icon_edit','wxappService/section/article/0025','P000007','1'),
	('S000026','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0026/400/200/grey/','2','icon_share','wxappService/section/article/0026','P000007','1'),
	('S000027','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0027/400/200/grey/','3','icon_eye','wxappService/section/article/0027','P000007','1'),
	('S000028','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0028/400/200/grey/','1','icon_more','wxappService/section/article/0028','P000007','1'),
	('S000029','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0029/400/200/grey/','2','icon_edit','wxappService/section/article/0029','P000008','1'),
	('S000030','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0030/400/200/grey/','3','icon_share','wxappService/section/article/0030','P000008','1'),
	('S000031','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0031/400/200/grey/','1','icon_eye','wxappService/section/article/0031','P000008','1'),
	('S000032','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0032/400/200/grey/','2','icon_more','wxappService/section/article/0032','P000008','1'),
	('S000033','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0033/400/200/grey/','3','icon_edit','wxappService/section/article/0033','P000009','1'),
	('S000034','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0034/400/200/grey/','1','icon_share','wxappService/section/article/0034','P000009','1'),
	('S000035','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0035/400/200/grey/','2','icon_eye','wxappService/section/article/0035','P000009','1'),
	('S000036','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0036/400/200/grey/','3','icon_more','wxappService/section/article/0036','P000009','1'),
	('S000037','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0037/400/200/grey/','1','icon_edit','wxappService/section/article/0037','P000010','1'),
	('S000038','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0038/400/200/grey/','2','icon_share','wxappService/section/article/0038','P000010','1'),
	('S000039','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0039/400/200/grey/','3','icon_eye','wxappService/section/article/0039','P000010','1'),
	('S000040','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0040/400/200/grey/','1','icon_more','wxappService/section/article/0040','P000010','1'),
	('S000041','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0041/400/200/grey/','2','icon_edit','wxappService/section/article/0041','P000011','1'),
	('S000042','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0042/400/200/grey/','3','icon_share','wxappService/section/article/0042','P000011','1'),
	('S000043','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0043/400/200/grey/','1','icon_eye','wxappService/section/article/0043','P000011','1'),
	('S000044','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0044/400/200/grey/','2','icon_more','wxappService/section/article/0044','P000011','1'),
	('S000045','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0045/400/200/grey/','3','icon_edit','wxappService/section/article/0045','P000012','1'),
	('S000046','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0046/400/200/grey/','1','icon_share','wxappService/section/article/0046','P000012','1'),
	('S000047','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0047/400/200/grey/','2','icon_eye','wxappService/section/article/0047','P000012','1'),
	('S000048','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0048/400/200/grey/','3','icon_more','wxappService/section/article/0048','P000012','1'),
	('S000049','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0049/400/200/grey/','1','icon_edit','wxappService/section/article/0049','P000013','1'),
	('S000050','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0050/400/200/grey/','2','icon_share','wxappService/section/article/0050','P000013','1'),
	('S000051','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0051/400/200/grey/','3','icon_eye','wxappService/section/article/0051','P000013','1'),
	('S000052','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0052/400/200/grey/','1','icon_more','wxappService/section/article/0052','P000013','1'),
	('S000053','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0053/400/200/grey/','2','icon_edit','wxappService/section/article/0053','P000014','1'),
	('S000054','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0054/400/200/grey/','3','icon_share','wxappService/section/article/0054','P000014','1'),
	('S000055','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0055/400/200/grey/','1','icon_eye','wxappService/section/article/0055','P000014','1'),
	('S000056','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0056/400/200/grey/','2','icon_more','wxappService/section/article/0056','P000014','1'),
	('S000057','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0057/400/200/grey/','3','icon_edit','wxappService/section/article/0057','P000015','1'),
	('S000058','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0058/400/200/grey/','1','icon_share','wxappService/section/article/0058','P000015','1'),
	('S000059','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0059/400/200/grey/','2','icon_eye','wxappService/section/article/0059','P000015','1'),
	('S000060','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0060/400/200/grey/','3','icon_more','wxappService/section/article/0060','P000015','1'),
	('S000061','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0061/400/200/grey/','1','icon_edit','wxappService/section/article/0061','P000016','1'),
	('S000062','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0062/400/200/grey/','2','icon_share','wxappService/section/article/0062','P000016','1'),
	('S000063','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0063/400/200/grey/','3','icon_eye','wxappService/section/article/0063','P000016','1'),
	('S000064','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0064/400/200/grey/','1','icon_more','wxappService/section/article/0064','P000016','1');

insert into wechat_workapp_identity_data values
	('WWI000001','corporation123','user123','SU000001','2021-07-08 21:10:52','2021-07-01 05:32:01','1'),
	('WWI000002','corporation1230002','user1230002','SU000001','2021-07-08 00:21:31','2021-06-25 18:21:22','1'),
	('WWI000003','corporation1230003','user1230003','SU000001','2021-07-09 00:52:22','2021-07-07 11:22:02','1'),
	('WWI000004','corporation1230004','user1230004','SU000001','2021-07-02 13:26:05','2021-06-24 07:22:44','1'),
	('WWI000005','corporation1230005','user1230005','SU000002','2021-07-11 02:33:23','2021-07-09 19:51:03','1'),
	('WWI000006','corporation1230006','user1230006','SU000002','2021-07-05 05:57:20','2021-06-22 20:16:48','1'),
	('WWI000007','corporation1230007','user1230007','SU000002','2021-06-27 01:16:27','2021-07-02 10:37:17','1'),
	('WWI000008','corporation1230008','user1230008','SU000002','2021-06-22 19:45:25','2021-07-10 09:41:10','1'),
	('WWI000009','corporation1230009','user1230009','SU000003','2021-07-03 09:25:42','2021-06-29 14:40:13','1'),
	('WWI000010','corporation1230010','user1230010','SU000003','2021-06-30 10:04:48','2021-07-07 22:19:09','1'),
	('WWI000011','corporation1230011','user1230011','SU000003','2021-06-24 05:15:44','2021-07-09 21:58:15','1'),
	('WWI000012','corporation1230012','user1230012','SU000003','2021-07-10 04:30:20','2021-07-07 09:53:10','1'),
	('WWI000013','corporation1230013','user1230013','SU000004','2021-06-25 16:07:33','2021-07-02 04:24:49','1'),
	('WWI000014','corporation1230014','user1230014','SU000004','2021-07-07 21:44:10','2021-06-23 06:49:28','1'),
	('WWI000015','corporation1230015','user1230015','SU000004','2021-06-29 08:30:16','2021-06-21 01:21:42','1'),
	('WWI000016','corporation1230016','user1230016','SU000004','2021-06-30 04:30:07','2021-07-11 20:16:20','1');

insert into wechat_miniapp_identity_data values
	('WMI000001','wechat_open_id_1234567890','wechat_miniapp_id_1234567890','wechat_union_id_1234567890','SU000001','2021-07-11 15:13:05','2021-06-28 02:44:01','1'),
	('WMI000002','wechat_open_id_12345678900002','wechat_miniapp_id_12345678900002','wechat_union_id_12345678900002','SU000001','2021-06-26 06:39:33','2021-07-10 13:28:26','1'),
	('WMI000003','wechat_open_id_12345678900003','wechat_miniapp_id_12345678900003','wechat_union_id_12345678900003','SU000001','2021-07-09 09:56:34','2021-07-04 06:24:36','1'),
	('WMI000004','wechat_open_id_12345678900004','wechat_miniapp_id_12345678900004','wechat_union_id_12345678900004','SU000001','2021-07-09 00:26:49','2021-07-10 11:12:03','1'),
	('WMI000005','wechat_open_id_12345678900005','wechat_miniapp_id_12345678900005','wechat_union_id_12345678900005','SU000002','2021-07-01 05:53:02','2021-07-05 11:00:04','1'),
	('WMI000006','wechat_open_id_12345678900006','wechat_miniapp_id_12345678900006','wechat_union_id_12345678900006','SU000002','2021-06-27 10:19:16','2021-06-28 09:03:02','1'),
	('WMI000007','wechat_open_id_12345678900007','wechat_miniapp_id_12345678900007','wechat_union_id_12345678900007','SU000002','2021-07-02 03:25:12','2021-07-04 05:57:41','1'),
	('WMI000008','wechat_open_id_12345678900008','wechat_miniapp_id_12345678900008','wechat_union_id_12345678900008','SU000002','2021-06-23 13:07:33','2021-06-24 18:54:59','1'),
	('WMI000009','wechat_open_id_12345678900009','wechat_miniapp_id_12345678900009','wechat_union_id_12345678900009','SU000003','2021-06-30 09:39:54','2021-07-03 00:18:43','1'),
	('WMI000010','wechat_open_id_12345678900010','wechat_miniapp_id_12345678900010','wechat_union_id_12345678900010','SU000003','2021-07-05 06:39:48','2021-07-02 15:14:50','1'),
	('WMI000011','wechat_open_id_12345678900011','wechat_miniapp_id_12345678900011','wechat_union_id_12345678900011','SU000003','2021-07-05 05:56:48','2021-06-29 21:38:46','1'),
	('WMI000012','wechat_open_id_12345678900012','wechat_miniapp_id_12345678900012','wechat_union_id_12345678900012','SU000003','2021-07-08 07:07:26','2021-06-23 21:47:49','1'),
	('WMI000013','wechat_open_id_12345678900013','wechat_miniapp_id_12345678900013','wechat_union_id_12345678900013','SU000004','2021-06-23 09:33:41','2021-06-28 17:48:37','1'),
	('WMI000014','wechat_open_id_12345678900014','wechat_miniapp_id_12345678900014','wechat_union_id_12345678900014','SU000004','2021-07-02 12:46:31','2021-06-23 08:20:23','1'),
	('WMI000015','wechat_open_id_12345678900015','wechat_miniapp_id_12345678900015','wechat_union_id_12345678900015','SU000004','2021-07-06 03:52:26','2021-06-27 07:06:59','1'),
	('WMI000016','wechat_open_id_12345678900016','wechat_miniapp_id_12345678900016','wechat_union_id_12345678900016','SU000004','2021-07-04 17:10:22','2021-06-29 15:21:46','1');

insert into key_pair_identity_data values
	('KPI000001','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-20 12:38:49','1'),
	('KPI000002','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-07-11 19:30:51','1'),
	('KPI000003','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-29 15:32:04','1'),
	('KPI000004','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-25 20:45:59','1'),
	('KPI000005','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-07-09 09:38:10','1'),
	('KPI000006','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-21 14:51:31','1'),
	('KPI000007','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-24 14:02:15','1'),
	('KPI000008','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-29 22:11:22','1'),
	('KPI000009','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-07-06 10:57:26','1'),
	('KPI000010','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-07-04 22:26:13','1'),
	('KPI000011','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-06-27 09:13:22','1'),
	('KPI000012','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-06-29 17:15:26','1'),
	('KPI000013','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-07-06 13:07:48','1'),
	('KPI000014','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-22 19:04:15','1'),
	('KPI000015','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-29 00:39:52','1'),
	('KPI000016','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-21 14:39:48','1');

insert into public_key_type_data values
	('PKT000001','RSA','SHA256withRSA','UD000001','1'),
	('PKT000002','EC','SHA256withECDSA','UD000001','1'),
	('PKT000003','RSA','SHA256withRSA','UD000001','1'),
	('PKT000004','EC','SHA256withECDSA','UD000001','1');

insert into tree_node_data values
	('TN000001','node000001','nodetype','1','8','1');







delete from key_pair_identity_data;
delete from list_access_data ;
delete from user_app_data ;
delete from login_history_data ;
delete from sec_user_data ;
delete from user_domain_data ;
delete from wechat_miniapp_identity_data;
delete from wechat_workapp_identity_data;

insert into user_domain_data values ('UD000001','用户区域','1');



insert into sec_user_data values('SU000001','User000001','13900000001','1000001@qq.com','24327F1C00D22210298A18D0DB9AA6C4C22DEAC4BEAE7C02E616442CA7764246', 'weixin_openid_000001', 'weixin_appid_000001', 'jwt_token_000001' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000001','网站流量分析系统','SU000001','apartment',1,'MXWR','Platform','P000001','Platform','P000001','/link/to/app','1');
insert into user_app_data values('UA000002','我的账户','SU000001','lock',1,'MXWR','SecUser','SU000001','SecUser','SU000001','/link/to/app','1');
insert into user_app_data values('UA000003','用户管理','SU000001','team',1,'MXWR','UserDomain','UD000001', 'UserDomain','UD000001','/link/to/app','1');

/* ------------------------------ generate users for all target od marked as user4all ------------------------------------------ */
insert into sec_user_data values('SU000002','User000002','13900000002','1000002@qq.com','BB5210DAE99659C7164D7DBCFC51FB2D167D0DA372D58EF26A9F8533EEA2967C', 'weixin_openid_000002', 'weixin_appid_000002', 'jwt_token_000002' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000004','网站: freshchain演示项目','SU000002','deployment-unit',1,'MXWR','Site','S000001','Site','S000001','/link/to/app','1');
insert into user_app_data values('UA000005','我的账户','SU000002','lock',1,'MXWR','SecUser','SU000002','SecUser','SU000002','/link/to/app','1');
insert into sec_user_data values('SU000003','User000003','13900000003','1000003@qq.com','9D4104DF2774FDEAAE074CA35B052D8F664F4F99064C7BEAB0B589C2605C4EDA', 'weixin_openid_000003', 'weixin_appid_000003', 'jwt_token_000003' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000006','网站: retailchain演示项目','SU000003','deployment-unit',1,'MXWR','Site','S000002','Site','S000002','/link/to/app','1');
insert into user_app_data values('UA000007','我的账户','SU000003','lock',1,'MXWR','SecUser','SU000003','SecUser','SU000003','/link/to/app','1');
insert into sec_user_data values('SU000004','User000004','13900000004','1000004@qq.com','9B223EBD008D7B544A3A640739EBE47459D3A4C5296DDA00F594FAF60FE88B28', 'weixin_openid_000004', 'weixin_appid_000004', 'jwt_token_000004' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000008','网站: freshchain演示项目','SU000004','deployment-unit',1,'MXWR','Site','S000003','Site','S000003','/link/to/app','1');
insert into user_app_data values('UA000009','我的账户','SU000004','lock',1,'MXWR','SecUser','SU000004','SecUser','SU000004','/link/to/app','1');
insert into sec_user_data values('SU000005','User000005','13900000005','1000005@qq.com','AE5F93F319636A96963C06D035B97F004D18E61D80129EFEA331784A6E21DC5C', 'weixin_openid_000005', 'weixin_appid_000005', 'jwt_token_000005' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000010','网站: retailchain演示项目','SU000005','deployment-unit',1,'MXWR','Site','S000004','Site','S000004','/link/to/app','1');
insert into user_app_data values('UA000011','我的账户','SU000005','lock',1,'MXWR','SecUser','SU000005','SecUser','SU000005','/link/to/app','1');
insert into sec_user_data values('SU000006','User000006','13900000006','1000006@qq.com','5FBBDBEAD9F84D599E8819CEEA167854CDA0FFD8D297D17D12E4619CE76F3B55', 'weixin_openid_000006', 'weixin_appid_000006', 'jwt_token_000006' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000012','推荐领域: freshchain演示项目','SU000006','deployment-unit',1,'MXWR','ReferralDomain','RD000001','ReferralDomain','RD000001','/link/to/app','1');
insert into user_app_data values('UA000013','我的账户','SU000006','lock',1,'MXWR','SecUser','SU000006','SecUser','SU000006','/link/to/app','1');
insert into sec_user_data values('SU000007','User000007','13900000007','1000007@qq.com','A9652F0D7C1ACCB421BAF55EB3E7286AFA8F591897F1AE4CEB6A76402CCBE803', 'weixin_openid_000007', 'weixin_appid_000007', 'jwt_token_000007' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000014','推荐领域: retailchain演示项目','SU000007','deployment-unit',1,'MXWR','ReferralDomain','RD000002','ReferralDomain','RD000002','/link/to/app','1');
insert into user_app_data values('UA000015','我的账户','SU000007','lock',1,'MXWR','SecUser','SU000007','SecUser','SU000007','/link/to/app','1');
insert into sec_user_data values('SU000008','User000008','13900000008','1000008@qq.com','A4B83C2652CD6BECE5C7909576555B313078D7EE50AA028F26B8F0245C191B4B', 'weixin_openid_000008', 'weixin_appid_000008', 'jwt_token_000008' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000016','推荐领域: freshchain演示项目','SU000008','deployment-unit',1,'MXWR','ReferralDomain','RD000003','ReferralDomain','RD000003','/link/to/app','1');
insert into user_app_data values('UA000017','我的账户','SU000008','lock',1,'MXWR','SecUser','SU000008','SecUser','SU000008','/link/to/app','1');
insert into sec_user_data values('SU000009','User000009','13900000009','1000009@qq.com','88F8AB5F153081C5AB21F5E5354B4EB14286EFB43CEA588ED1C73FE2B46B35C1', 'weixin_openid_000009', 'weixin_appid_000009', 'jwt_token_000009' ,'9292993','2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
insert into user_app_data values('UA000018','推荐领域: retailchain演示项目','SU000009','deployment-unit',1,'MXWR','ReferralDomain','RD000004','ReferralDomain','RD000004','/link/to/app','1');
insert into user_app_data values('UA000019','我的账户','SU000009','lock',1,'MXWR','SecUser','SU000009','SecUser','SU000009','/link/to/app','1');


-- no change request type found

select mobile as `可用于登录的账号`, 'admin123' as `密码` from sec_user_data;

/*
| 角色        | 用户名           | 密码         |
| ------------- |:-------------:|:-------------------:|


*/




-- Mysql innodb's foreign key has index automatically

create unique index idx4id_ver_of_platform on platform_data (id, version);
create  index idx4create_time_of_platform on platform_data (create_time);
create  index idx4last_update_time_of_platform on platform_data (last_update_time);

create unique index idx4id_ver_of_site on site_data (id, version);
create  index idx4create_time_of_site on site_data (create_time);

create unique index idx4id_ver_of_referral_domain on referral_domain_data (id, version);
create  index idx4create_time_of_referral_domain on referral_domain_data (create_time);

create unique index idx4id_ver_of_web_user on web_user_data (id, version);
create  index idx4create_time_of_web_user on web_user_data (create_time);

create unique index idx4id_ver_of_access_record on access_record_data (id, version);
create  index idx4create_time_of_access_record on access_record_data (create_time);

create unique index idx4id_ver_of_mobile_app on mobile_app_data (id, version);

create unique index idx4id_ver_of_page on page_data (id, version);
create  index idx4display_order_of_page on page_data (display_order);

create unique index idx4id_ver_of_page_type on page_type_data (id, version);
create unique index idx4code_of_page_type on page_type_data (code);

create unique index idx4id_ver_of_slide on slide_data (id, version);
create  index idx4display_order_of_slide on slide_data (display_order);

create unique index idx4id_ver_of_ui_action on ui_action_data (id, version);
create  index idx4display_order_of_ui_action on ui_action_data (display_order);

create unique index idx4id_ver_of_section on section_data (id, version);
create  index idx4display_order_of_section on section_data (display_order);

create unique index idx4id_ver_of_user_domain on user_domain_data (id, version);

create unique index idx4id_ver_of_user_allow_list on user_allow_list_data (id, version);
create  index idx4user_identity_of_user_allow_list on user_allow_list_data (user_identity);

create unique index idx4id_ver_of_sec_user on sec_user_data (id, version);
create unique index idx4login_of_sec_user on sec_user_data (login);
create unique index idx4email_of_sec_user on sec_user_data (email);
create unique index idx4mobile_of_sec_user on sec_user_data (mobile);
create  index idx4verification_code_of_sec_user on sec_user_data (verification_code);
create  index idx4verification_code_expire_of_sec_user on sec_user_data (verification_code_expire);
create  index idx4last_login_time_of_sec_user on sec_user_data (last_login_time);

create unique index idx4id_ver_of_user_app on user_app_data (id, version);
create  index idx4app_id_of_user_app on user_app_data (app_id);
create  index idx4ctx_id_of_user_app on user_app_data (ctx_id);

create unique index idx4id_ver_of_quick_link on quick_link_data (id, version);
create  index idx4create_time_of_quick_link on quick_link_data (create_time);

create unique index idx4id_ver_of_list_access on list_access_data (id, version);

create unique index idx4id_ver_of_login_history on login_history_data (id, version);
create  index idx4login_time_of_login_history on login_history_data (login_time);

create unique index idx4id_ver_of_candidate_container on candidate_container_data (id, version);

create unique index idx4id_ver_of_candidate_element on candidate_element_data (id, version);

create unique index idx4id_ver_of_wechat_workapp_identity on wechat_workapp_identity_data (id, version);
create  index idx4corp_id_of_wechat_workapp_identity on wechat_workapp_identity_data (corp_id);
create  index idx4user_id_of_wechat_workapp_identity on wechat_workapp_identity_data (user_id);
create  index idx4create_time_of_wechat_workapp_identity on wechat_workapp_identity_data (create_time);
create  index idx4last_login_time_of_wechat_workapp_identity on wechat_workapp_identity_data (last_login_time);

create unique index idx4id_ver_of_wechat_miniapp_identity on wechat_miniapp_identity_data (id, version);
create  index idx4open_id_of_wechat_miniapp_identity on wechat_miniapp_identity_data (open_id);
create  index idx4app_id_of_wechat_miniapp_identity on wechat_miniapp_identity_data (app_id);
create  index idx4union_id_of_wechat_miniapp_identity on wechat_miniapp_identity_data (union_id);
create  index idx4create_time_of_wechat_miniapp_identity on wechat_miniapp_identity_data (create_time);
create  index idx4last_login_time_of_wechat_miniapp_identity on wechat_miniapp_identity_data (last_login_time);

create unique index idx4id_ver_of_key_pair_identity on key_pair_identity_data (id, version);
create  index idx4create_time_of_key_pair_identity on key_pair_identity_data (create_time);

create unique index idx4id_ver_of_public_key_type on public_key_type_data (id, version);

create unique index idx4id_ver_of_tree_node on tree_node_data (id, version);
create  index idx4node_id_of_tree_node on tree_node_data (node_id);
create  index idx4left_value_of_tree_node on tree_node_data (left_value);
create  index idx4right_value_of_tree_node on tree_node_data (right_value);
alter table platform_data add constraint pk4id_of_platform_data primary key (id);

alter table site_data add constraint pk4id_of_site_data primary key (id);
alter table site_data add constraint 
	fk4platform_of_site_data foreign key (platform) references platform_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table referral_domain_data add constraint pk4id_of_referral_domain_data primary key (id);
alter table referral_domain_data add constraint 
	fk4platform_of_referral_domain_data foreign key (platform) references platform_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table web_user_data add constraint pk4id_of_web_user_data primary key (id);
alter table web_user_data add constraint 
	fk4platform_of_web_user_data foreign key (platform) references platform_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table access_record_data add constraint pk4id_of_access_record_data primary key (id);
alter table access_record_data add constraint 
	fk4user_of_access_record_data foreign key (user) references web_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table access_record_data add constraint 
	fk4referral_domain_of_access_record_data foreign key (referral_domain) references referral_domain_data(id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table access_record_data add constraint 
	fk4platform_of_access_record_data foreign key (platform) references platform_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table mobile_app_data add constraint pk4id_of_mobile_app_data primary key (id);

alter table page_data add constraint pk4id_of_page_data primary key (id);
alter table page_data add constraint 
	fk4page_type_of_page_data foreign key (page_type) references page_type_data(id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table page_data add constraint 
	fk4mobile_app_of_page_data foreign key (mobile_app) references mobile_app_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table page_type_data add constraint pk4id_of_page_type_data primary key (id);
alter table page_type_data add constraint 
	fk4mobile_app_of_page_type_data foreign key (mobile_app) references mobile_app_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table slide_data add constraint pk4id_of_slide_data primary key (id);
alter table slide_data add constraint 
	fk4page_of_slide_data foreign key (page) references page_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table ui_action_data add constraint pk4id_of_ui_action_data primary key (id);
alter table ui_action_data add constraint 
	fk4page_of_ui_action_data foreign key (page) references page_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table section_data add constraint pk4id_of_section_data primary key (id);
alter table section_data add constraint 
	fk4page_of_section_data foreign key (page) references page_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table user_domain_data add constraint pk4id_of_user_domain_data primary key (id);

alter table user_allow_list_data add constraint pk4id_of_user_allow_list_data primary key (id);
alter table user_allow_list_data add constraint 
	fk4domain_of_user_allow_list_data foreign key (domain) references user_domain_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table sec_user_data add constraint pk4id_of_sec_user_data primary key (id);
alter table sec_user_data add constraint 
	fk4domain_of_sec_user_data foreign key (domain) references user_domain_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table user_app_data add constraint pk4id_of_user_app_data primary key (id);
alter table user_app_data add constraint 
	fk4sec_user_of_user_app_data foreign key (sec_user) references sec_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table quick_link_data add constraint pk4id_of_quick_link_data primary key (id);
alter table quick_link_data add constraint 
	fk4app_of_quick_link_data foreign key (app) references user_app_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table list_access_data add constraint pk4id_of_list_access_data primary key (id);
alter table list_access_data add constraint 
	fk4app_of_list_access_data foreign key (app) references user_app_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table login_history_data add constraint pk4id_of_login_history_data primary key (id);
alter table login_history_data add constraint 
	fk4sec_user_of_login_history_data foreign key (sec_user) references sec_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table candidate_container_data add constraint pk4id_of_candidate_container_data primary key (id);

alter table candidate_element_data add constraint pk4id_of_candidate_element_data primary key (id);
alter table candidate_element_data add constraint 
	fk4container_of_candidate_element_data foreign key (container) references candidate_container_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table wechat_workapp_identity_data add constraint pk4id_of_wechat_workapp_identity_data primary key (id);
alter table wechat_workapp_identity_data add constraint 
	fk4sec_user_of_wechat_workapp_identity_data foreign key (sec_user) references sec_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table wechat_miniapp_identity_data add constraint pk4id_of_wechat_miniapp_identity_data primary key (id);
alter table wechat_miniapp_identity_data add constraint 
	fk4sec_user_of_wechat_miniapp_identity_data foreign key (sec_user) references sec_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table key_pair_identity_data add constraint pk4id_of_key_pair_identity_data primary key (id);
alter table key_pair_identity_data add constraint 
	fk4key_type_of_key_pair_identity_data foreign key (key_type) references public_key_type_data(id) ON DELETE CASCADE ON UPDATE CASCADE;
alter table key_pair_identity_data add constraint 
	fk4sec_user_of_key_pair_identity_data foreign key (sec_user) references sec_user_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table public_key_type_data add constraint pk4id_of_public_key_type_data primary key (id);
alter table public_key_type_data add constraint 
	fk4domain_of_public_key_type_data foreign key (domain) references user_domain_data(id) ON DELETE CASCADE ON UPDATE CASCADE;

alter table tree_node_data add constraint pk4id_of_tree_node_data primary key (id);

-- create extra index for time, number and mobile phone




create table info_lines(line varchar(400));

insert into info_lines values( '   SSSSSSSSSSSSSSS                                                                                                                  !!! ');
insert into info_lines values( ' SS:::::::::::::::S                                                                                                                !!:!!');
insert into info_lines values( 'S:::::SSSSSS::::::S                                                                                                                !:::!');
insert into info_lines values( 'S:::::S     SSSSSSS                                                                                                                !:::!');
insert into info_lines values( 'S:::::S            uuuuuu    uuuuuu      cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeee        ssssssssss       ssssssssss   !:::!');
insert into info_lines values( 'S:::::S            u::::u    u::::u    cc:::::::::::::::c  cc:::::::::::::::c  ee::::::::::::ee    ss::::::::::s    ss::::::::::s  !:::!');
insert into info_lines values( ' S::::SSSS         u::::u    u::::u   c:::::::::::::::::c c:::::::::::::::::c e::::::eeeee:::::eess:::::::::::::s ss:::::::::::::s !:::!');
insert into info_lines values( '  SS::::::SSSSS    u::::u    u::::u  c:::::::cccccc:::::cc:::::::cccccc:::::ce::::::e     e:::::es::::::ssss:::::ss::::::ssss:::::s!:::!');
insert into info_lines values( '    SSS::::::::SS  u::::u    u::::u  c::::::c     cccccccc::::::c     ccccccce:::::::eeeee::::::e s:::::s  ssssss  s:::::s  ssssss !:::!');
insert into info_lines values( '       SSSSSS::::S u::::u    u::::u  c:::::c             c:::::c             e:::::::::::::::::e    s::::::s         s::::::s      !:::!');
insert into info_lines values( '            S:::::Su::::u    u::::u  c:::::c             c:::::c             e::::::eeeeeeeeeee        s::::::s         s::::::s   !!:!!');
insert into info_lines values( '            S:::::Su:::::uuuu:::::u  c::::::c     cccccccc::::::c     ccccccce:::::::e           ssssss   s:::::s ssssss   s:::::s  !!! ');
insert into info_lines values( 'SSSSSSS     S:::::Su:::::::::::::::uuc:::::::cccccc:::::cc:::::::cccccc:::::ce::::::::e          s:::::ssss::::::ss:::::ssss::::::s     ');
insert into info_lines values( 'S::::::SSSSSS:::::S u:::::::::::::::u c:::::::::::::::::c c:::::::::::::::::c e::::::::eeeeeeee  s::::::::::::::s s::::::::::::::s  !!! ');
insert into info_lines values( 'S:::::::::::::::SS   uu::::::::uu:::u  cc:::::::::::::::c  cc:::::::::::::::c  ee:::::::::::::e   s:::::::::::ss   s:::::::::::ss  !!:!!');
insert into info_lines values( ' SSSSSSSSSSSSSSS       uuuuuuuu  uuuu    cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeeeee    sssssssssss      sssssssssss     !!! ');

select * from info_lines;
/* start with data patch */
/* The sql file is not found from: /home/philip/resin-3.1.12/webapps/sky/data-patch/webaccess.sql */
-- no change request defined .
-- turn on safe mode
SET SQL_SAFE_UPDATES = 1;
-- change request type

/*
http://patorjk.com/software/taag/#p=testall&h=0&v=0&f=Graceful&t=Success!
   _____                                            _
  / ____|                                          | |
 | (___    _   _    ___    ___    ___   ___   ___  | |
  \\___   | | | |  / __|  / __|  / _  / __| / __| | |
  ____) | | |_| | | (__  | (__  |  __/ \\__  \\__  |_|
 |_____/   \\__,_|  \\___|  \\___|  \\___| |___/ |___/ (_)
+----------+---------------------------------+---------------------+--------+
| Charset  | Description                     | Default collation   | Maxlen |
+----------+---------------------------------+---------------------+--------+
| gb2312   | GB2312 Simplified Chinese       | gb2312_chinese_ci   |      2 |
| gbk      | GBK Simplified Chinese          | gbk_chinese_ci      |      2 |
| utf8mb4  | UTF-8 Unicode                   | utf8mb4_general_ci  |      4 |
| utf32    | UTF-32 Unicode                  | utf32_general_ci    |      4 |
| gb18030  | China National Standard GB18030 | gb18030_chinese_ci  |      4 |
+----------+---------------------------------+---------------------+--------+

*/




