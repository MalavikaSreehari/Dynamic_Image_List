import 'dart:convert';

import 'package:get/get.dart';
import 'package:malavika_app/app/data/models/img.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {

  //TODO: Implement HomeController
  var imgList=<Img>[].obs;
  var isLoading= true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchImgData();
  }

  Future<void> fetchImgData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    print(response);
    if(response.statusCode == 200) {
      Img _imgModel = Img.fromJson(jsonDecode(response.body));

      imgList.add(Img(albumId: _imgModel.albumId, id: _imgModel.id, title: _imgModel.title, url: _imgModel.url, thumbnailUrl: _imgModel.thumbnailUrl),);

      isLoading.value = true;
    }
    else{
      Get.snackbar('Error loading data!', 'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
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
}
