import 'dart:io';
import 'package:universal_disk_space/universal_disk_space.dart';
class spaceclass {
  final diskSpace = DiskSpace();
  Future <void> SpacePrint()async{
    await diskSpace.scan();
    var disks = diskSpace.disks;
    for (final disk in disks) {
      print(disk.devicePath); // e.g.: 'C:\' in Windows or '/dev/sdc' in Linux
      print(disk.mountPath); // e.g.: 'C:\' or '\\nasdrive' in Windows or '/' in Linux
      print(disk.totalSize.toString()); // in bytes
      print(disk.usedSpace.toString()); // in bytes
      print(disk.availableSpace.toString()); // in bytes
      print('');
    }

  }

}
