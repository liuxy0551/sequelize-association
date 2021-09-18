## sequelize-association

练习 sequelize 在一对一、一对多、多对多时的使用

- [x] 一对一
- [x] 一对多
- [x] 多对多


### 一对一

举例：  
1、一个中国公民 (Chinese) 只有一个身份证号 (IDNumber) 


### 一对多

举例：  
1、一个省份 (Province) 有多个市 (City)   


### 多对多

举例：  
1、一部电影 (Movie) 有多个演员 (Actor), 一个演员 (Actor) 参演多部电影 (Movie)   


## 运行代码

### mysql 5.7

1、新建数据库

- 数据库名: sequelize-association
- 字符集: utf8mb4
- 排序规则: utf8mb4_general_ci

2、sql 文件

依次执行 sql 文件夹下所有的 sql 文件

### 安装依赖

```
yarn
```

### 自动生成 models

```
yarn models
```

### 启动项目

```
yarn dev
```
