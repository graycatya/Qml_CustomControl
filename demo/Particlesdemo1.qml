import QtQuick 2.12 
import QtQuick.Particles 2.12 
import "../CustomControl"

Rectangle {
    id: root 
    width: 480; height: 200
    color: "#1f1f1f"

    ParticleSystem {
        id: particleSystem
    }

    Emitter {
        id: emitter 
        anchors.centerIn: parent 
        anchors.left: parent.left
        width: 1; height: 1
        system: particleSystem 
        emitRate: 10 
        lifeSpan: 6400 
        lifeSpanVariation: 400
        size: 32 
        velocity: AngleDirection{
            angle: 0
            angleVariation: 15
            magnitude: 100
            magnitudeVariation: 50
        }
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