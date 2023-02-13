import 'dart:convert';

import 'package:get/get.dart';
import 'package:malavika_app/app/data/models/img.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var imgList = <Img>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAlbumData();
  }

  Future<void> fetchAlbumData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/3'));

    if (response.statusCode == 200) {
      Img _img = Img.fromJson(jsonDecode(response.body));

      imgList.add(
        Img(
          title: _img.title,
          url: _img.url,
          thumbnailUrl: _img.thumbnailUrl,
          id: _img.id,
          albumId: _img.albumId,
        ),
      );

      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
  // final count = 0.obs;
  
  

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
// }
