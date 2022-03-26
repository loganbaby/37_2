import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("37_2")
    color: "orange"

    Text {
        id: track
        text:"Track"
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Button {
        id: play
        text:"▶️"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 200

        onClicked: {
            track.text = "Track is playing now";
        }
    }

    Button {
        id: pause
        text: "⏸️"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: 110

        onClicked: {
            track.text = "Track paused";
        }
    }

    Button {
        id: stop
        text:"⏹"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: -110

        onClicked: {
            track.text = "Track stopped";
        }
    }

    Button {
        id: next
        text:"⏩️"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: 220

        onClicked: {
            track.text = "Next track is playing";
            slider.value = 0;
            current_track.value = 0;
        }
    }

    Button {
        id: previous
        text:"⏪️"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: -220

        onClicked: {
            track.text = "Previous track is playing";
            slider.value = 0;
            current_track.value = 0;
        }
    }

    ProgressBar {
        id: current_track
        value: 0.3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 100
    }

    Slider {
        id: slider
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: -150
        text: "Перемотка - >"
        font.pointSize: 14
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 100
        anchors.horizontalCenterOffset: -170
        text: "Текущая песня - >"
        font.pointSize: 14
    }
}
