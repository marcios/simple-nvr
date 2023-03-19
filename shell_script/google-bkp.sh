#!/bin/bash
cmd="copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s"
dest="/home/pi/home/pi/apps/simple-nvr/save-videos/" "google-drive:cam-videos"

/usr/bin/rclone "$cmd $dest"
#/usr/bin/rclone copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s "/home/pi/home/pi/apps/simple-nvr/save-videos/" "google-drive:cam-videos"