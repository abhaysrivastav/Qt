import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    id: root
    signal clicked(int value)

    Column {
        id: col
        Grid {
            id: grid
            columns: 3
            rows: 4
            spacing: 5
        }
    }

    function doClicked(value)
    {
        console.log(value)
        clicked(value)
    }

    Component.onCompleted: {
        console.log("Creating Button")
        var num = 0
        for(var i=0; i< 10; i++)
        {
            if(i === 0) num = 7;
            if(i === 3) num = 4;
            if(i === 6) num = 1;
            if(i === 9) num = 0;

            //var btn = Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Controls 2.5; Button{id :btn' + i + '; onClicked:doClicked{'+ num +'}}', grid, "DynamicallyLoaded")
            var btn = Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Controls 2.3; Button {id: btn' + i +'; onClicked:doClicked('+ num +') }',grid,"DynamicallyLoaded")
            btn.text = num
            btn.width = 40
            btn.height = 40
            num++
        }

        // Set the last buttom at the bottom
        var obj = grid.children[grid.children.length - 1]
        obj.parent = col
        obj.width = (40 * grid.columns) + 10
    }
}
