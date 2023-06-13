import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:unsplash/models/photo_response_model.dart';
import 'package:unsplash/utils/constants.dart';

class ApiService {
  static Future<List<PhotoResponseModel>?> fetchImages(
      {String? photoId, String page = '1'}) async {
    if (!await internetCheck()) {
      return null;
    }
    try {
      final uri = Uri.parse(
          "https://api.unsplash.com/photos${photoId == null ? '' : '/$photoId'}?client_id=$apiKey&page=$page&per_page=20");
      final res = await http.get(uri);
      if (photoId != null) {
        return [PhotoResponseModel.fromJson(jsonDecode(res.body))];
      } else {
        return (jsonDecode(res.body) as List)
            .map((e) => PhotoResponseModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      return Future.value(null);
    }
  }

  static Future<bool> internetCheck() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
