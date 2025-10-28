feat(xwayland): Add XWayland fixes for Chromium and VS Code

This commit introduces `.desktop` files for Chromium and Visual Studio Code
with specific flags to address common issues when running these applications
on Hyprland with XWayland.

- For Chromium, the `--disable-features=WaylandWpColorManagerV1` flag is
  added to prevent crashes when moving the browser between monitors.

- For Visual Studio Code, the `--ozone-platform-hint=auto` flag is added
  to fix issues with window border rendering.

The main `README.md` has been updated to include a new section that
explains these fixes and provides instructions on how to apply them.
