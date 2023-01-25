import 'dart:convert';
import 'package:derma_masjid/models/ayat.dart';
import 'package:derma_masjid/services/ayat2.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

/*class ApiServices {
  var rawdata;

  Future<ayatoftheday> get2() async {
    //for random ayat

    String url =
        "http://api.alquran.cloud/v1/ayah/262/editions/quran-uthmani,en.asad,en.pickthall";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      rawdata = json.decode(response.body);
      // print(rawdata);
      return ayatoftheday.fromJSON(json.decode(response.body));
    } else {
      print("Failed to load");
      throw Exception("Failed to Load Post");
    }
  }

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }
}*/

class ApiServices {
  var rawdata;

  Future<ayatoftheday> get2() async {
    var url =
        "http://api.alquran.cloud/v1/ayah/262/editions/quran-uthmani,en.asad,en.pickthall";
    final response = await http.get(Uri.parse(url));
    var extractedData =
        List<Map<String, dynamic>>.from(json.decode(response.body));
    extractedData.forEach((element) {
      print(element);
    });

    if (response.statusCode == 200) {
      rawdata = json.decode(response.body);
      // print(rawdata);

      return ayatoftheday.fromJSON(json.decode(response.body));
    } else {
      print("Failed to load");
      throw Exception("Failed to Load Post");
    }
  }

  random(min, max) {
    var rn = new Random();

    return min + rn.nextInt(max - min);
  }
}
