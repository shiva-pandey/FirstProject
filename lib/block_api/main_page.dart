import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block_api/blocapi.dart';
import 'package:gym/block_api/post_state.dart';
 // import 'package:gym/block_api/fetch_post.dart';


class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}
class _PostPageState extends State<PostPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final Cubit = context.read<PostCubit>();  // get the bloc -> postcubit
       Cubit.fetchPosts(); // get the function inside the bloc
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("POST From API")),
      body: 
      BlocBuilder<PostCubit,PostState>(
        builder: (context, state){
         if(state is PostLoadingState){return Center(child: CircularProgressIndicator());}
       else if(state is PostLoadedState){
           final todos = state.posts;
           return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context,index){
           final todo = todos[index];
           return ListTile(
            title: Text(todo.title),
           );
           });
         } else if(state is PostErrorState){
          return Text(state.error);
         } 
         return Center(child: Text(state.toString()));  
        })







      /* SafeArea(child: BlocBuilder<PostCubit,PostState>(
        builder: (context,state){
           if(state is PostLoadingState){ return  Center(child: CircularProgressIndicator());}
           if(state is PostLoadedState){
            return
             FutureBuilder(
        future: FetchClass().fetchPosts(),
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
          } return Center(child: CircularProgressIndicator());
        }
        ); 
           }  return Center(child: Text("pt"),);
        })
      ), */
    );
  }
}