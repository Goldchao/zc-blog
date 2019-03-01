DELETE FROM sys_config WHERE sys_key IN("SITE_NAME","SITE_DESC","SITE_PIC","SITE_KWD","SITE_PERSON_PIC","SITE_PERSON_NAME","SITE_PERSON_DESC");
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_NAME', '智博客', '1', '网站名称');
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_KWD', '智博客,zblog,zb-blog,个人博客，开源博客，shiro,zb-shiro,权限管理项目', '1', '网站关键字');
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_DESC', '智博客,zblog,zb-blog,个人博客，开源博客，shiro,zb-shiro,权限管理项目', '1', '网站描述');
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_PERSON_PIC', 'http://cdn.nbclass.com/blog/img/person.jpg', '1', '站长头像');
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_PERSON_NAME', 'NBCLASS | 智博客', '1', '站长名称');
INSERT INTO `sys_config` (sys_key,sys_value,status,remark) VALUES ('SITE_PERSON_DESC', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人项目经验，共同学习，少走弯路。Just do it！', '1', '站长描述');
