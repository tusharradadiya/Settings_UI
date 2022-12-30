import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingIosPage extends StatefulWidget {
  const SettingIosPage({Key? key}) : super(key: key);

  @override
  State<SettingIosPage> createState() => _SettingIosPageState();
}

class _SettingIosPageState extends State<SettingIosPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.red,
        middle: Text(
          "Settings UI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      child: ListView(
        children: [
          title("Comman"),
          content(Icons.language, "Language", "English",Container()),
          content(Icons.cloud_queue_outlined, "Environment", "Production",Container()),
          title("Account"),
          content(Icons.call, "Phone number", "", Text("")),
          content(Icons.email, "Email", "", Text("")),
          content(Icons.exit_to_app, "Sign out", "", Text("")),

          title("Security"),
          switchcontent(Icons.phonelink_lock_outlined, "Lock app in background", "", true),
          switchcontent(Icons.fingerprint, "use fingerprint", "", false),
          switchcontent(Icons.lock, "Change password", "", true),
          title("Misc"),
          content(Icons.file_present_outlined, "terms of Service", "", Text("")),
          content(Icons.file_copy_rounded, "Open source licenses", "", Text("")),
        ],
      ),
    );
  }
Widget content(icon, String title, String subtitle, Widget item){
  return Container(
    alignment: Alignment.center,
    height: 55,
    child: CupertinoListTile(
      leading: Icon(
       icon,
        color: Colors.grey.shade600,
      ),
      title: Text(title),

      trailing:   Container(
        height: 50,
        width: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "$subtitle",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.forward,
              color: Colors.grey.shade500,
              size: 28,
            ),
          ],
        ),
      ) ,
    ),
  );
}
Widget switchcontent(icon, String title, String subtitle, select){
  return Container(
    alignment: Alignment.center,
    height: 55,
    child: CupertinoListTile(
      leading: Icon(
       icon,
        color: Colors.grey.shade600,
      ),
      title: Text(title),

      trailing:   Container(
        height: 50,
        width: 150,
        alignment: Alignment.centerRight,

        child: CupertinoSwitch(value: select, onChanged: (value){},activeColor: Colors.red,)
      ) ,
    ),
  );
}
}

Widget title(String title) {
  return Container(
    height: 45,
    width: double.infinity,
    color: Colors.grey.shade300,
    alignment: Alignment.bottomLeft,
    padding: EdgeInsets.only(left: 10, bottom: 5),
    child: Text(
      "$title",
      style:
          TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
    ),
  );
}

