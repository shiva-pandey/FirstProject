import 'package:flutter/material.dart';
import 'package:gym/demo_page/indexed_stack.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:gym/demo_page/game.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}
// first import the package od hidden_drawer_menu
class _HiddenDrawerState extends State<HiddenDrawer> {
  
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(screens: [              //hiddendraw...
      ScreenHiddenDrawer(ItemHiddenMenu(name: "Indexed  Stack",   //screenhidd...
       baseStyle: TextStyle(fontSize: 20,color: Colors.white),
        selectedStyle: TextStyle(color: Colors.purple,fontSize: 50)), demo1()),
      ScreenHiddenDrawer(ItemHiddenMenu(name: "Game",
       baseStyle: TextStyle(fontSize: 20,color: Colors.white),
        selectedStyle: TextStyle(color: Colors.purple,fontSize: 50)), game())
    ],
    boxShadow: [BoxShadow(color: Colors.yellow,blurRadius: 100.0,spreadRadius: 50.0)],
     backgroundColorMenu: Colors.black,
     slidePercent: 75,
     
     );
  }
}