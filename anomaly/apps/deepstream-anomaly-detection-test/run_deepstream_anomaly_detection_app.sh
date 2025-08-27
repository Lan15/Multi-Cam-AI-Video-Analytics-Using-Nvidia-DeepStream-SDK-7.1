#!/bin/bash

# Run DeepStream anomaly detection using /dev/video10 and /dev/video4
gnome-terminal -- bash -c "./deepstream-anomaly-detection-app /dev/video4; exec bash"
gnome-terminal -- bash -c "./deepstream-anomaly-detection-app /dev/video10; exec bash"

# Run GStreamer preview on virtual using /dev/video2 and /dev/video8
gnome-terminal -- bash -c "gst-launch-1.0 v4l2src device=/dev/video2 ! videoconvert ! autovideosink; exec bash"
gnome-terminal -- bash -c "gst-launch-1.0 v4l2src device=/dev/video8 ! videoconvert ! autovideosink; exec bash"

