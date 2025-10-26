import QtQuick
import Quickshell
import Quickshell.Hyprland

Item {
  id: root

  /************
  VARIABLES
  ************/
  // TODO: use variables for hex colors
  implicitWidth: row.implicitWidth + 16;
  implicitHeight: 26;

  property list<var> filteredWorkspaces: [];
  property int workspaceSize: 6;
  property int workspaceWidthActive: 30;
  property int workspaceHeightActive: 8;

  /************
  FUNCTIONS
  ************/

  // Filter workspace when component loads
  function filterWorkspaces()
  {
    // Remove special workspaces
    root.filteredWorkspaces = Hyprland.workspaces.values.filter(
      workspace => workspace.id > 0 && !workspace.name.startsWith("special:")
    )
  }

  Connections {
    target: Hyprland.workspaces
    // Run every time Hyprland Workspaces values changed
    function onValuesChanged() {
      filterWorkspaces()
    }
  }

  Component.onCompleted: {
    filterWorkspaces()
  }

  /************
  EVENTS
  ************/

  // FIXME: Fix stylus event handler
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

  /************
  LAYOUT
  ************/
  Row {
    id: row
    anchors.centerIn: parent
    spacing: 8
    z: 2

    // Hyperland Workspaces
    Repeater {
      model: root.filteredWorkspaces
      
      delegate: Rectangle {
        readonly property bool isUrgent: modelData.urgent
        readonly property bool isFocused: modelData.focused
        
        width: isFocused ? workspaceWidthActive : workspaceSize
        height: isFocused ? workspaceHeightActive : workspaceSize
        color: isFocused ? "#FDFDFD" : isUrgent ? "#3584E4" : "#7F7F7F"
        radius: workspaceSize
        transform: Translate {
          // Vertical align items
          y: (workspaceHeightActive - height) / 2
        }
      }
    }
  }
  // FIXME: Change hardcoded width and height
  // Background
  Rectangle {
    implicitWidth: row.implicitWidth + 16
    implicitHeight: 26
    color: mouse.hovered ? "#474747" : "transparent"
    radius: 100
    z: 1
  }
}