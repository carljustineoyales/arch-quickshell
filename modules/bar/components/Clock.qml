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

  Row {
    id: row
    anchors.centerIn: parent
    spacing: 16

    Text {
      id: date
      text: Qt.formatDateTime(clock.date, "MMM dd")
      color: "#FDFDFD"
      font.pixelSize: 12
    }

    Text {
      id: time
      text: Qt.formatDateTime(clock.date, "hh:mm aP")
      color: "#FDFDFD"
      font.pixelSize: 12
    }
  }

  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}