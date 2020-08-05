import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Delay Button Example")

    Label {
        y: 50
        width: parent.width
        wrapMode: Label.Wrap
        horizontalAlignment: Qt.AlignHCenter
        text: "Delayed Button. This text, I am adding to check the property wrapmode. If the text is too long , it should wrap"
        font.pointSize: 15

    }

    DelayButton{
        text: "Delay Button"
        anchors.centerIn: parent
        delay: 3000

        onActivated: {
            console.log("Button Activated")
        }
        onProgressChanged: {
            console.log(progress)
        }
    }
}
