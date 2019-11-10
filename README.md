

# DaaS Start Kit 是什么

核心特性： 滴水之恩，当涌泉相报, 只是需要写简短易懂的一个xml文件，交给服务端处理后，生成可用的前后端具备的计算机源代码，文档和数据。


```

<?xml version='1.0' ?>
<root org="doublechaintech" 
	chinese_name="医生排班系统" 
	english_name="Doctor Scheduling System">

    <hospital   
        name="上和医院|[1,200]"  
        address="毕升路22号" 
        telephone="028-9123123" />
	
</root>  
```
参考医院系统，https://github.com/doublechaintech/his-biz-suite

DaaS 是成都双链科技开发的新一代低码平台，主要特性如下：

* 只需要数行非常容易理解的xml文件，通过DaaS云平台就可以生成前后端代码（请参考bank.xml,his.xml)
* 支持变量拼写检查，如果不是英文单词，会给出警告
* 支持变量数据库和开发语言关键字冲突检查，避免使用关键字，保持系统各个部分词汇一致
* 前端基于React+Ant Design+ Ant Design Pro
* 后端基于Java 8， Spring Boot，自有Rest框架（CAF），JDBC Template
* 缓存支持Redis和内存，SMTP Email支持
* 内置支持Elastic Search
* 支持Kafka事件流服务, 默认未打开
* 支持一个用户访问多个App
* 支持权限配置
* 支持定制代码和生成代码目录分离，无需反复合并
* 计划支持区块链、物联网语义模型
* 支持数据行级权限控制（需结合双链科技IAM平台)

例子请参考

https://github.com/doublechaintech/retailscm-biz-suite

# 快速体验
## 获取本项目

中国大陆
```
git clone https://gitee.com/doublechaintech/daas-start-kit.git
```
中国大陆以外
```
git clone https://github.com/doublechaintech/daas-start-kit.git
```
## 利用示例的模型文件示例生成所有代码

系统支持windows，Mac和Linux


Windows下
```
> cd daas-start-kit
> .\gencode.bat .\bank.xml all
```
Linux&MacOS下
```
$ cd daas-start-kit
$ ./gencode.sh bank.xml all
```
修复Linux的文件监控问题，如果不执行偶尔会导致 yarn start失败

```
$ bash fixlinuxfilewatchers.sh
```


生成的代码在bizui（React+Ant Design前端）, bizcore(Java后端）


# 深入学习DaaS

针对Daas start kit，我们提供了以下三份手册

## [DaaS Start Kit 环境配置与准备](https://docs.qq.com/doc/DTklDV2dNd0RBdEds)

在daas start kit 环境配置与准备文档中，我们描述了如何快速使用 dass start kit 工具包生成代码。

## [DaaS 概要与建模](https://docs.qq.com/doc/DTnBhWU5tVXZoZHpj)

在 daas 概要与建模文档中，我们详细的描述了如何编写daas start kit工具包能够处理的XML 文件以及使用XML文件建模的高级特性。

## [DaaS 开发指南](https://docs.qq.com/doc/DTkxKYnhKV0R2amxr)

在 daas 开发指南文档中，描述了如何使用daas start kit 开发Java部分的定制化代码。
