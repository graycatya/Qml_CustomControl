import QtQuick 2.12 

import "../../CustomControl"

Item {
    width: 1366
    height: 256
    Image {
        id:imagebackground
        source: "../../png/background.png"
        width: source.width 
        height: source.height
        asynchronous: true
    }
    Image {
        x: 76; y: 18
        source: "../../png/logotext.png"
        width: source.width 
        height: source.height
        asynchronous: true
    }
    ImageFlipable {
        x: 19; y: 16
        width: 45
        height: 42
        fronturl: "../../png/logo.png"
        backurl: "../../png/logo.png"
        state: "axisY"
    }
    TextOneByOneShow {
        x: 332; y: 96
        textVar: ["欢", " 迎", " 乘", " 坐", " 惠", " 州", " 地", " 铁"]
        textfont {
            pixelSize: 72;
            family: "华文楷体";
        }
        color: "#8b1d22"
    }
}
