import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////////////////
///  * * * *   * * * *   *     *       @Author: OCN.Yang
///  *     *   *         * *   *       @CreateDate: 2020/5/18 5:12 PM.
///  *     *   *         *   * *       @Email: ocnyang@gmail.com
///  * * * *   * * * *   *     *.Yang  @GitHub: https://github.com/OCNYang
////////////////////////////////////////////////////////////////////////////

class ScaffoldDemo extends StatefulWidget {
  const ScaffoldDemo();

  @override
  _ScaffoldDemoState createState() => _ScaffoldDemoState();
}

class _ScaffoldDemoState extends State<ScaffoldDemo> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text("Scaffold"),
          ),
          body: Container(
            child: Text("dkdjd"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text("FAB"),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          persistentFooterButtons: [
            FlatButton(
              child: Text("FOOTER BUTTON"),
            ),
            IconButton(icon: Icon(Icons.favorite), onPressed: null),
            Text("TEXT")
          ],
          drawer: Drawer(),
          endDrawer: Drawer(),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.navigate_before), title: Text("Bottom")),
            BottomNavigationBarItem(icon: Icon(Icons.navigation), title: Text("Navigation")),
            BottomNavigationBarItem(icon: Icon(Icons.navigate_next), title: Text("Bar")),
          ]),
//          bottomSheet: BottomSheet(
//              onClosing: (){},
//              builder: (context) {
//                return Container(
//                  color: Colors.blue,
//                  width: double.infinity,
//                  child: Text("I'm BottomSheet"),
//                  height: 300,
//                );
//              }),
        backgroundColor: Colors.white70,
        ),
        Scaffold(
          drawer: const Drawer(
            child: Text("data"),
          ),
          appBar: AppBar(
            title: Text("Scaffold"),
          ),
          body: Container(
            child: Text("dkdjd"),
          ),
        ),
      ],
    );
  }
}
