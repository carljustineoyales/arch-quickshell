import Quickshell
import QtQuick

Rectangle {
  id: root
  implicitWidth: row.implicitWidth + 16
  implicitHeight: 20
  color: "#474747"
  radius: 100

  Row {
    id: row
    anchors.centerIn: parent
    spacing: 16

    Text {
      id: date
      text: Qt.formatDateTime(clock.date, "MMM dd")
      color: "#FDFDFD"
    }

    Text {
      id: time
      text: Qt.formatDateTime(clock.date, "hh:mm aP")
      color: "#FDFDFD"
    }
  }

  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}