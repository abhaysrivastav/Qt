import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property var size: 100

    Rectangle {
        id: background
        color: root.bgcolor
        width: 100
        height: parent.height

        Column{
            anchors.topMargin: -2
            spacing: 20
            anchors.fill: parent

            HoverButton {
                id: hoverButton
                width: 100
                height: 50
                title.text: "Image1"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/2.png"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Image2"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/3.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Image3"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/4.png"
            }
        }
    }

    Rectangle {
        id: rectangle
        color: root.bgcolor
        x : 100
        y : 0
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/1.png"
            anchors.margins: 25
            anchors.fill: parent
        }
    }
}
