pactl load-module module-null-sink media.class=Audio/Sink sink_name=Virtual-Mic channel_map=front-left,front-right
pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=Virtual-Mic channel_map=front-left,front-right
pw-link Virtual-Mic:monitor_FL Virtual-Mic:input_FL
pw-link Virtual-Mic:monitor_FR Virtual-Mic:input_FR
