# Qml_CustomControl

## 徽章:
----

| Gitee | |
|:----:|:----:|
|![gitee-start]|![gitee-fork]|

[gitee-start]: https://gitee.com/greycatah/Qml_CustomControl/badge/star.svg?theme=dark

[gitee-fork]: https://gitee.com/greycatah/Qml_CustomControl/badge/fork.svg?theme=dark

| Github | | | |
|:----:|:----:|:----:|:----:|
|![github-issues]|![github-stars]|![github-forks]|![github-license]|

[github-issues]: https://img.shields.io/github/issues/graycatya/Qml_CustomControl
[github-forks]: https://img.shields.io/github/forks/graycatya/Qml_CustomControl
[github-stars]: https://img.shields.io/github/stars/graycatya/Qml_CustomControl
[github-license]: https://img.shields.io/github/license/graycatya/Qml_CustomControl







## 说明:
----

这是一个Qml&QtQuick控件集,持续更新。

控件等级:
 * 1级控件在文件夹(CustomControl)中,就是案例中用到的轮子，有了轮子就能跑起来了。
 * 2级控件在文件夹(Test)中,它们是基于1级控件封装而成。

实现原理:可参考《Qt Quick核心编程》,《Qt Creator快速入门》,《Qt及Qt Quick开发实战精解》,《Qt 5编程入门》.

参考博客: 
 * [武威涛哥](https://jaredtao.gitee.io/) 

开发&设计工具:
 * [Qt Design Studio](http://download.qt.io/development_releases/qtdesignstudio/)
 * [Qt 安装包](http://download.qt.io/development_releases/qt/)

 ## 控件&案例已测试过的环境

 * Windows10
 * Linux
 * macOs10
 * 树莓派3b+:[树莓派交叉编译配置](http://www.graycatya.com/article/1)

 ## Qml 自绘方案

* Qml Canvas
>Qml中提供了Canvas组件, Qt5.0开始就有了,可以使用html大部分Canvas方案，但是性能不怎么好。
* Qml Shapes
>Qml Shapes是Qt5.10版本新增加的功能，它是官方提供的易用性以及性能的最佳方案。
* Qml SceneGraph

* Qml QQuickFrameBufferObject

* Qml ShaderEffect

* QVulkanWindow
>OpenGL的下一代, Qt 5.10开始, 也提供了vulkan的支持。


## 案例测试方式:

qmlscene测试工具.

Qt Design Studio.

Qt Creator.

## QtQuick控件说明

|  控件名   | 功能  | 案例 |
|  :----:  | :----: | :----: | 
| ImageMove  | 图片移动 | [MarkDown](Test/ImageMoveTest/README.md)  |
| ImageScale  | 图片缩放 | [MarkDown](Test/ImageScaleTest/README.md) |
| IpTextInput  | Ip输入框 | [MarkDown](Test/IpTextInputTest/README.md) |
| Marquee  | 文字滚动(跑马灯) | [MarkDown](Test/MarqueeTest/README.md) |
| DragWidget&DragSizeWidget | 拖拽控件&控件大小调整 | [MarkDown](Test/DragWidgetTest/README.md) |
| Fps | 画面每秒传输帧数 | [MarkDown](Test/FpsTest/README.md) |
| ImageFlipable | 图片翻转 | [MarkDown](Test/ImageFlipableTest/README.md) |
| RotateCursor | 控件旋转器 | [MarkDown](Test/RotateCursorTest/README.md) |
| TemplateWidget | 自定义拖动控件 | [MarkDown](Test/TemplateWidgetTest/README.md) |
| TextOneByOneShow | 文字逐个显示 | [MarkDown](Test/TextOneByOneShowTest/README.md) |
| ArcProgressBar(基于Qml Shapes) | 圆弧&圆环型进度条 | [MarkDown](Test/ArcProgressBarTest/README.md) |
| ArcProgressBarCanvas(基于Qml Canvas) | 圆弧&圆环型进度条 | [MarkDown](Test/ArcProgressBarCanvasTest/README.md) |
| BarTypeProgressBar | 条型进度条 | [MarkDown](Test/BarTypeProgressBarTest/README.md) |
| ImageFlicker | 图片定时闪烁 | [MarkDown](Test/ImageFlickerTest/README.md) |


QtQuick 综合案例 - Qml二维码生成
------

| 案例名称 | 名称 | 案例 |
|  :----:  | :----: | :----: | 
| QrenCode | Qml二维码生成 | [MarkDown](QrenCode/README.md) |


QtQuick 综合案例 - Qml轻量级日志系统(C++)
------

| 案例名称 | 名称 | 案例 |
|  :----:  | :----: | :----: | 
| QmlLog  | Qml轻量级日志模块 | [MarkDown](QmlLog/README.md) |



QtQuick 综合案例 - 惠州地铁一号线
------

| 案例名称 | 名称 | 案例 |
|  :----:  | :----: | :----: | 
| MetroDemo | 惠州地铁一号线案例 | [MarkDown](Test/MetroDemo/README.md) |

[百度云：PS站点原图](https://pan.baidu.com/s/1m4uZPFJU1via8HauirFzGQ)

>提取码：zag4

