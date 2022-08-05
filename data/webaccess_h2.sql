-- BUILD WITH MODEL TIME 700101T0800


CREATE ALIAS DATE AS $$
import java.net.*;
import java.util.Date;
import java.text.SimpleDateFormat;
@CODE
Date date(Date date) throws Exception {
    SimpleDateFormat formatter = new SimpleDateFormat( "dd/MM/yyyy");
    return formatter.parse(formatter.format(date));
    
}
$$;







drop table  if exists platform_data;
create table platform_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(32)                              comment '名称',
	create_time                   	datetime                                 comment '创建于',
	last_update_time              	datetime                                 comment '更新于',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists site_data;
create table site_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	location                      	varchar(512)                             comment '位置',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists referral_domain_data;
create table referral_domain_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	location                      	varchar(512)                             comment '位置',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists web_user_data;
create table web_user_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(100)                             comment '名称',
	platform                      	varchar(48)                              comment '平台',
	create_time                   	datetime                                 comment '创建于',
	version                       	int                                      comment '版本'
	
) ;
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
	
) ;
-- primary key will be created later for better import performance

drop table  if exists mobile_app_data;
create table mobile_app_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(20)                              comment '名称',
	version                       	int                                      comment '版本'
	
) ;
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
	
) ;
-- primary key will be created later for better import performance

drop table  if exists page_type_data;
create table page_type_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(40)                              comment '名称',
	code                          	varchar(40)                              comment '编码',
	mobile_app                    	varchar(48)                              comment '手机应用程序',
	footer_tab                    	tinyint                                  comment '页脚选项卡',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists slide_data;
create table slide_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(40)                              comment '名称',
	display_order                 	int                                      comment '顺序',
	image_url                     	varchar(512)                             comment '图片链接',
	video_url                     	varchar(512)                             comment '视频网址',
	link_to_url                   	varchar(512)                             comment '链接网址',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists ui_action_data;
create table ui_action_data (
	id                            	varchar(48)          not null            comment 'ID',
	code                          	varchar(40)                              comment '编码',
	icon                          	varchar(512)                             comment '图标',
	title                         	varchar(40)                              comment '标题',
	display_order                 	int                                      comment '顺序',
	brief                         	varchar(200)                             comment '短暂的',
	image_url                     	varchar(512)                             comment '图片链接',
	link_to_url                   	varchar(512)                             comment '链接网址',
	extra_data                    	longtext                                 comment '额外的数据',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists section_data;
create table section_data (
	id                            	varchar(48)          not null            comment 'ID',
	title                         	varchar(40)                              comment '标题',
	brief                         	varchar(200)                             comment '短暂的',
	icon                          	varchar(512)                             comment '图标',
	display_order                 	int                                      comment '顺序',
	view_group                    	varchar(40)                              comment '视图组',
	link_to_url                   	varchar(512)                             comment '链接网址',
	page                          	varchar(48)                              comment '页面',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists user_domain_data;
create table user_domain_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(16)                              comment '名称',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists user_allow_list_data;
create table user_allow_list_data (
	id                            	varchar(48)          not null            comment 'ID',
	user_identity                 	varchar(40)                              comment '用户标识',
	user_special_functions        	varchar(200)                             comment '用户特权',
	domain                        	varchar(48)                              comment '域',
	version                       	int                                      comment '版本'
	
) ;
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
	
) ;
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
	
) ;
-- primary key will be created later for better import performance

drop table  if exists quick_link_data;
create table quick_link_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(200)                             comment '名称',
	icon                          	varchar(200)                             comment '图标',
	image_path                    	varchar(512)                             comment '图片路径',
	link_target                   	varchar(200)                             comment '链接的目标',
	create_time                   	datetime                                 comment '创建于',
	app                           	varchar(48)                              comment '应用程序',
	version                       	int                                      comment '版本'
	
) ;
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
	
) ;
-- primary key will be created later for better import performance

drop table  if exists login_history_data;
create table login_history_data (
	id                            	varchar(48)          not null            comment 'ID',
	login_time                    	datetime                                 comment '登录时间',
	from_ip                       	varchar(44)                              comment '来自IP',
	description                   	varchar(16)                              comment '描述',
	sec_user                      	varchar(48)                              comment '系统用户',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists candidate_container_data;
create table candidate_container_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(28)                              comment '名称',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists candidate_element_data;
create table candidate_element_data (
	id                            	varchar(48)          not null            comment 'ID',
	name                          	varchar(200)                             comment '标题',
	type                          	varchar(200)                             comment '类型',
	image                         	varchar(512)                             comment '图像',
	container                     	varchar(48)                              comment '容器',
	version                       	int                                      comment '版本'
	
) ;
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
	
) ;
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
	
) ;
-- primary key will be created later for better import performance

drop table  if exists key_pair_identity_data;
create table key_pair_identity_data (
	id                            	varchar(48)          not null            comment 'ID',
	public_key                    	longtext                                 comment '公钥',
	key_type                      	varchar(48)                              comment '秘钥类型',
	sec_user                      	varchar(48)                              comment '系统用户',
	create_time                   	datetime                                 comment '创建时间',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists public_key_type_data;
create table public_key_type_data (
	id                            	varchar(48)          not null            comment 'ID',
	key_alg                       	varchar(10)                              comment '加密算法',
	sign_alg                      	varchar(50)                              comment '签名算法',
	domain                        	varchar(48)                              comment '域',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance

drop table  if exists tree_node_data;
create table tree_node_data (
	id                            	varchar(48)          not null            comment 'ID',
	node_id                       	varchar(40)                              comment '节点ID',
	node_type                     	varchar(32)                              comment '节点类型',
	left_value                    	int                                      comment '左值',
	right_value                   	int                                      comment '右值',
	version                       	int                                      comment '版本'
	
) ;
-- primary key will be created later for better import performance




insert into platform_data values
	('P000001','网站流量分析系统','2021-07-08 22:32:03','2021-07-11 15:09:15','1');

insert into site_data values
	('S000001','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-07-01 14:23:54','1'),
	('S000002','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-09 05:41:46','1'),
	('S000003','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-06-28 10:18:18','1'),
	('S000004','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-02 11:07:24','1');

insert into referral_domain_data values
	('RD000001','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-06-24 19:25:54','1'),
	('RD000002','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-08 16:52:54','1'),
	('RD000003','freshchain演示项目','demo.doublechaintech.com/admin/retailscm','P000001','2021-06-28 07:59:16','1'),
	('RD000004','retailchain演示项目','demo.doublechaintech.com/admin/freshchain','P000001','2021-07-11 13:09:19','1');

insert into web_user_data values
	('WU000001','freshchain演示项目','P000001','2021-06-29 02:04:35','1'),
	('WU000002','retailchain演示项目','P000001','2021-07-07 06:30:00','1'),
	('WU000003','freshchain演示项目','P000001','2021-06-24 13:43:26','1'),
	('WU000004','retailchain演示项目','P000001','2021-07-04 10:07:26','1');

insert into access_record_data values
	('AR000001','访问记录','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-03 08:42:47','P000001','1'),
	('AR000002','访问记录0002','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-06 02:13:58','P000001','1'),
	('AR000003','访问记录0003','WU000001','RD000001','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-21 10:58:19','P000001','1'),
	('AR000004','访问记录0004','WU000001','RD000001','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-22 02:32:21','P000001','1'),
	('AR000005','访问记录0005','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-29 03:04:43','P000001','1'),
	('AR000006','访问记录0006','WU000002','RD000002','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-30 15:05:25','P000001','1'),
	('AR000007','访问记录0007','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-25 03:37:27','P000001','1'),
	('AR000008','访问记录0008','WU000002','RD000002','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-29 19:46:18','P000001','1'),
	('AR000009','访问记录0009','WU000003','RD000003','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-26 01:02:14','P000001','1'),
	('AR000010','访问记录0010','WU000003','RD000003','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-06 06:25:03','P000001','1'),
	('AR000011','访问记录0011','WU000003','RD000003','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-08 10:13:07','P000001','1'),
	('AR000012','访问记录0012','WU000003','RD000003','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-04 15:05:28','P000001','1'),
	('AR000013','访问记录0013','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-07-05 09:10:47','P000001','1'),
	('AR000014','访问记录0014','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-21 22:09:29','P000001','1'),
	('AR000015','访问记录0015','WU000004','RD000004','芜湖','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-29 02:59:04','P000001','1'),
	('AR000016','访问记录0016','WU000004','RD000004','广州','https://demo.doublechaintech.com/admin/freshchian','https://demo.doublechaintech.com/admin/freshchian','2021-06-28 08:51:40','P000001','1');

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

insert into user_domain_data values
	('UD000001','用户区域','1');

insert into user_allow_list_data values
	('UAL000001','13308188512',';supervisor;','UD000001','1'),
	('UAL000002','13808188512',';tester;ios-spokesperson;','UD000001','1'),
	('UAL000003','13308188512',';supervisor;','UD000001','1'),
	('UAL000004','13808188512',';tester;ios-spokesperson;','UD000001','1');

insert into sec_user_data values
	('SU000001','login','13900000001','suddy_chang@163.com','C183EC89F92A462CF45B95504792EC4625E847C90536EEFE512D1C9DB8602E95','wx123456789abcdefghijklmn','wxapp12098410239840','jwt_token_12345678','0','2021-06-21 21:57:56','2021-06-27 01:54:01','UD000001','1'),
	('SU000002','login0002','13900000002','2@qq.com','AC2F95628244C6975EB2C36942EA879ED93D93F5895EF3157733E4629FA86B92','wx123456789abcdefghijklmn0002','wxapp120984102398400002','jwt_token_123456780002','9999999','2021-06-26 23:20:08','2021-07-08 19:47:12','UD000001','1'),
	('SU000003','login0003','13900000003','3@qq.com','1A39AE05E011CF4B6ADE19307698831F4303CEB3FF5A9E21EEC0B21FB19B1050','wx123456789abcdefghijklmn0003','wxapp120984102398400003','jwt_token_123456780003','0','2021-06-21 12:45:36','2021-06-27 03:26:32','UD000001','1'),
	('SU000004','login0004','13900000004','4@qq.com','331D0B81C261072AB3E01D2D09A3D1F9B03F1E5F095D6BF7284F32BF85135D59','wx123456789abcdefghijklmn0004','wxapp120984102398400004','jwt_token_123456780004','9999999','2021-07-01 02:38:15','2021-07-02 06:45:38','UD000001','1');

insert into user_app_data values
	('UA000001','审车平台','SU000001','users','1','MXWR','Platform','P00001','Job','J00','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000002','账户管理','SU000001','bank','1','MXWR','Platform0002','P000010002','Job0002','J000002','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000003','接车公司','SU000001','wechat','1','MXWR','Platform0003','P000010003','Job0003','J000003','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000004','审车公司','SU000001','bar-chart','1','MXWR','Platform0004','P000010004','Job0004','J000004','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000005','维修公司','SU000002','user','1','MXWR','Platform0005','P000010005','Job0005','J000005','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000006','顾客','SU000002','users','1','MXWR','Platform0006','P000010006','Job0006','J000006','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000007','审车平台','SU000002','users','1','MXWR','Platform0007','P000010007','Job0007','J000007','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000008','账户管理','SU000002','bank','1','MXWR','Platform0008','P000010008','Job0008','J000008','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000009','接车公司','SU000003','wechat','1','MXWR','Platform0009','P000010009','Job0009','J000009','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000010','审车公司','SU000003','bar-chart','1','MXWR','Platform0010','P000010010','Job0010','J000010','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000011','维修公司','SU000003','user','1','MXWR','Platform0011','P000010011','Job0011','J000011','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000012','顾客','SU000003','users','1','MXWR','Platform0012','P000010012','Job0012','J000012','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000013','审车平台','SU000004','users','1','MXWR','Platform0013','P000010013','Job0013','J000013','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000014','账户管理','SU000004','bank','1','MXWR','Platform0014','P000010014','Job0014','J000014','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000015','接车公司','SU000004','wechat','1','MXWR','Platform0015','P000010015','Job0015','J000015','公司管理,采购管理,销售管理,库存管理,财务管理','1'),
	('UA000016','审车公司','SU000004','bar-chart','1','MXWR','Platform0016','P000010016','Job0016','J000016','公司管理,采购管理,销售管理,库存管理,财务管理','1');

insert into quick_link_data values
	('QL000001','列表','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0001/200/200/red/','列表','2021-07-03 15:17:43','UA000001','1'),
	('QL000002','列表0002','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0002/200/200/red/','列表0002','2021-06-30 20:43:53','UA000001','1'),
	('QL000003','列表0003','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0003/200/200/red/','列表0003','2021-06-25 21:36:41','UA000001','1'),
	('QL000004','列表0004','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0004/200/200/red/','列表0004','2021-07-07 17:15:55','UA000001','1'),
	('QL000005','列表0005','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0005/200/200/red/','列表0005','2021-06-26 11:23:06','UA000002','1'),
	('QL000006','列表0006','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0006/200/200/red/','列表0006','2021-06-25 12:29:51','UA000002','1'),
	('QL000007','列表0007','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0007/200/200/red/','列表0007','2021-06-24 17:36:03','UA000002','1'),
	('QL000008','列表0008','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0008/200/200/red/','列表0008','2021-06-21 04:47:07','UA000002','1'),
	('QL000009','列表0009','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0009/200/200/red/','列表0009','2021-07-01 02:08:21','UA000003','1'),
	('QL000010','列表0010','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0010/200/200/red/','列表0010','2021-07-07 14:16:08','UA000003','1'),
	('QL000011','列表0011','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0011/200/200/red/','列表0011','2021-06-26 13:42:05','UA000003','1'),
	('QL000012','列表0012','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0012/200/200/red/','列表0012','2021-06-21 06:08:19','UA000003','1'),
	('QL000013','列表0013','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0013/200/200/red/','列表0013','2021-06-28 05:52:37','UA000004','1'),
	('QL000014','列表0014','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0014/200/200/red/','列表0014','2021-07-02 23:22:06','UA000004','1'),
	('QL000015','列表0015','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0015/200/200/red/','列表0015','2021-07-04 02:16:41','UA000004','1'),
	('QL000016','列表0016','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0016/200/200/red/','列表0016','2021-06-21 09:35:59','UA000004','1'),
	('QL000017','列表0017','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0017/200/200/red/','列表0017','2021-06-28 04:24:31','UA000005','1'),
	('QL000018','列表0018','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0018/200/200/red/','列表0018','2021-06-28 15:19:17','UA000005','1'),
	('QL000019','列表0019','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0019/200/200/red/','列表0019','2021-07-05 04:25:08','UA000005','1'),
	('QL000020','列表0020','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0020/200/200/red/','列表0020','2021-07-05 20:10:15','UA000005','1'),
	('QL000021','列表0021','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0021/200/200/red/','列表0021','2021-07-10 13:33:01','UA000006','1'),
	('QL000022','列表0022','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0022/200/200/red/','列表0022','2021-06-21 00:26:49','UA000006','1'),
	('QL000023','列表0023','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0023/200/200/red/','列表0023','2021-07-02 19:14:25','UA000006','1'),
	('QL000024','列表0024','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0024/200/200/red/','列表0024','2021-06-20 22:35:15','UA000006','1'),
	('QL000025','列表0025','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0025/200/200/red/','列表0025','2021-06-27 18:04:00','UA000007','1'),
	('QL000026','列表0026','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0026/200/200/red/','列表0026','2021-06-23 18:53:56','UA000007','1'),
	('QL000027','列表0027','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0027/200/200/red/','列表0027','2021-07-03 19:02:28','UA000007','1'),
	('QL000028','列表0028','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0028/200/200/red/','列表0028','2021-06-23 17:10:25','UA000007','1'),
	('QL000029','列表0029','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0029/200/200/red/','列表0029','2021-06-27 07:16:25','UA000008','1'),
	('QL000030','列表0030','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0030/200/200/red/','列表0030','2021-06-21 17:00:54','UA000008','1'),
	('QL000031','列表0031','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0031/200/200/red/','列表0031','2021-07-01 14:06:44','UA000008','1'),
	('QL000032','列表0032','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0032/200/200/red/','列表0032','2021-06-23 08:55:59','UA000008','1'),
	('QL000033','列表0033','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0033/200/200/red/','列表0033','2021-06-24 18:30:56','UA000009','1'),
	('QL000034','列表0034','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0034/200/200/red/','列表0034','2021-06-24 00:22:00','UA000009','1'),
	('QL000035','列表0035','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0035/200/200/red/','列表0035','2021-06-25 06:08:58','UA000009','1'),
	('QL000036','列表0036','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0036/200/200/red/','列表0036','2021-06-23 04:39:30','UA000009','1'),
	('QL000037','列表0037','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0037/200/200/red/','列表0037','2021-06-24 00:01:26','UA000010','1'),
	('QL000038','列表0038','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0038/200/200/red/','列表0038','2021-07-11 22:33:26','UA000010','1'),
	('QL000039','列表0039','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0039/200/200/red/','列表0039','2021-06-29 17:16:08','UA000010','1'),
	('QL000040','列表0040','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0040/200/200/red/','列表0040','2021-07-04 10:45:00','UA000010','1'),
	('QL000041','列表0041','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0041/200/200/red/','列表0041','2021-07-02 18:17:06','UA000011','1'),
	('QL000042','列表0042','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0042/200/200/red/','列表0042','2021-07-04 11:35:23','UA000011','1'),
	('QL000043','列表0043','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0043/200/200/red/','列表0043','2021-06-24 07:25:00','UA000011','1'),
	('QL000044','列表0044','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0044/200/200/red/','列表0044','2021-07-04 04:16:47','UA000011','1'),
	('QL000045','列表0045','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0045/200/200/red/','列表0045','2021-06-28 21:12:03','UA000012','1'),
	('QL000046','列表0046','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0046/200/200/red/','列表0046','2021-06-29 03:08:08','UA000012','1'),
	('QL000047','列表0047','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0047/200/200/red/','列表0047','2021-07-04 13:16:07','UA000012','1'),
	('QL000048','列表0048','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0048/200/200/red/','列表0048','2021-06-22 15:36:16','UA000012','1'),
	('QL000049','列表0049','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0049/200/200/red/','列表0049','2021-07-07 23:47:13','UA000013','1'),
	('QL000050','列表0050','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0050/200/200/red/','列表0050','2021-06-29 07:03:36','UA000013','1'),
	('QL000051','列表0051','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0051/200/200/red/','列表0051','2021-07-07 14:57:33','UA000013','1'),
	('QL000052','列表0052','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0052/200/200/red/','列表0052','2021-07-11 10:55:11','UA000013','1'),
	('QL000053','列表0053','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0053/200/200/red/','列表0053','2021-07-11 13:33:47','UA000014','1'),
	('QL000054','列表0054','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0054/200/200/red/','列表0054','2021-06-26 06:30:56','UA000014','1'),
	('QL000055','列表0055','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0055/200/200/red/','列表0055','2021-06-30 14:19:41','UA000014','1'),
	('QL000056','列表0056','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0056/200/200/red/','列表0056','2021-07-01 04:46:03','UA000014','1'),
	('QL000057','列表0057','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0057/200/200/red/','列表0057','2021-07-02 10:54:05','UA000015','1'),
	('QL000058','列表0058','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0058/200/200/red/','列表0058','2021-07-01 13:47:44','UA000015','1'),
	('QL000059','列表0059','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0059/200/200/red/','列表0059','2021-07-07 09:04:05','UA000015','1'),
	('QL000060','列表0060','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0060/200/200/red/','列表0060','2021-07-06 17:38:44','UA000015','1'),
	('QL000061','列表0061','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0061/200/200/red/','列表0061','2021-07-11 19:51:21','UA000016','1'),
	('QL000062','列表0062','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0062/200/200/red/','列表0062','2021-06-24 16:44:16','UA000016','1'),
	('QL000063','列表0063','facebook','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0063/200/200/red/','列表0063','2021-06-25 19:09:43','UA000016','1'),
	('QL000064','列表0064','google','https://demo.doublechaintech.com/demodata/imageManager/genImage/y0064/200/200/red/','列表0064','2021-07-03 09:44:22','UA000016','1');

insert into list_access_data values
	('LA000001','列表','levelOneCategoryList','1','1','1','1','1','UA000001','1'),
	('LA000002','列表0002','levelOneCategoryList0002','1','1','1','1','1','UA000001','1'),
	('LA000003','列表0003','levelOneCategoryList0003','1','1','1','1','1','UA000001','1'),
	('LA000004','列表0004','levelOneCategoryList0004','1','1','1','1','1','UA000001','1'),
	('LA000005','列表0005','levelOneCategoryList0005','1','1','1','1','1','UA000002','1'),
	('LA000006','列表0006','levelOneCategoryList0006','1','1','1','1','1','UA000002','1'),
	('LA000007','列表0007','levelOneCategoryList0007','1','1','1','1','1','UA000002','1'),
	('LA000008','列表0008','levelOneCategoryList0008','1','1','1','1','1','UA000002','1'),
	('LA000009','列表0009','levelOneCategoryList0009','1','1','1','1','1','UA000003','1'),
	('LA000010','列表0010','levelOneCategoryList0010','1','1','1','1','1','UA000003','1'),
	('LA000011','列表0011','levelOneCategoryList0011','1','1','1','1','1','UA000003','1'),
	('LA000012','列表0012','levelOneCategoryList0012','1','1','1','1','1','UA000003','1'),
	('LA000013','列表0013','levelOneCategoryList0013','1','1','1','1','1','UA000004','1'),
	('LA000014','列表0014','levelOneCategoryList0014','1','1','1','1','1','UA000004','1'),
	('LA000015','列表0015','levelOneCategoryList0015','1','1','1','1','1','UA000004','1'),
	('LA000016','列表0016','levelOneCategoryList0016','1','1','1','1','1','UA000004','1'),
	('LA000017','列表0017','levelOneCategoryList0017','1','1','1','1','1','UA000005','1'),
	('LA000018','列表0018','levelOneCategoryList0018','1','1','1','1','1','UA000005','1'),
	('LA000019','列表0019','levelOneCategoryList0019','1','1','1','1','1','UA000005','1'),
	('LA000020','列表0020','levelOneCategoryList0020','1','1','1','1','1','UA000005','1'),
	('LA000021','列表0021','levelOneCategoryList0021','1','1','1','1','1','UA000006','1'),
	('LA000022','列表0022','levelOneCategoryList0022','1','1','1','1','1','UA000006','1'),
	('LA000023','列表0023','levelOneCategoryList0023','1','1','1','1','1','UA000006','1'),
	('LA000024','列表0024','levelOneCategoryList0024','1','1','1','1','1','UA000006','1'),
	('LA000025','列表0025','levelOneCategoryList0025','1','1','1','1','1','UA000007','1'),
	('LA000026','列表0026','levelOneCategoryList0026','1','1','1','1','1','UA000007','1'),
	('LA000027','列表0027','levelOneCategoryList0027','1','1','1','1','1','UA000007','1'),
	('LA000028','列表0028','levelOneCategoryList0028','1','1','1','1','1','UA000007','1'),
	('LA000029','列表0029','levelOneCategoryList0029','1','1','1','1','1','UA000008','1'),
	('LA000030','列表0030','levelOneCategoryList0030','1','1','1','1','1','UA000008','1'),
	('LA000031','列表0031','levelOneCategoryList0031','1','1','1','1','1','UA000008','1'),
	('LA000032','列表0032','levelOneCategoryList0032','1','1','1','1','1','UA000008','1'),
	('LA000033','列表0033','levelOneCategoryList0033','1','1','1','1','1','UA000009','1'),
	('LA000034','列表0034','levelOneCategoryList0034','1','1','1','1','1','UA000009','1'),
	('LA000035','列表0035','levelOneCategoryList0035','1','1','1','1','1','UA000009','1'),
	('LA000036','列表0036','levelOneCategoryList0036','1','1','1','1','1','UA000009','1'),
	('LA000037','列表0037','levelOneCategoryList0037','1','1','1','1','1','UA000010','1'),
	('LA000038','列表0038','levelOneCategoryList0038','1','1','1','1','1','UA000010','1'),
	('LA000039','列表0039','levelOneCategoryList0039','1','1','1','1','1','UA000010','1'),
	('LA000040','列表0040','levelOneCategoryList0040','1','1','1','1','1','UA000010','1'),
	('LA000041','列表0041','levelOneCategoryList0041','1','1','1','1','1','UA000011','1'),
	('LA000042','列表0042','levelOneCategoryList0042','1','1','1','1','1','UA000011','1'),
	('LA000043','列表0043','levelOneCategoryList0043','1','1','1','1','1','UA000011','1'),
	('LA000044','列表0044','levelOneCategoryList0044','1','1','1','1','1','UA000011','1'),
	('LA000045','列表0045','levelOneCategoryList0045','1','1','1','1','1','UA000012','1'),
	('LA000046','列表0046','levelOneCategoryList0046','1','1','1','1','1','UA000012','1'),
	('LA000047','列表0047','levelOneCategoryList0047','1','1','1','1','1','UA000012','1'),
	('LA000048','列表0048','levelOneCategoryList0048','1','1','1','1','1','UA000012','1'),
	('LA000049','列表0049','levelOneCategoryList0049','1','1','1','1','1','UA000013','1'),
	('LA000050','列表0050','levelOneCategoryList0050','1','1','1','1','1','UA000013','1'),
	('LA000051','列表0051','levelOneCategoryList0051','1','1','1','1','1','UA000013','1'),
	('LA000052','列表0052','levelOneCategoryList0052','1','1','1','1','1','UA000013','1'),
	('LA000053','列表0053','levelOneCategoryList0053','1','1','1','1','1','UA000014','1'),
	('LA000054','列表0054','levelOneCategoryList0054','1','1','1','1','1','UA000014','1'),
	('LA000055','列表0055','levelOneCategoryList0055','1','1','1','1','1','UA000014','1'),
	('LA000056','列表0056','levelOneCategoryList0056','1','1','1','1','1','UA000014','1'),
	('LA000057','列表0057','levelOneCategoryList0057','1','1','1','1','1','UA000015','1'),
	('LA000058','列表0058','levelOneCategoryList0058','1','1','1','1','1','UA000015','1'),
	('LA000059','列表0059','levelOneCategoryList0059','1','1','1','1','1','UA000015','1'),
	('LA000060','列表0060','levelOneCategoryList0060','1','1','1','1','1','UA000015','1'),
	('LA000061','列表0061','levelOneCategoryList0061','1','1','1','1','1','UA000016','1'),
	('LA000062','列表0062','levelOneCategoryList0062','1','1','1','1','1','UA000016','1'),
	('LA000063','列表0063','levelOneCategoryList0063','1','1','1','1','1','UA000016','1'),
	('LA000064','列表0064','levelOneCategoryList0064','1','1','1','1','1','UA000016','1');

insert into login_history_data values
	('LH000001','2021-07-11 04:57:40','192.168.1.1','登陆成功','SU000001','1'),
	('LH000002','2021-06-28 00:36:21','192.168.1.2','登陆成功0002','SU000001','1'),
	('LH000003','2021-06-25 22:56:04','192.168.1.1','登陆成功0003','SU000001','1'),
	('LH000004','2021-07-09 04:23:07','192.168.1.2','登陆成功0004','SU000001','1'),
	('LH000005','2021-07-04 19:35:34','192.168.1.1','登陆成功0005','SU000002','1'),
	('LH000006','2021-07-05 19:49:17','192.168.1.2','登陆成功0006','SU000002','1'),
	('LH000007','2021-06-23 13:06:04','192.168.1.1','登陆成功0007','SU000002','1'),
	('LH000008','2021-06-26 14:35:18','192.168.1.2','登陆成功0008','SU000002','1'),
	('LH000009','2021-06-21 06:53:53','192.168.1.1','登陆成功0009','SU000003','1'),
	('LH000010','2021-07-03 20:54:25','192.168.1.2','登陆成功0010','SU000003','1'),
	('LH000011','2021-07-02 01:11:19','192.168.1.1','登陆成功0011','SU000003','1'),
	('LH000012','2021-07-02 01:09:52','192.168.1.2','登陆成功0012','SU000003','1'),
	('LH000013','2021-07-01 16:39:35','192.168.1.1','登陆成功0013','SU000004','1'),
	('LH000014','2021-07-02 13:41:35','192.168.1.2','登陆成功0014','SU000004','1'),
	('LH000015','2021-07-07 04:00:11','192.168.1.1','登陆成功0015','SU000004','1'),
	('LH000016','2021-07-03 04:14:27','192.168.1.2','登陆成功0016','SU000004','1');

insert into candidate_container_data values
	('CC000001','我只是一个容器','1');

insert into candidate_element_data values
	('CE000001','搜索到的匹配字段','类型描述','https://demo.doublechaintech.com/demodata/imageManager/genImage/10001/400/200/grey/','CC000001','1'),
	('CE000002','搜索到的匹配字段0002','类型描述0002','https://demo.doublechaintech.com/demodata/imageManager/genImage/10002/400/200/grey/','CC000001','1'),
	('CE000003','搜索到的匹配字段0003','类型描述0003','https://demo.doublechaintech.com/demodata/imageManager/genImage/10003/400/200/grey/','CC000001','1'),
	('CE000004','搜索到的匹配字段0004','类型描述0004','https://demo.doublechaintech.com/demodata/imageManager/genImage/10004/400/200/grey/','CC000001','1');

insert into wechat_workapp_identity_data values
	('WWI000001','corporation123','user123','SU000001','2021-07-10 13:07:14','2021-07-08 07:29:09','1'),
	('WWI000002','corporation1230002','user1230002','SU000001','2021-07-07 05:39:45','2021-06-23 04:56:11','1'),
	('WWI000003','corporation1230003','user1230003','SU000001','2021-07-07 08:12:16','2021-06-29 19:37:50','1'),
	('WWI000004','corporation1230004','user1230004','SU000001','2021-06-28 06:16:18','2021-07-02 23:52:02','1'),
	('WWI000005','corporation1230005','user1230005','SU000002','2021-07-03 06:28:53','2021-06-25 22:35:51','1'),
	('WWI000006','corporation1230006','user1230006','SU000002','2021-07-04 15:35:42','2021-06-26 18:03:24','1'),
	('WWI000007','corporation1230007','user1230007','SU000002','2021-07-04 14:16:42','2021-07-01 07:54:45','1'),
	('WWI000008','corporation1230008','user1230008','SU000002','2021-06-27 23:54:11','2021-07-02 10:42:06','1'),
	('WWI000009','corporation1230009','user1230009','SU000003','2021-07-03 15:54:36','2021-07-04 04:35:18','1'),
	('WWI000010','corporation1230010','user1230010','SU000003','2021-07-02 16:05:45','2021-07-01 03:02:05','1'),
	('WWI000011','corporation1230011','user1230011','SU000003','2021-06-25 15:53:49','2021-07-05 19:21:49','1'),
	('WWI000012','corporation1230012','user1230012','SU000003','2021-06-27 01:16:14','2021-06-20 13:26:13','1'),
	('WWI000013','corporation1230013','user1230013','SU000004','2021-07-11 17:40:03','2021-07-07 02:50:14','1'),
	('WWI000014','corporation1230014','user1230014','SU000004','2021-07-11 00:04:58','2021-06-24 15:36:20','1'),
	('WWI000015','corporation1230015','user1230015','SU000004','2021-06-21 15:46:56','2021-07-07 12:41:18','1'),
	('WWI000016','corporation1230016','user1230016','SU000004','2021-07-05 16:58:00','2021-06-28 07:20:04','1');

insert into wechat_miniapp_identity_data values
	('WMI000001','wechat_open_id_1234567890','wechat_miniapp_id_1234567890','wechat_union_id_1234567890','SU000001','2021-07-09 09:47:39','2021-06-20 17:48:12','1'),
	('WMI000002','wechat_open_id_12345678900002','wechat_miniapp_id_12345678900002','wechat_union_id_12345678900002','SU000001','2021-07-08 05:06:21','2021-06-23 11:57:59','1'),
	('WMI000003','wechat_open_id_12345678900003','wechat_miniapp_id_12345678900003','wechat_union_id_12345678900003','SU000001','2021-06-29 22:39:23','2021-06-28 03:40:51','1'),
	('WMI000004','wechat_open_id_12345678900004','wechat_miniapp_id_12345678900004','wechat_union_id_12345678900004','SU000001','2021-06-20 04:12:58','2021-06-30 17:23:35','1'),
	('WMI000005','wechat_open_id_12345678900005','wechat_miniapp_id_12345678900005','wechat_union_id_12345678900005','SU000002','2021-06-23 02:42:45','2021-06-29 07:10:16','1'),
	('WMI000006','wechat_open_id_12345678900006','wechat_miniapp_id_12345678900006','wechat_union_id_12345678900006','SU000002','2021-07-04 17:52:41','2021-06-30 15:48:35','1'),
	('WMI000007','wechat_open_id_12345678900007','wechat_miniapp_id_12345678900007','wechat_union_id_12345678900007','SU000002','2021-06-28 18:32:50','2021-07-03 15:24:10','1'),
	('WMI000008','wechat_open_id_12345678900008','wechat_miniapp_id_12345678900008','wechat_union_id_12345678900008','SU000002','2021-07-10 01:34:35','2021-06-28 08:30:44','1'),
	('WMI000009','wechat_open_id_12345678900009','wechat_miniapp_id_12345678900009','wechat_union_id_12345678900009','SU000003','2021-07-04 04:21:19','2021-07-02 23:17:06','1'),
	('WMI000010','wechat_open_id_12345678900010','wechat_miniapp_id_12345678900010','wechat_union_id_12345678900010','SU000003','2021-06-22 10:43:34','2021-07-05 03:00:11','1'),
	('WMI000011','wechat_open_id_12345678900011','wechat_miniapp_id_12345678900011','wechat_union_id_12345678900011','SU000003','2021-07-03 15:58:38','2021-06-28 15:25:20','1'),
	('WMI000012','wechat_open_id_12345678900012','wechat_miniapp_id_12345678900012','wechat_union_id_12345678900012','SU000003','2021-07-11 05:02:31','2021-07-06 16:11:45','1'),
	('WMI000013','wechat_open_id_12345678900013','wechat_miniapp_id_12345678900013','wechat_union_id_12345678900013','SU000004','2021-06-20 10:22:45','2021-06-20 14:27:46','1'),
	('WMI000014','wechat_open_id_12345678900014','wechat_miniapp_id_12345678900014','wechat_union_id_12345678900014','SU000004','2021-06-23 03:58:31','2021-07-04 15:33:01','1'),
	('WMI000015','wechat_open_id_12345678900015','wechat_miniapp_id_12345678900015','wechat_union_id_12345678900015','SU000004','2021-07-06 23:17:44','2021-07-06 01:11:58','1'),
	('WMI000016','wechat_open_id_12345678900016','wechat_miniapp_id_12345678900016','wechat_union_id_12345678900016','SU000004','2021-07-03 20:51:59','2021-06-24 09:07:51','1');

insert into key_pair_identity_data values
	('KPI000001','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-24 21:26:00','1'),
	('KPI000002','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-25 14:58:40','1'),
	('KPI000003','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-07-08 09:17:17','1'),
	('KPI000004','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000001','SU000001','2021-06-27 00:40:35','1'),
	('KPI000005','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-23 14:13:28','1'),
	('KPI000006','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-24 02:54:49','1'),
	('KPI000007','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-07-03 22:37:07','1'),
	('KPI000008','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000002','SU000002','2021-06-21 23:11:17','1'),
	('KPI000009','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-06-20 10:26:53','1'),
	('KPI000010','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-07-09 17:30:15','1'),
	('KPI000011','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-07-05 20:22:05','1'),
	('KPI000012','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000003','SU000003','2021-06-29 22:16:35','1'),
	('KPI000013','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-30 11:28:47','1'),
	('KPI000014','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-29 07:37:20','1'),
	('KPI000015','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-06-26 07:23:22','1'),
	('KPI000016','峨眉竹叶青属于绿茶类。\n产于四川省峨眉山。峨眉山是我国重点风景旅游区之一，山门上“天下名山”四个大字是郭沫若所写。\n历代文人都赞美峨眉之秀丽，唐代诗人元稹有“锦江滑腻峨眉秀”，南宋诗人范成大有“三峨之秀甲天下”的诗句。\n峨眉山产茶历史悠久，唐代就有白芽茶被列为贡品。宋代诗人陆游有诗曰：“雪芽近自峨眉得，不减红囊顾渚春。\n”明代峨眉山白水寺（今万年寺）种茶万株，采制入贡。现代峨眉竹叶青是20世纪60年代创制的名茶，其茶名是陈毅元帅所取\n\n','PKT000004','SU000004','2021-07-06 06:34:53','1');

insert into public_key_type_data values
	('PKT000001','RSA','SHA256withRSA','UD000001','1'),
	('PKT000002','EC','SHA256withECDSA','UD000001','1'),
	('PKT000003','RSA','SHA256withRSA','UD000001','1'),
	('PKT000004','EC','SHA256withECDSA','UD000001','1');

insert into tree_node_data values
	('TN000001','node000001','nodetype','1','8','1');





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



/* start with data patch */
/* The sql file is not found from: /home/philip/resin-3.1.12/webapps/sky/data-patch/webaccess.sql */











