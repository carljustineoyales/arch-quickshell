import Quickshell
import QtQuick

Rectangle {
  id: root
  implicitWidth: row.implicitWidth + 16
  implicitHeight: 20
  color: "#474747"
  radius: 100

  Row{
    id:row
    anchors.centerIn: parent
    spacing: 8

    Text{
      color: "#FDFDFD"
      text: "Power"
    }

    Text{
      color: "#FDFDFD"
      text: "Volume"
    }

    Text{
      color: "#FDFDFD"
      text: "Bluetooth"
    }

    Text{
      color: "#FDFDFD"
      text: "Network"
    }
  }
}