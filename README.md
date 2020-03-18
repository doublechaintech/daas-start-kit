

# DaaS Start Kit 是什么

把一个易于理解的XML文本，交给服务端，收获全栈开源的高质量代码。投以滴水，报以涌泉。DaaS Start Kit 是DaaS（Development as a Service）开源客户端，源代码在云端生成，本地进行定制开发，测试和部署的客户端工具。

## 输入
只是需要写如下简短易懂的xml文件

his.xml
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

## 处理
交给软件开发云服务
## 输出
* 前端React源代码
* 后端Java代码
* 文档
* 测试数据
* 用于登录的账号名和密码
* 更多如区块链，物联网等持续推出

应用系统的所有的代码都是源代码形式，可以查看，修改和控制每行代码！


参考医院系统，https://github.com/doublechaintech/his-biz-suite

## 特征

跟牛刀、APICloud、iVX、搭搭云、氚云、简道云、云表、宜搭云相比，DaaS更适合：
* 不仅限于内部使用的互联网应用
* 需要掌控全部源代码专业软件开发团队
* 模型变更很关键，使用git等版本控制变更，进行行级变更跟踪
* 长期维护的项目，强制对模型进行英文命名，利于长期维护
* 业务计算逻辑复杂，约束复杂，图形语言无法表达的业务领域，如电商，优惠计算，拍卖，交易系统
* 遗留系统API集成，比如支付，专用金融系统，财务系统，生产制造，设备集成
* 集成物联网，区块链等先进技术

## 特性

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

针对Daas start kit的使用，我们提供了以下三份使用手册。

|           文档名称            | 文档所在位置                                | 在线文档位置                       |                    其他位置                     |
| :---------------------------: | :------------------------------------------ | ---------------------------------- | :---------------------------------------------: |
| DaaS Start Kit 环境配置与准备 | ./docs/Daas-Start-Kit快速配置与开发准备.pdf | https://kdocs.cn/l/st71C0iyb?f=130 |                                                 |
|        DaaS 概要与建模        | ./docs/DaaS概要与建模.pdf                   | https://kdocs.cn/l/sKrbw3KAP       |                                                 |
|       DaaS 二次开发指南       | ./docs/DaaS-服务端Java-二次开发开发指南.pdf | https://kdocs.cn/l/sUdwkkyZD?f=130 | https://juejin.im/post/5e5db8bb5188254953720684 |





### DaaS Start Kit 环境配置与准备

在daas start kit 环境配置与准备文档中，我们描述了如何快速使用 dass start kit 工具包生成代码。

### DaaS 概要与建模

在 daas 概要与建模文档中，我们详细的描述了如何编写daas start kit工具包能够处理的XML 文件以及使用XML文件建模的高级特性。

### DaaS 二次开发指南

在 daas 开发指南文档中，描述了如何使用daas start kit 开发Java部分的定制化代码。

# 扫描二维码, 带上暗号 DaaS 获得种子用户优惠 ！

![image](https://github.com/jarryscript/locker/blob/master/images/wechat_qr.jpeg?raw=true)
