import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("QML Images example")
    property var middle: height / 2
    Image {
        id : localImage
        source: "images/goa"
        height: 300
        fillMode: Image.PreserveAspectFit
        x : 300
        y : middle - 100
    }

    Image {
        id : remoteImage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"

        width: 100
        fillMode: Image.PreserveAspectFit

        x: 100
        y: middle

        onProgressChanged: console.log(remoteImage.progress)
        onStatusChanged: if (remoteImage.status == Image.Ready) console.log("Remote Image was loaded")
    }


}
