[返回](../README.md)

# Qml&C++轻量级日志模块

* 模块提供C++实现的Qml轻量级日志模块

* 自行编译需要C++11的支持

## 目录结构


```
.
├── CMakeLists.txt
├── Demo.qml
├── Log
│   ├── CatLog_Message.hpp
│   ├── CatLog_Sington.cpp
│   ├── CatLog_Sington.h
│   └── CMakeLists.txt
├── main.cpp
├── main.qml
├── QmlCatLog
│   ├── CMakeLists.txt
│   ├── QmlCatLog.cpp
│   └── QmlCatLog.h
└── README.md
```

模块划分

***Log目录是C++实现的日志模块***
* 单例模式+多生产者-单消费者模型

* 支持线程安全

* 内部提供打印模块实现(该模块支持在Qt中使用)

* 内部提供写文件模块该模块可将日志写入文件(支持线程安全,多文件写日志)

* 日志模块内部提供Log数据头实现(获取时间,文件路径,函数名,触发日志所在行)

```
├── Log
│   ├── CatLog_Message.hpp
│   ├── CatLog_Sington.cpp
│   ├── CatLog_Sington.h
│   └── CMakeLists.txt
```


***QmlCatLog目录提供的是C++实现的Qml日志中间件有了它Qml才能调用Log目录下的实现***
* 单例模式

* 支持线程安全

* 内部提供写文件模块该模块可将日志写入文件(支持线程安全,多文件写日志)

* 日志模块内部提供Log数据头实现(获取时间,文件路径,函数名,触发日志所在行)

* 模块可扩展成网络日志

```
├── QmlCatLog
│   ├── CMakeLists.txt
│   ├── QmlCatLog.cpp
│   └── QmlCatLog.h
```

# Example

main.cpp
```
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QMLCATLOG::CatLog *CatLog = QMLCATLOG::CatLog::Instance();

    QQmlApplicationEngine engine;
    //需要将模块注册到qml中，改模块就能在qml所有子控件中使用
    engine.rootContext()->setContextProperty("catlog", CatLog);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
```

main.qml
```
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Demo {}
    Component.onCompleted: {
        console.debug("************************");
        var i = 0;
        for(i = 0; i < 100; i++)
            //调用方式需要与定义时的名字一样
            catlog.debug_print("QMLLOG: " + i);
    }
}
```