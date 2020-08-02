import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Check Box Demo")

    Column {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        y : 100
        CheckBox{
            text: "Option1"
            checked: true
            onCheckStateChanged: {
                if(checked === true)
                {
                    console.log("Option 1 is selected")
                }else{
                    console.log("Option 1 is unselected")
                }
            }
        }

        CheckBox{
            text: "Option2"
        }

        CheckBox{
            text: "Option3"
            enabled: false
        }
    }
}
