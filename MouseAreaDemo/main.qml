import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Mouse Area Demo")

    Rectangle {

        id : containerRectId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle{
            id: movingRectId
            width: 50
            height: 50
            color: "blue"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                console.log(mouse.y)
                movingRectId.x = mouse.x
                movingRectId.y = mouse.y
            }

            onWheel: {
                console.log("X : " + wheel.x + "Y: " + wheel.y)
            }

        }

    }
}
