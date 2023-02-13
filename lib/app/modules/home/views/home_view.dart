import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malavika_app/app/modules/home/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Posts'),
            ),
            body: controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : ListView(
                    children: controller.posts
                        .map<Widget>((post) => Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(post.title),
                      Image.network("${post.url}")
                    ],
                  ),
                ),
              ))
                        .toList(),
                  ),
          );
        });
  }
}