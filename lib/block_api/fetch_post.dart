

// creat fetchpost method in fetchclass
import 'dart:convert';
 
// import 'package:flutter/material.dart';
import 'package:http/http.dart';

  class FetchClass{
    
Future<List<PostModel>> fetchPosts()async{
const URL =  "https://jsonplaceholder.typicode.com/posts";

final response = await get(Uri.parse(URL));
if(response.statusCode == 200){
  final jsonData = jsonDecode(response.body) as List;
  final result =  jsonData.map((dynamic item) => PostModel.fromjson(item)).toList(); 
   return result;
}else{throw " somthing went wrong ${response.statusCode} ";}
  }
}   


// creat model class
class PostModel{
 final String title;

PostModel({ required this.title });
factory PostModel.fromjson(Map<String,dynamic> json){
return PostModel(title: json["title"]as String);
} }



