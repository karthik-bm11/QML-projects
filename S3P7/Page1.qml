import QtQuick 2.15

Item {
    id:itm1
    width:rect1.width
        height:rect1.height
        property int value: 2
        signal sig(int value)

        function receiver2Info(value2){
            console.log("The displayed page is : page "+value2);
            win.title= qsTr("Page1")
            if(value2 === 1 ){
                visible=true;
            }
        }



        Rectangle{
            id:rect1
            width:400;height:400
            color: "beige"
            border.color: "black"
            Text{
                id:text1
                text:"First Page"
                font.pointSize: 30
            }

            Rectangle{
                id:btn1
                anchors.centerIn: parent
                width: btn1txt.implicitWidth+40
                height: btn1txt.implicitHeight+40
                border.color: "black"
                Text{
                    id:btn1txt
                    text:"Next"
                    anchors.centerIn: parent
                    font.pointSize: 20

                }
                MouseArea{
                    anchors.fill:parent
                    onClicked: {
                        itm1.visible=false
                        sig(value)
                    }
                }
            }

        }
    }
