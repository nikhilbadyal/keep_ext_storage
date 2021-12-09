import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keep_ext_storage/keep_ext_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

String error = 'Something bad occurred';

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  var str1 = error;
  var str2 = error;
  var str3 = error;
  var str4 = error;
  var str5 = error;
  var str6 = error;
  var str7 = error;
  var str8 = error;
  var str9 = error;
  var str10 = error;
  var str11 = error;
  var str12 = error;
  var str13 = error;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion =
          await KeepExtStorage.platformVersion ?? 'Unknown platform version';
      str1 = await KeepExtStorage.getExternalStorageDirectory();
      str2 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_ALARMS);
      str3 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_AUDIOBOOKS);
      str4 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_DCIM);
      str5 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_DOCUMENTS);
      str6 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_DOWNLOADS);
      str7 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_MOVIES);
      str8 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_MUSIC);
      str9 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_NOTIFICATIONS);
      str10 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_PICTURES);
      str11 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_PODCASTS);
      str12 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_RINGTONES);
      str13 = await KeepExtStorage.getExternalStoragePublicDirectory(
          KeepExtStorage.DIRECTORY_SCREENSHOTS);
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(children: [
          Text('Running on: $_platformVersion\n'),
          Text('Path is: $str1'),
          Text('Path is: $str2'),
          Text('Path is: $str3'),
          Text('Path is: $str4'),
          Text('Path is: $str5'),
          Text('Path is: $str6'),
          Text('Path is: $str7'),
          Text('Path is: $str8'),
          Text('Path is: $str9'),
          Text('Path is: $str10'),
          Text('Path is: $str11'),
          Text('Path is: $str12'),
          Text('Path is: $str13'),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            const fileName = 'TestFile.txt';
            var file = await File('$str1/$fileName').create();
            await file.writeAsString(str1);
            file = await File('$str2/$fileName').create(recursive: true);
            await file.writeAsString(str2);
            file = await File('$str3/$fileName').create(recursive: true);
            await file.writeAsString(str3);
            file = await File('$str4/$fileName').create(recursive: true);
            await file.writeAsString(str4);
            file = await File('$str5/$fileName').create(recursive: true);
            await file.writeAsString(str5);
            file = await File('$str6/$fileName').create(recursive: true);
            await file.writeAsString(str6);
            file = await File('$str7/$fileName').create(recursive: true);
            await file.writeAsString(str7);
            file = await File('$str8/$fileName').create(recursive: true);
            await file.writeAsString(str8);
            file = await File('$str9/$fileName').create(recursive: true);
            await file.writeAsString(str9);
            file = await File('$str10/$fileName').create(recursive: true);
            await file.writeAsString(str10);
            file = await File('$str11/$fileName').create(recursive: true);
            await file.writeAsString(str11);
            file = await File('$str12/$fileName').create(recursive: true);
            await file.writeAsString(str12);
            file = await File('$str13/$fileName').create(recursive: true);
            await file.writeAsString(str13);
          },
          label: const Text('Save files to all'),
        ),
      ),
    );
  }
}
