import QtQuick 2.0

Rectangle {
    id: root

    function appendChoosenTransformation(nameID: int, transformID: int){
        //list.appendChoosenTransformation(nameID, transformID)
        changeValueWindow.chooseWindowToDisplay(nameID, transformID)
    }

    ChoosenTransformationList{
        id: list
        anchors.fill: root

        Row{
            id: row
            anchors.left: list.left
            anchors.top: list.bottom
            anchors.topMargin: 6
            spacing: 6

            Button{
                id: removeBtn
                width: (list.width / 2) - 3
                height: 50
                text: "Remove selected item"


                MouseArea{
                    id: mouseAreaRemovebtn
                    anchors.fill: parent
                    onClicked: console.log("remove smth")
                }
            }

            Button{
                id: duplicateBtn
                width: (list.width / 2) - 3
                height: 50
                text: "Duplicate selected item"


                MouseArea{
                    id: mouseAreaDuplicatebtn
                    anchors.fill: parent
                    onClicked: console.log("duplicate smth")
                }
            }
        }
        ChangeValueWindow{
            id: changeValueWindow
            width: row.width
            height: 50
            anchors.left: row.left
            anchors.top: row.bottom
            anchors.topMargin: 6
        }
    }


}