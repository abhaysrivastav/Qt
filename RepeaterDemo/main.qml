import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Repeater Demo")

    Column {
        width: parent.width
        anchors.centerIn: parent
        Repeater{
            model : 10
            delegate :Rectangle {
                width: parent.width
                height: 40
                border.width: 1
                color: "skyblue"

                Text {
                    anchors.centerIn: parent
                    text: modelData
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Clicked on" + modelData)
                    }

                }
            }
        }
    }
}
