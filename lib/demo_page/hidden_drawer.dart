import 'package:flutter/material.dart';
import 'package:gym/demo_page/indexed_stack.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:gym/demo_page/model_bottem_sheet.dart';

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
      ScreenHiddenDrawer(ItemHiddenMenu(name: "page1",   //screenhidd...
       baseStyle: TextStyle(fontSize: 30),
        selectedStyle: TextStyle(color: Colors.purple,fontSize: 50)), demo1()),
      ScreenHiddenDrawer(ItemHiddenMenu(name: "page2",
       baseStyle: TextStyle(fontSize: 30),
        selectedStyle: TextStyle(color: Colors.purple,fontSize: 50)), bottomSheet())
    ],
     backgroundColorMenu: Colors.lime,
     slidePercent: 40,
     
     );
  }
}