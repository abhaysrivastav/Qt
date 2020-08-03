import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML rectangle")

    Rectangle{
        id: myItem
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true
        border.color: "black"
        border.width: 2
        radius: width
        gradient: Gradient{
        GradientStop {position: 0.0; color: "Red"}
        GradientStop {position: 1.0; color: "blue"}

        }
    }
}
