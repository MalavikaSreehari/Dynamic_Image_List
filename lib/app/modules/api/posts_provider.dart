import 'package:get/get.dart';



class PostsProvider extends GetConnect {
  Future<Response> getPosts() => get('https://jsonplaceholder.typicode.com/photos');
}