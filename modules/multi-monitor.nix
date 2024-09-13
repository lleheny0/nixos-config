{
  # todo: make this less bad
  systemd.tmpfiles.rules = [
    ''f+ /run/gdm/.config/monitors.xml - gdm gdm - <monitors version="2"> <configuration> <logicalmonitor> <x>0</x> <y>0</y> <scale>1</scale> <primary>yes</primary> <monitor> <monitorspec> <connector>DP-1</connector> <vendor>BNQ</vendor> <product>ZOWIE XL LCD</product> <serial>7BK02001SL0</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>119.982</rate> </mode> </monitor> </logicalmonitor> <logicalmonitor> <x>3840</x> <y>0</y> <scale>1</scale> <monitor> <monitorspec> <connector>DP-3</connector> <vendor>HJW</vendor> <product>MACROSILICON</product> <serial>0x0002e9bd</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>60.000</rate> </mode> </monitor> </logicalmonitor> <logicalmonitor> <x>1920</x> <y>0</y> <scale>1</scale> <monitor> <monitorspec> <connector>DP-2</connector> <vendor>DEL</vendor> <product>DELL E2216H</product> <serial>JF44Y65IAM7L</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>60.000</rate> </mode> </monitor> </logicalmonitor> </configuration> </monitors>''
  ];
}
