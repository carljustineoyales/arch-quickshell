import Quickshell
import QtQuick

PanelWindow {
  id: root

  anchors {
    top: true
    left: true
    right: true
  }


  implicitHeight: 30

  Rectangle {
    anchors.fill: parent
    color: "#000"

    Text {
      text: "Hello World"
      anchors.centerIn: parent
      color: "white"
    }
  }
}