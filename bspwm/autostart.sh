#!/bin/bash
function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
nitrogen --restore &
run rclone --vfs-cache-mode writes mount "onedrive": ~/OneDrive
run keepassxc
run qv2ray
run OctaneServer
