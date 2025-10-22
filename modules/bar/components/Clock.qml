import Quickshell
import QtQuick

Rectangle {
  id: root
  // color: "#212121"
  // radius: 4
  implicitWidth: text.implicitWidth + 16
  // implicitHeight: text.implicitHeight + 8

  Row{
    id: row
    anchors.centerIn: parent
    spacing: 16

    Text {
      id: date
      text: Qt.formatDateTime(clock.date, "MMM dd")
      color: "white"
    }

    Text {
      id: time
      text: Qt.formatDateTime(clock.date, "hh:mm aP")
      color: "white"
    }
  }
  
  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}