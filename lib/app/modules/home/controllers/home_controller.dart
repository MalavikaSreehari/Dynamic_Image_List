import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:malavika_app/app/modules/api/posts_provider.dart';
import 'package:malavika_app/app/data/models/img.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getPosts();
  }

  var posts = <ImageModel>[].obs;
  var loading = false.obs;

  PostsProvider _provider = PostsProvider();

  getPosts() async {
    loading(true);
    var response = await _provider.getPosts();
    if (!response.status.hasError) {
      posts.value = imageModelFromJson(response.bodyString!);
    }
    loading(false);
  }
}