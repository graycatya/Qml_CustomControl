[返回](../../README.md) 

# 惠州地铁动态地图案例

目录内容

```
.
├── ArcPathway.qml(圆弧轨道进度条)
├── CurrentStationUi.qml(到达站显示界面)
├── DoorOpen.qml(开门动画)
├── DoorOtherOpened.qml(禁止开门动画)
├── main.qml
├── NextStationUi.qml(下一站显示界面)
├── Pathway.qml(条形轨道进度条)
├── README.md
├── StationAnimation.qml(站点动画)
├── StationName.qml(站点名控件)
├── Station.qml(站点)
├── Train.qml(列车动画控件)
├── UiConfig.js(站点中英文名定义)
└── WelcomeUi.qml(启动界面显示)
```

***main.qml***为程序入口

```
    //第一个文字逐个显示界面(软件启动显示)
    WelcomeUi {
        id: welcomeui
        visible: true
    }
    //到达站-显示界面
    CurrentStationUi {
        id: currentstationui 
        visible: false
        endstation: root.endstation
        thisstation: root.startstation
        doorOpen: root.doorOpen
        just: root.just 
    }
    //下一站显示界面
    NextStationUi {
        id: nextstationui
        visible: false
        startstation: root.startstation
        endstation: root.endstation 
        nextstation: root.nextstation 
        just: root.just 
    }
```

## Fps控件

```
//在3个界面中都有使用用来测试画面刷新率
    Fps {
        x: 1270; y: 0
        implicitHeight: 26
        implicitWidth: 26
        textSize: 26
    }
```


# 效果

![MetroDemo](../../gif/MetroDemo.gif)