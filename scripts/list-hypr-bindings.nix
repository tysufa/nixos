{ pkgs, host, ... }:

let
  inherit (import ../hosts/${host}/variables.nix) terminal browser;
in
pkgs.writeShellScriptBin "list-hypr-bindings" ''
  yad --width=800 --height=650 \
  --center \
  --fixed \
  --title="Hyprland Keybindings" \
  --no-buttons \
  --list \
  --column=Key: \
  --column=Description: \
  --column=Command: \
  --timeout=90 \
  --timeout-indicator=right \
  " = Windows/Super/CAPS LOCK" "Modifier Key, used for keybindings" "Doesn't really execute anything by itself." \
  " + ENTER" "Terminal" "${terminal}" \
  " + D" "Terminal" "${terminal}" \
  " + SHIFT + ENTER" "App Launcher" "rofi" \
  " + ALT + W" "Change Wallpaper" "wallsetter" \
  " + Q" "Kill Focused Window" "killactive" \
  " + ALT + F" "Search Websites Like Nix Packages" "web-search" \
  " + SHIFT + N" "Reload SwayNC Styling" "swaync-client -rs" \
  " + F" "Launch Web Browser" "${browser}" \
  " + SHIFT + E" "Launch Emoji Selector" "emopicker9000" \
  " + SHIFT + S" "Take Screenshot" "screenshootin" \
  " + D" "Launch Discord" "discord" \
  " + E" "Launch New File Browser Window" "thunar" \
  " + S" "Launch Spotify" "spotify" \
  " + P" "Pseudo Tiling" "pseudo" \
  " + SHIFT + I" "Toggle Split Direction" "togglesplit" \
  " + SHIFT + F" "Toggle Focused Fullscreen" "fullscreen" \
  " + V" "Toggle Focused Floating" "fullscreen" \
  " + SHIFT + C" "Quit / Exit Hyprland" "exit" \
  " + Left/Right/Up/Down" "Move Focus To Window On The Left/Right/Up/Down" "movefocus,l/r/u/d" \
  " + SHIFT + Left/Right/Up/Down" "Move Focused Window Left/Right/Up/Down" "movewindow,l/r/u/d" \
  " + H/L/K/J" "Move Focus To Window On The Left/Right/Up/Down" "movefocus,l/r/u/d" \
  " + SHIFT + H/L/K/J" "Move Focused Window Left/Right/Up/Down" "movewindow,l/r/u/d" \
  " + SPACE" "Toggle Special Workspace" "togglespecialworkspace" \
  " + SHIFT + SPACE" "Send Focused Window To Special Workspace" "movetoworkspace,special" \
  " + 1-0" "Move To Workspace 1 - 10" "workspace,X" \
  " + SHIFT + 1-0" "Move Focused Window To Workspace 1 - 10" "movetoworkspace,X" \
  " + MOUSE_LEFT" "Move/Drag Window" "movewindow" \
  " + MOUSE_RIGHT" "Resize Window" "resizewindow" \
  "ALT + TAB" "Cycle Window Focus + Bring To Front" "cyclenext & bringactivetotop" \
  ""
''
