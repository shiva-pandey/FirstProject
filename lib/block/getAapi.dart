import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class getApi1 extends StatefulWidget {
  const getApi1({super.key});

  @override
  State<getApi1> createState() => _getApi1State();
}

class _getApi1State extends State<getApi1> {

  final url= "https://jsonplaceholder.typicode.com/posts";
  Future<List<TODO>> fetchTODO()async{
   final response= await get(Uri.parse(url));
   if(response.statusCode == 200){
  List<dynamic> jsonData = jsonDecode(response.body);
  return jsonData.map((dynamic item) => TODO.fromjson(item)).toList();
   }else {throw "Error";}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchTODO(),
        builder:(context, snap) {
          if(snap.hasData && snap.connectionState == ConnectionState.done){
            return ListView.builder(
              itemCount: snap.data == null? 0:  snap.data!.length,
              itemBuilder: (context,i){
                final todo = snap.data![i];
                return ListTile(
                  title: Text("${todo.title}"),
                  
                );
              });
          }
          return Center(child: CircularProgressIndicator());
        }
        ),
    );
  }
}
class TODO {
  final String title;
  TODO({
    required this.title,
      });
      factory TODO.fromjson(Map<String,dynamic>json){
        return TODO(title: json["title"]as String);
      }
}