

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      
      body: Obx(
        (() =>_controller.isLoading.value? const CircularProgressIndicator():Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ImageID: ${_controller.imgList[0].albumId}'),
              Text('ID: ${_controller.imgList[0].id}'),
              Text('Title: ${_controller.imgList[0].title}'),
              Image.network(_controller.imgList[0].thumbnailUrl)
            ],
          ),
      
        )),
      ),
    );
  }
}
