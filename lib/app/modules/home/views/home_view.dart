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
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : ListView(
                    children: controller.posts
                        .map<Widget>((post) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                    offset: Offset(
                      1.0, 
                      5.0, 
                    ),
                  )
                ],
                    ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded,
                            color: Colors.grey,)),
                          ],
                      ),
                      Text(post.title),
                      Image.network("${post.url}")
                    ],
                  ),
                ),
              ),
                        ))
                        .toList(),
                  ),
          );
        });
  }
}