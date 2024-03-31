书店销售系统
大学JAVA WEB课程设计作用	
1 绪   论
随着图书数量日益增多，书店对图书的管理要求也越来越高，为了使图书信息的管理更加系统化，数字化，可以更快的使图书的销售信息统计并且排名，这对管理员来说是很好可以减少很多工作量，在书店销售量很大的情况下，管理员统计畅销书的难度将会极大，而且我们的会员信息管理、升级、折扣等也会是很大的工作量，因此我们设计了该图书管理系统，用以方便管理员对图书销售和会员信息的管理。
在系统设计阶段,首先确定系统后台SQL的模式,结合新华书店内部管理政策画出网络结构图,保证软件的逻辑性。然后划分系统的每块功能,绘制流程图,活动图等专业手段分析模块。在数据库设计中,将数据库的所有字段陈列出来,包括它们应设置的类型,名称,画出了数据表之间的E-R关系图,整个数据库中的表关系一目了然。


















2 相关技术介绍
一.	JSP：是 JavaEE 平台下的技术规范。它允许使用特定的标签在 HTML 网页中插入 Java 代码，实现动态页面处理，所以 JSP 就是 HTML 与Java 代码的复合体。JSP 技术可以快速的实现一个页面的开发，相比在 Servlet 中实现页面开发将变得更加容易。

二.	Javaservlet：在Web服务器端加载并运行的Java应用程序具体运行在Servlet引擎管理的JVM上。Servlet容器负责Servlet和用户的通信以及调用Servlet的方法。Servlet和用户的通信采用请求/响应模式。用于以动态响应客户机请求形式扩展Web服务器（Web Container）的功能。Servlet是开发服务器端应用程序的一个很好选择， Servlet与JSP结合使用，能提供更强大的服务器端功能。一个servlet就是Java编程语言中的一个类，它被用来扩展服务器的性能，服务器上驻留着可以通过“请求-响应”编程模型来访问的应用程序。

三.	JavaBean ：JavaBean 是一种JAVA语言写成的可重用组件。为写成JavaBean，类必须是具体的和公共的，并且具有无参数的构造器。JavaBean 通过提供符合一致性设计模式的公共方法将内部域暴露成员属性，set和get方法获取。众所周知，属性名称符合这种模式，其他Java 类可以通过自省机制(反射机制)发现和操作这些JavaBean 的属性。

四.	JavaScript：JavaScript是一种属于网络的高级脚本语言，已经被广泛用于Web应用开发，常用来为网页添加各式各样的动态功能，为用户提供更流畅美观的浏览效果。通常JavaScript脚本是通过嵌入在HTML中来实现自身的功能的。

五.	CSS：CSS技术介绍 Cascading Style Sheets (层叠样式表) 简写:css css是[ 层叠样式表]。是用于(增强)控制网页样式并允许将样式信息与网页内容分离的一种标记性语言 

六.	DIV：DIV是层叠样式表中的定位技术，全称DIVision，即为划分。有时可以称其为图层。 DIV元素是用来为HTML（标准通用标记语言下的一个应用）文档内大块（block-level）的内容提供结构和背景的元素。
七.	正则表达式：正则表达式描述了一种字符串匹配的模式。一般使用正则表达式主要是实现下面三个需求：
1)	检查一个串是否包含某种形式的子串；
2)	将匹配的子串替换；
3)	从某个串中取出符合条件的子串。
正则表达式是由普通字符（例如 a 到 z）以及特殊字符组成的文字模式。模式描述在搜索文本时要匹配的一个或多个字符串。 正则表达式作为一个模板，将某个字符模式与所搜索的字符串进行匹配。

　 
3 系统需求分析与设计
3.1 业务需求分析
随着图书数量日益增多，书店对图书的管理要求也越来越高，为了使图书信息的管理更加系统化，数字化，方便对会员信息管理，因此我们设计了该图书销售管理系统，用以方便管理员对图书销售和会员信息的管理。
主要实现的功能有：
   管理员对图书信息的管理，包括新增，修改，删除
   网站会员对图书的查找、购买等
 
3.2 功能模块设计
系统采用“自顶向下，逐步求精“的分析与设计方法来完成各功能模块的设计。系统功能模块图如图3-2所示。
管理

图3.2 系统功能模块图 
3.3数据库设计
数据库是网上图书销售系统的重要组成部分。系统中所有的数据，数据间的关系都存储在数据库当中。这样以便于后台对数据的新增、修改、删除查询等各项操作。本系统采用MySQL数据库，数据库的名字为OBBS，数据库中有多张数据表，每个数据表中都有大量的数据，每一行代表着一条记录，每一列代表着一个字段。
3.3.1 数据库实体图
（1）图书及其属性：
 

图3.3.1-1图书实体图
（2）用户及其属性
 
图3.3.1-2用户实体图
（3）销售信息
 
图3.3.1-3销售信息图
(4)管理员信息
 
图3.3.1-4管理员信息图

3.3.2 数据表设计
(1)	图书表
图书表设计如表4-1所示。图书表描述了关于本系统内所有的销售图书信息。

表4-1 图书表
列名	数据类型	约束
图书编号 	 char(13)	主码
书名	varchar(40) 	无
价格	float(2)	检查约束
作者 	varchar(8) 	无
出版社	varchar(30)	      无  
图书类别 	varchar(30)	无
出版时间 	date	无
库存 	int	默认值约束

（2）用户表
     会员表设计如表4-2所示，会员表描述了本系统内所有的会员登录信息。
表4-2用户表
列名	数据类型	约束
账户 	 varchar(10)	主码
密码 	 varchar(18)	非空
姓名	Varchar(8)	无
身份证	char(18)	无


（3）管理员表
     管理员表设计如表4-2所示，管理员表表描述了本系统内所有的管理员信息。
表4-3 管理员表
列名	数据类型	约束
账户	varchar(10)	主码
密码	varchar(18)	非空
姓名	Varchar(8)	无

（4）销售表
    销售表设计如表4-4所示，会员表描述了本系统内所有的图书销售信息。

表4-4销售表
列名	数据类型	约束
销售单号 	varchar(10)	主码
销售日期 	date	非空
销售量 	int	检查约束
管理员工号	char(6)	引用管理员表的外码
图书编号 	char(13)	引用书表的外码






 
4 编码与实现
4.1界面设计与实现
介绍前端页面的设计与核心编码，以及运行界面截图……
4.1.1	登入界面
(1)	功能
1)	背景。通过body background属性进行设置图片，再通过外部导入css对背景图片格式设置。
2)	输入检查。通过导入外部Javascript脚本，检查账户、密码、选择权限是否为空。
3)	账户检查。检查数据库中账户否存在、密码是否一致。
(2)	截图
 
           图4.1.1登录图



4.1.2	注册界面
(1)	功能
1)	背景。通过body background属性进行设置图片，再通过外部导入css对背景图片格式设置。
2)	输入检查。通过导入外部Javascript脚本，检查账户、密码、确认密码、手机号是否为空。账户必须已字母开头，6-18字符，允许字母数字下划线；密码必须6-18字符，允许字母数字下划线；手机号必须11个字符。
3)	注册信息存入。通过输入检查后，且数据库没该注册信息，将用户输入的注册信息存储到数据库。
(2)	截图
 
图4.1.2注册图

4.1.3	登入加载界面
(1)	功能
1)	背景。通过body background属性进行设置图片，再通过外部导入css对背景图片格式设置。
2)	跳转。根据登入页面选的权限，分别跳转到相应界面。
(2)	截图
 
图4.1.3加载界面图

4.1.4	用户主界面
(1)	功能
1)	布局。用frame进行布局分割，分为上、中、下三块。其中中部又分为左、中、右三块。
2)	时间显示。通过导入外部Javascript脚本，获取data对象，用document进行格式输出。
3)	图片显示。通过设置表格的td的body进行图片设置。
(2)	截图
 
图4.1.4用户首页图

4.1.5	管理员主页面
(1)	功能
1)	布局。用frame进行布局分割，分为上、下两块，其中下又分为左右两块。上部主要显示用户名、退出登入。下部左侧显示管理功能。下部右侧显示相应窗口。
(2)	截图
 
图4.1.5管理员首页图

4.1.6	图书库存信息管理界面
(1)	功能
1)	库存信息分页显示。当图书库存表有过多记录时，自动进行分页显示，以及有上一页、下一页、跳转到某一页分别用图标显示。
2)	添加信息。对用户信息进行检查，若非空且记录没存在，存入数据库。
3)	删除信息。选中相应记录行，点击该记录的删除操作，即可删除界面。
4)	修改信息。点击相应修改操作，跳转到新页面，自动填充该记录的图书编号，修改相应信息，点击修改，将修改的信息存入数据库跳转至主页面。
(2)	截图
 
图4.1.6-1图书库存信息管理图

 
图4.1.6-2图书库存信息添加图

4.1.7	图书销售信息管理
(1)	功能
1)	库存信息分页显示。当图书库存表有过多记录时，自动进行分页显示，以及有上一页、下一页、跳转到某一页。
2)	查询图书总销售量。输入图书编号和年份信息，点击查询即可在总销售量显示信息。
(2)	截图
 

图4.1.7图书销售信息管理图


4.2	核心业务类设计与编码
4.2.1	实体Bean
(1)	Admor类，用于初始化管理员实体。属性有账户、密码；方法有设置账户、设置密码、获取账户、获取密码。
(2)	User类，用于初始化用户实体。属性有账户、密码；方法有设置账户、设置密码、获取账户、获取密码。
(3)	Books类，用于初始化图书实体。属性有图书编号、图书名、价格、作者、库存、类别、出版社、出版年、出版月、出版日。方法有设置图书编号、设置图书名、设置价格、设置作者、设置库存、设置类别、设置出版社、设置出版年、设置出版月、设置出版日、获取图书编号、获取图书名、获取价格、获取作者、获取库存、获取类别、获取出版时间。
4.2.2	工具Bean
(1)	AdmorDao
1)	查询管理员表信息
先建立数据库连接，传入Admor对象，获取用户账户和密码，通过sql的select语句结合获取到的信息进行检查。如果成功返回1，失败返回0。
2)	插入管理员表信息
先建立数据库连接，传入Admor对象，获取用户账户和密码，通过sql的insert语句结合获取到的信息进行插入。如果成功返回1，失败返回0。
(2)	UserDao
1)	查询用户表信息
先建立数据库连接，传入Admor对象，获取用户账户和密码，通过sql的select语句结合获取到的信息进行检查。如果成功返回1，失败返回0。
2)	插入用户表信息
先建立数据库连接，传入Admor对象，获取用户账户和密码，通过sql的insert语句结合获取到的信息进行插入。如果成功返回1，失败返回0。
(3)	OBSSDataBase
负责加载驱动，建立连接。
(4)	BooksDao
1)	查询图书表信息
先建立数据库连接，传入Books对象，获取图书编号，通过sql的select语句结合获取到的信息进行检查。如果成功返回1，失败返回0。
2)	删除图书表信息
先建立数据库连接，传入Books对象，获取图书编号，通过sql的delete语句结合获取到的信息进行删除。如果成功返回1，失败返回0。
3)	插入图书表信息
先建立数据库连接，传入Books对象，获取图书编号、图书名、价格、作者、库存、类别、出版社、出版年、出版月、出版日，通过sql的insert语句结合获取到的信息进行插入。如果成功返回1，失败返回0。
4.2.3	控制servlet
(1)	第一层登入注册控制FirstFloorServlet
先获取标记flag标记，是登入还是注册。
1)	如果是登入，先获取标记who、获取登入信息，如果who标记是用户，初始化初始化user对象，使用工具类OBSSDataBase 进行数据库连接，使用工具类userDao进行插入，成功跳转加载页面，失败重新返回登入界面。如果who标记是管理员同理。
2)	如果是注册，先获取注册信息，初始化实体类user对象，用工具类进行检查账户是否已经存在，如果不存在，则使用工具类userDao对注册信息插入，如果成功跳转到登入界面，如果失败跳转到注册界面。
(2)	第二层图书增删改查控制SecondFloorUserServlet
在doget里获取flag标记删除，在dopost里获取flag标记插入。
1)	如果doget获取到删除，则获取图书编号，初始化实体类Books，用工具类BooksDao进行删除，如果成功跳转到主页。
2)	如果dopost里获取到插入，则获取主页输入的要添加的图书信息，初始化实体类Books对象，再获取标记isAlter，如果标记是修改，则用工具类BooksDao进行删除信息，再用工具类BooksDao进行插入。如果不是修改则可直接插入。如果插入成功返回主页，如果插入失败则返回标记用于操作失败。



























4.3	运行效果
4.3.1	登入
1)	未输入账户或密码
 
图4.3.1-1错误1图

2)	未选择角色
 
图4.3.1-2错误2图

3)	密码错误
 
图4.3.1-3错误3图

4.3.2	注册
1)	未输入信息
 
图4.3.2-1错误1图

2)	输入信息不合法
 
图4.3.2-2错误2图

3)	账户已存在
 
图4.3.2-3错误3图

4.3.3	用户首页
 
图4.3.3用户首页图

4.3.4	管理员首页
 
图4.3.4管理员首页图

4.3.5	图书库存信息管理
1)	翻页
 
图4.3.5-1界面翻页图

2)	修改失败
 
图4.3.5-2修改失败图
4.3.6	图书销售信息管理
1)	查询图书编号10001在2022年总销售量
 
图4.3.6图书查询图
5 总   结
一、我们在设计jsp课程设计中，在运行时总是会出现各种各样的问题，大家一起经过讨论，查找资料来解决问题，在发现问题，解决问题的过程中我们都是很有收获，对设计jsp的页面设计时，为了使页面更加的统一和整洁，我们一起超越资料，学习CSS使我们的界面更加的统一整齐。
二、在进行jsp文件与数据库的连接时，我们需要做好数据库的设计，在执行命令之后，要随时准备查看数据库的表中变化，如果数据库的表中没有变化，可以试试刷新。在数据库的表中命名要做到具有标识性，见名知意。
