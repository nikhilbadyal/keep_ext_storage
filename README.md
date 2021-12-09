# keep_ext_storage

A Flutter Plugin to retrieve android's external paths. Forked from
<a href="https://pub.dev/packages/ext_storage" >this package</a><br>

## Features

> **NOTE** This plugin is only supported Android.

```xml

<manifest>
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.USE_BIOMETRIC"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission
        android:name="android.permission.WRITE_EXTERNAL_STORAGE"
        android:maxSdkVersion="28"/>
    <!--    This is necessary for android if your app runs on A11 or above.-->
    <uses-permission
        android:name="android.permission.MANAGE_EXTERNAL_STORAGE"
        tools:ignore="ScopedStorage"/>
</manifest>

```

> **NOTE** After adding below code google might not accept your app. Unless you satsify
> google that this permission is must for your app to work. So kind of tradeOff
> and you need to deicde what to do.

```xml

<manifest>
    <!--    This is necessary for android if your app runs on A11 or above.-->
    <uses-permission
        android:name="android.permission.MANAGE_EXTERNAL_STORAGE"
        tools:ignore="ScopedStorage"/>
</manifest>

```

ExtStorage package calls Android native code, `Environment.getExternalStorageDirectory()`
and `Environment.getExternalStoragePublicDirectory()`.

| ExtStorage                                     | Andorid Native                                  |
|------------------------------------------------|-------------------------------------------------|
| ExtStorage.getExternalStorageDirectory()       | Environment.getExternalStorageDirectory()       |
| ExtStorage.getExternalStoragePublicDirectory() | Environment.getExternalStoragePublicDirectory() |

`ExtStorage.getExternalStoragePublicDirectory()` needs Public Directory Type argument same as
native `getExternalStoragePublicDirectory()`.

| ExtStorage                         | Android Native                      |
|------------------------------------|-------------------------------------|
| ExtStorage.DIRECTORY_MUSIC         | Environment.DIRECTORY_MUSIC         |
| ExtStorage.DIRECTORY_PODCASTS      | Environment.DIRECTORY_PODCASTS      |
| ExtStorage.DIRECTORY_RINGTONES     | Environment.DIRECTORY_RINGTONES     |
| ExtStorage.DIRECTORY_ALARMS        | Environment.DIRECTORY_ALARMS        |
| ExtStorage.DIRECTORY_NOTIFICATIONS | Environment.DIRECTORY_NOTIFICATIONS |
| ExtStorage.DIRECTORY_PICTURES      | Environment.DIRECTORY_PICTURES      |
| ExtStorage.DIRECTORY_MOVIES        | Environment.DIRECTORY_MOVIES        |
| ExtStorage.DIRECTORY_DOWNLOADS     | Environment.DIRECTORY_DOWNLOADS     |
| ExtStorage.DIRECTORY_DCIM          | Environment.DIRECTORY_DCIM          |
| ExtStorage.DIRECTORY_DOCUMENTS     | Environment.DIRECTORY_DOCUMENTS     |
| ExtStorage.DIRECTORY_SCREENSHOTS   | Environment.DIRECTORY_SCREENSHOTS   |
| ExtStorage.DIRECTORY_AUDIOBOOKS    | Environment.DIRECTORY_AUDIOBOOKS    |

## Installation

Add `keep_ext_storage` as a dependency in your project `pubspec.yaml`.

```yaml
dependencies:
  keep_ext_storage: ^latest_version
```

and run the `flutter pub get` to install.

## Usage

First, you write import `keep_ext_storage` package.

```dart
import 'package:keep_ext_storage/keep_ext_storage.dart';
```

And then you use as per need.

```dart

String error = 'Something bad occurred';
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


Future<void> getAllPaths() async {
  try {
    str1 = await KeepextStorage.getExternalStorageDirectory();
    str2 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_ALARMS);
    str3 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_AUDIOBOOKS);
    str4 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_DCIM);
    str5 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_DOCUMENTS);
    str6 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_DOWNLOADS);
    str7 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_MOVIES);
    str8 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_MUSIC);
    str9 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_NOTIFICATIONS);
    str10 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_PICTURES);
    str11 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_PODCASTS);
    str12 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_RINGTONES);
    str13 = await KeepextStorage.getExternalStoragePublicDirectory(
        KeepextStorage.DIRECTORY_SCREENSHOTS);
  } on PlatformException {
    // Handle the error. 
  }

  print('Path is: ' + str1);
  print('Path is: ' + str2);
  print('Path is: ' + str3);
  print('Path is: ' + str4);
  print('Path is: ' + str5);
  print('Path is: ' + str6);
  print('Path is: ' + str7);
  print('Path is: ' + str8);
  print('Path is: ' + str9);
  print('Path is: ' + str10);
  print('Path is: ' + str11);
  print('Path is: ' + str12);
  print('Path is: ' + str13);
}
```

Now if you will print every string from str1 to str13 . You will get

* Path is: /storage/emulated/0
* Path is: /storage/emulated/0/Alarms
* Path is: /storage/emulated/0/Audiobooks
* Path is: /storage/emulated/0/DCIM
* Path is: /storage/emulated/0/Documents
* Path is: /storage/emulated/0/Download
* Path is: /storage/emulated/0/Movies
* Path is: /storage/emulated/0/Music
* Path is: /storage/emulated/0/Notifications
* Path is: /storage/emulated/0/Pictures
* Path is: /storage/emulated/0/Podcasts
* Path is: /storage/emulated/0/Ringtones
* Path is: /storage/emulated/0/Screenshots

