import QtQuick 2.0

Item {
    id: root
    property color color: "red"
    property color hoverColor: "pink"
    property color clickColor: "orange"
    property color textColor: "white"
    property color textHover: "black"
    property alias title: display
    property alias area: mousearea

    Rectangle {
        id: rectangle
        width: root.width
        height: root.height
        color: root.color
        clip: true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color: root.textColor
            font.bold: true

        }

        MouseArea {
            id: mousearea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = root.hoverColor
                display.color = root.textHover
            }
            onExited: {
                parent.color = root.color
                display.color = root.textColor
            }
            onPressed: parent.color = root.color
            onReleased: parent.color = root.hoverColor


        }
    }

}






























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
