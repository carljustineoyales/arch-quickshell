import Quickshell
import QtQuick

Rectangle {
  id: root
  implicitWidth: row.implicitWidth + 16
  implicitHeight: 26
  color: mouse.hovered ? "#474747" : "transparent"
  radius: 100

  // Event handlers
  // HoverHandler {
  //   id: stylus
  //   acceptedDevices: Pointer.Stylus
  //   cursorShape: Qt.CrossCursor
  // }

  HoverHandler {
    id: mouse
    acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
    cursorShape: Qt.PointingHandCursor
  }

  // Components
  Row{
    id:row
    anchors.centerIn: parent
    spacing: 8

    Text{
      color: "#FDFDFD"
      text: "Power"
      font.pixelSize: 12
    }

    Text{
      color: "#FDFDFD"
      text: "Volume"
      font.pixelSize: 12
    }

    Text{
      color: "#FDFDFD"
      text: "Bluetooth"
      font.pixelSize: 12
    }

    Text{
      color: "#FDFDFD"
      text: "Network"
      font.pixelSize: 12
    }
  }
}