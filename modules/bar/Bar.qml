import Quickshell
import QtQuick

import "components"

PanelWindow {
  id: root

  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 28
  color: "#000000"

  Workspaces {
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
  }

  Clock {
    anchors.centerIn: parent
  }

  Tray{
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
  }
}