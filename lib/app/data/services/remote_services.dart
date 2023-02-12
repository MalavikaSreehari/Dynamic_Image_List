import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:malavika_app/app/data/models/img.dart';

class RemoteService {
  Future<List<Img>?> getImg() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return imgFromJson(json);
    }
  }
}
