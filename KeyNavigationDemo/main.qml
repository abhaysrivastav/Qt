import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Key Navigation Demo")

    Row {
        anchors.centerIn: parent

        Rectangle{
            id : firstRectId
            width: 200
            height: width
            border.color: "black"
            color: "green"
            focus: true

            onFocusChanged: {
                if(focus === true)
                {
                    color = "gray"
                }else{
                    color = "green"
                }

            }
            Keys.onDigit5Pressed: {
                console.log("I am rect 1")
            }
            KeyNavigation.right: secondRectId

        }

        Rectangle{
            id : secondRectId
            width: 200
            height: width
            border.color: "black"
            color: "blue"

            onFocusChanged: {
                if(focus === true)
                {
                    color = "gray"
                }else{
                    color = "blue"
                }

            }

            Keys.onDigit5Pressed: {
                console.log("I am rect 2")
            }
            KeyNavigation.left: firstRectId

        }


    }
}
