

// creat fetchpost method in fetchclass
import 'dart:convert';
 
 import 'package:http/http.dart';

class FetchClass{
    final URL =  "https://jsonplaceholder.typicode.com/posts";
Future<List<PostModel>> fetchPosts()async{
try {
final response = await get(Uri.parse(URL));
  List<dynamic> jsonData = jsonDecode(response.body);
  return jsonData.map((dynamic item) => PostModel.fromjson(item)).toList();
}catch(err){throw err;}
  }
}
// creat model class
class PostModel{
 final String title;

PostModel({ required this.title });
factory PostModel.fromjson(Map<dynamic,String> json){
return PostModel(title: json["title"]as String);
} }



