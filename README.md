# wx-MiniProgram
微信小程序仿饮品外卖
# 预览说明
1.将服务端和客户端项目的代码下拉至本地。

2.下载微信官方开发者工具。（微信官方开发者工具编辑器代码提示较少，工具经常出现莫名的bug，编辑卡顿等。所以在编辑代码的时候大多数开发者会选择vscode编辑器进行编辑，vscode中有大量插件如minapp、wechat-snippet、wxml等对开发者友好的插件工具，然后在微信官方开发者工具上进行预览，提高开发效率）
微信开发者工具的下载地址：
[https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html](https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200306101950858.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjM4ODcx,size_16,color_FFFFFF,t_70)

这里建议开发者选择稳定版下载。

3.将项目导入到开发者工具中，点击测试号自动生成APPID即可。（如果需要自己开发项目建议在开发者设置中注册账号使用自己的APPID）

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200306102037655.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjM4ODcx,size_16,color_FFFFFF,t_70)


4.在导航栏上点击详情，在本地设置中勾选“不检验合法域名..”的选项，因为微信小程序是不允许随便访问 URL 的，需要在小程序的“设置”->“开发设置”中，把域名配置进去。但是在开发环境下可以暂时不配置。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200306102158663.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjM4ODcx,size_16,color_FFFFFF,t_70)

5.如果需要使用手机进行预览，若在本地服务端环境下，需要将测试手机与服务端放在同一个局域网中，以本项目为例，需在network.js文件中，将ip改为本地IP地址。（请求的地址不得使用localhost，而应改成本地服务器所在的电脑IP）

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200306102237159.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjM4ODcx,size_16,color_FFFFFF,t_70)
点击预览开发工具会自动打包当前项目，并上传小程序代码到微信服务器上，成功之后就会显示一个二维码。使用微信扫描二维码进行页面展示。

6.也可直接再开发者工具的模拟器模块上进行预览，但是部分后台API功能受限不能正确的显示。

7.服务端的话，配置好数据库。使用工具打开启动即可。
