import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////////////////
///  * * * *   * * * *   *     *       @Author: OCN.Yang
///  *     *   *         * *   *       @CreateDate: 2020/5/14 5:39 PM.
///  *     *   *         *   * *       @Email: ocnyang@gmail.com
///  * * * *   * * * *   *     *.Yang  @GitHub: https://github.com/OCNYang
////////////////////////////////////////////////////////////////////////////

class ListTileDemo extends StatefulWidget {
  const ListTileDemo();

  @override
  _ListTileDemoState createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {
  bool checked;
  RadioBean radioGroupValue;
  RadioBean radioBean1 = RadioBean("RadioListTile1");

  @override
  void initState() {
    checked = false;
    radioGroupValue = radioBean1;
    super.initState();
  }

  void changeSwitchCheck(bool isCheck) {
    if (checked != isCheck) {
      setState(() {
        checked = isCheck;
      });
    }
  }

  void changeRadioGroupCheck(RadioBean radioBean) {
    if (radioGroupValue != radioBean) {
      setState(() {
        radioGroupValue = radioBean;
      });
    }
  }

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
            title: Switch(
              value: checked,
              onChanged: changeSwitchCheck,
            ),
            trailing: Text(
              "Trailing is Text",
              style: Theme.of(context).textTheme.caption,
            ),
            onTap: () {},
          ),
          Divider(thickness: 10, height: 10),
          SwitchListTile(
            value: checked,
            title: Text("SwithListTile default"),
            subtitle: Text("The common parameter is the same as the ListTile"),
            secondary: FlutterLogo(size: 48),
            dense: false,
            isThreeLine: true,
            onChanged: changeSwitchCheck,
          ),
          SwitchListTile(
            value: checked,
            activeColor: Colors.red,
            activeTrackColor: Colors.blue,
            inactiveThumbColor: Colors.yellow,
            inactiveTrackColor: Colors.indigo,
            title: Text("SwithListTile with custom color"),
            onChanged: changeSwitchCheck,
          ),
          Divider(thickness: 10, height: 10),
          CheckboxListTile(
            value: checked,
            title: Text("CheckboxListTile default"),
            subtitle: Text("The common parameter is the same as the ListTile"),
            secondary: FlutterLogo(size: 48),
            dense: false,
            isThreeLine: true,
            onChanged: changeSwitchCheck,
          ),
          CheckboxListTile(
            value: checked,
            title: Text("CheckboxListTile"),
            subtitle: Text("ListTileControlAffinity.leading"),
            secondary: FlutterLogo(size: 48),
            dense: false,
            isThreeLine: true,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: changeSwitchCheck,
          ),
          CheckboxListTile(
            value: checked,
            title: Text("CheckboxListTile with custom color"),
            activeColor: Colors.red,
            checkColor: Colors.black,
            onChanged: changeSwitchCheck,
          ),
          Divider(thickness: 10, height: 10),
          RadioListTile<RadioBean>(
            value: radioBean1,
            groupValue: radioGroupValue,
            onChanged: changeRadioGroupCheck,
            title: Text("RadioListTile"),
            subtitle: Text("The common parameter is the same as the ListTile"),
            secondary: FlutterLogo(size: 48),
            dense: false,
            isThreeLine: true,
          ),
          RadioListTile<RadioBean>(
            value: RadioBean("RadioListTile2"),
            groupValue: radioGroupValue,
            onChanged: changeRadioGroupCheck,
            title: Text("RadioListTile"),
            subtitle: Text("ListTileControlAffinity.trailing"),
            secondary: FlutterLogo(size: 48),
            controlAffinity: ListTileControlAffinity.trailing,
            dense: false,
          ),
          RadioListTile(
            value: RadioBean("RadioListTile3"),
            groupValue: radioGroupValue,
            onChanged: changeRadioGroupCheck,
            activeColor: Colors.red,
            title: Text("RadioListTile with custom color"),
          ),
          Divider(thickness: 10, height: 10),
          AboutListTile(
            icon: FlutterLogo(
              size: 48.0,
            ),
            child: Text("AboutListTile"),
            applicationName: "Flutter Gallery",
            applicationVersion: "2.4.0",
            applicationIcon: FlutterLogo(),
            applicationLegalese: '© ${DateTime.now().year} The Flutter team & OCNYang',
            aboutBoxChildren: [
              Text("Gallery is an example of flutter. by The Flutter team"),
              Text("Gallery/Course is to supplement gallery's tutorial. by OCNYang"),
            ],
            dense: false,
          ),
        ],
      ),
    );
  }
}

class RadioBean {
  String name;

  RadioBean(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RadioBean && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
