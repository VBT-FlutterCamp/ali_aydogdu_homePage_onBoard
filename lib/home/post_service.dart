import 'package:http/http.dart' as http;
import 'package:onboard_homepages/home/post_model.dart';

class PostService {
  Future<List<PostModel>> fetchPost() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

    if (response.statusCode == 200) {
      return postModelFromJson(response.body);
    } else {
      throw Exception("postlar gelmedi");
    }
  }
}
