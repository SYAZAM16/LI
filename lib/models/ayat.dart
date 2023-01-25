// TODO Implement this library.

import 'dart:ffi';

class ayat {
  final String? arText;
  final String? enTran;
  final String? surEnName;
  final Int? surNumber;

  ayat({this.arText, this.enTran, this.surEnName, this.surNumber});

  factory ayat.fromJSON(Map<String, dynamic> json) {
    return ayat(
        arText: json['data'][0]['text'],
        enTran: json['data'][2]['text'],
        surEnName: json['data'][2]['surah']['englishName'],
        surNumber: json['data'][2]['numberInSurah']);
  }
}
