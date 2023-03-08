import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Create a Form")
    property int value: 0
    color:"white"

    Row{
        x:10;y:40
        spacing: 10
        Rectangle{
            width: txt1.implicitWidth +20
            height: txt1.implicitHeight +20
            radius:10
            color: "beige"
            border.color: "black"
            Text{
                id:txt1
                anchors.centerIn: parent
                text:"Name:"
                font.family: "arial"

            }
        }
                TextField{
                    width: 180
                    placeholderText: qsTr("Enter name")
                    font.pointSize: 10
                    font.family:"consolas"
                    validator: RegularExpressionValidator {
                      regularExpression: /[a-zA-F]{1,20}/
                    }
                }
        }
    Row{
        x:10;y:100
        spacing: 10
        Rectangle{
            width: txt3.implicitWidth +20
            height: txt3.implicitHeight +20
            radius:10
            border.color: "black"

            color: "beige"
            Text{
                id:txt3
                anchors.centerIn: parent
                text:"Age:"
                font.family: "arial"
            }
        }

        TextField{
            width: 150
            placeholderText: qsTr("Enter Age")
            font.pointSize: 10
            font.family:"consolas"
            maximumLength:3
            validator: IntValidator{
                bottom: 1;top: 999
            }
        }
    }
    Row{
        x:10;y:160
        spacing: 10
        Rectangle{
            width: txt5.implicitWidth +20
            height: txt5.implicitHeight +20
            color: "beige"
            border.color: "black"
            radius:10
            Text{
                id:txt5
                anchors.centerIn: parent
                text:"Email:"
                font.family: "arial"
            }
        }
        TextField{
            width: 200
            placeholderText: qsTr("Enter the Email")
            font.pointSize: 10
            font.family:"consolas"
            validator: RegularExpressionValidator{
                regularExpression: /[a-zA-Z]{1,}[1-9]{0,}@gmail[.]{1}com/
            }
        }
    }
}
