import 'package:get/get.dart';

import '../models/img_model.dart';

class ImgProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Img.fromJson(map);
      if (map is List) return map.map((item) => Img.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/photos';
  }

  Future<Img?> getImg(int id) async {
    final response = await get('img/$id');
    return response.body;
  }

  Future<Response<Img>> postImg(Img img) async => await post('img', img);
  Future<Response> deleteImg(int id) async => await delete('img/$id');
}
