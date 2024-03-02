import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

  final List<Map<String, dynamic>>  _allusers =  [
    {                                      //  id is compolsory
      'id' : 1,
      'name' : 'soham',
      'des' : 'hod'
    },
    {
      'id' : 2,
      'name' : 'shivang',
      'des' : 'director'
    },
    {
      'id' : 3,
      'name' : 'rahul',
      'des' : 'head'
    },
    {
      'id' : 4,
      'name' : 'rohan',
      'des' : 'din'
    },
     {
      'id' : 5,
      'name' : 'rajesh',
      'des' : 'watchman'
    },
    {
      'id' : 6,
      'name' : 'amit',
      'des' : 'guard'
    },
    {
      'id' : 7,
      'name' : 'aman',
      'des' : 'gunman'
    },
  ];

 List<Map<String, dynamic>> _founduser = [];                //imp
@override
   initState() {
    _founduser =_allusers;             //imp
    super.initState();
  }
       
       // important
        
void _run( String enteredKeyword){
   List<Map<String, dynamic>> result = [];                                                       //imp
if(enteredKeyword.isEmpty){ result = _allusers; }else{
  result = _allusers
  .where((user) => user['name'].toLowerCase().contains(enteredKeyword.toLowerCase())).toList(); // find words in name
}
setState(() {
  _founduser = result;                    //imp
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("SEARCH BAR"),),
      body:  
      Column(  
        children: [
          Container( height: 70,width: 300,padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(  
              onChanged:(value) => _run(value),                                                      //imp
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              suffixIcon: Icon(Icons.search), hintText: "search",  
              ),
            ),
          ),

// important

Expanded(child: _founduser.isNotEmpty ?
ListView.builder(
  itemCount: _founduser.length,
  itemBuilder: (context,index){return
   Card(
elevation: 20,
child: ListTile(
  title: Text( _allusers[index]['name'] ),
  subtitle: Text(_allusers[index]['des']),
),);
})
: Text("no result found")

)
        ],
      )

    );
  }
}