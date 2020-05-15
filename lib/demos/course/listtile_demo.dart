import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////////////////
///  * * * *   * * * *   *     *       @Author: OCN.Yang
///  *     *   *         * *   *       @CreateDate: 2020/5/14 5:39 PM.
///  *     *   *         *   * *       @Email: ocnyang@gmail.com
///  * * * *   * * * *   *     *.Yang  @GitHub: https://github.com/OCNYang
////////////////////////////////////////////////////////////////////////////

class ListTileDemo extends StatelessWidget {
  const ListTileDemo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("One-line ListTile"),
            onTap: () {},
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text("One-line with leading widget"),
            onTap: () {},
          ),
          ListTile(
            title: Text("One-line with trailing widget"),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text("One-line with both widget"),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            title: Text("One-line dense ListTile"),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            leading: FlutterLogo(size: 48),
            title: Text("Two-line ListTile"),
            subtitle: Text("Here is a second line"),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            leading: FlutterLogo(size: 48),
            title: Text("There-line ListTile"),
            subtitle: Text("A sufficienty long subtitle warrants three lines."),
            isThreeLine: true,
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: const AssetImage("assets/demos/bottom_navigation_background.png")),
            title: Text("There-line with CircleAvatar"),
            subtitle: Text("A sufficienty long subtitle warrants three lines."),
            isThreeLine: true,
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            leading: Image(
                width: 80,
                height: 120,
                fit: BoxFit.cover,
                image: const AssetImage("assets/demos/bottom_navigation_background.png")),
            title: Text("ListTile with Image-leading & center-trailing"),
            subtitle: Text("The height of the image is invalid."),
            isThreeLine: true,
            trailing: Container(
              alignment: Alignment.centerRight,
              width: 30.0,
              child: Icon(Icons.more_vert),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Text("Leading is Text"),
            title: Switch(value: false),
            trailing: Text(
              "Trailing is Text",
              style: Theme.of(context).textTheme.caption,
            ),
            onTap: () {},
          ),
          Divider(thickness: 10, height: 10),
        ],
      ),
    );
  }
}
