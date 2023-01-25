import 'dart:ffi';

class ayatoftheday {
  final String? arText;
  final String? enTran;
  final String? surEnName;
  final Int? surNumber;

  ayatoftheday({this.arText, this.enTran, this.surEnName, this.surNumber});

  factory ayatoftheday.fromJSON(Map<String, dynamic> json) {
    return ayatoftheday(
        arText: json['data'][0]['text'],
        enTran: json['data'][2]['text'],
        surEnName: json['data'][2]['surah']['englishName'],
        surNumber: json['data'][2]['numberInSurah']);
  }
}
