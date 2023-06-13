import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unsplash/models/photo_response_model.dart';
import 'package:unsplash/utils/constants.dart';

class ApiService {
  static Future<List<PhotoResponseModel>?> fetchImages(
      {String? photoId, String page = '1'}) async {
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
      print(e);
      return Future.value(null);
    }
  }
}
