import QtQuick 2.0

Item {
    id: root
    height: 100
    width: 100
    property color color: "yellow"
    property color colorClicked: "green"
    property string title: "Click Me"

    Rectangle {
        id: myRect
        anchors.fill: parent
        color: root.color

        Text {
            id: display
            text: root.title
            anchors.centerIn: parent
        }
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }

}
