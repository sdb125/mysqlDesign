/*
    关系型数据库(数据表)：sqlite   db2  MYSQL  oracle  access  sql Server  
    非关系型数据库（key-value）：mongodb   redis   memcache

*/



--- 初始mysql  ---
---查看当前用户---
select user();

---退出mysql--
quit;
exit;


---创建账号---
create user '用户名'@'ip';
---指定网段---
create user '用户名'@'xx.xx.xx.%';
---所有ip可以访问--
create user '用户名'@'%';

---远程登陆指令 ---
mysql -u root -p 123456 -h ip;

--查看某一个账号权限-
show grants for '用户'@'ip';

--给账号授权--
grant all on *.* to '用户名'@'%';
flush privileges;

--创建账号并且授权--
geant all on *.* to '用户名'@'%' identified by '123456';


/*
    SQL 结构查询语言，分成三种类型
    1、DDL      数据库定义语言：数据库，数据表，视图，索引，存储过程。比如：create drop alter
    2、DML      数据库操作语言:插入inster 删除delete 更新update 查询selete
    3、DCl      数据库控制语言：控制用户的访问权限 grant revoke 

*/


---  创建一个数据库 ---
create database 'db1' charset utf8;
show databases;
alter database 'db1' charset gbk;
drop database 'db1'


--- 操作表  ---
use db1;
create table 't1'(id int,name char);
show tables;
alter table 't1' modify 'name' char(3);
alter table 't1' change 'name' 'username' char(2);

drop table 't1';

