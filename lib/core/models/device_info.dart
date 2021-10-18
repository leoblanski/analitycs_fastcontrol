import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';

class DeviceInfo {
  DeviceInfoPlugin deviceInfoPlugin;

  String? deviceProvider;
  String? deviceName;
  String? deviceVersion;
  String? deviceIdentifier;

  DeviceInfo({required this.deviceInfoPlugin});

  Future<DeviceInfo> loadData() async {
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceProvider = 'android';
        deviceName = build.model;
        deviceVersion = build.version.toString();
        deviceIdentifier = build.androidId; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceProvider = 'ios';
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        deviceIdentifier = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      print('Failed to get platform version');
    }

    return this;
  }
}
