import QtQuick 2.15

Item {
    id:itm
    width:rect2.width
        height:rect2.height
        visible: false
        property int value2: 1
        signal sign(int value2)

        function receiverInfo(value){
            console.log("The displayed page is : page "+value);
            win.title= qsTr("Page2")
            if(value === 2 ){
                visible=true;
            }
        }


        Rectangle{
            id:rect2
            width:400;height:400
            color: "beige"
            border.color: "black"
            Text{
                id:text2
                text:"Second Page"
                font.pointSize: 30
            }

            Rectangle{
                id:btn2
                anchors.centerIn: parent
                width: btn2txt.implicitWidth+40
                height: btn2txt.implicitHeight+40
                border.color: "black"
                Text{
                    id:btn2txt
                    text:"Previous"
                    anchors.centerIn: parent

                    font.pointSize: 20

                }
                MouseArea{
                    anchors.fill:parent
                    onClicked: {
                        itm.visible=false
                        sign(value2)
                    }
                }
            }

        }
}
