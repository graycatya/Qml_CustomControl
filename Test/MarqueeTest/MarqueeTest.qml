import QtQuick 2.12

import "../../CustomControl"

Marquee {
    width: 300
    height:  50
    text: "我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖! 我是一颗跳跳糖!"
    font.pointSize: 26
    state: "lefttoright"
    animation_running: true
    animation_duration: 25000
}