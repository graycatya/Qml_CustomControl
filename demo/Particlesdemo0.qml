import QtQuick 2.12 
import QtQuick.Particles 2.12 
import "../CustomControl"

Rectangle { 
    id: root 
    width: 1920; height: 1080
    color: "#1f1f1f"

    ParticleSystem {
        id: particleSystem 
    }

    Emitter{
        id: emitter 
        anchors.centerIn: parent 
        width: 1920; height: 1080
        system: particleSystem
        emitRate: 16383
        lifeSpan: 1000
        size: 32
        endSize: 12

    }

    ImageParticle {
        source: "assets/star.png"
        system: particleSystem
        color: "#FFD700"
        colorVariation: 0.8
        rotation: 0
        rotationVariation: 15
        rotationVelocity: 45
        rotationVelocityVariation: 15
        entryEffect: ImageParticle.Scale
    }

    Fps {
        //x: 0; y: 32
    }
}