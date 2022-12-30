
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingAndPage extends StatefulWidget {
  const SettingAndPage({Key? key}) : super(key: key);

  @override
  State<SettingAndPage> createState() => _SettingAndPageState();
}

class _SettingAndPageState extends State<SettingAndPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Common",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                list(Icons.language, "Languge", "English", Text("")),
                list(Icons.cloud_queue_outlined, "Environment", "Productin",
                    Text("")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                list(Icons.call, "Phone number", "", Text("")),
                list(Icons.email, "Email", "", Text("")),
                list(Icons.exit_to_app, "Sign out", "", Text("")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Security",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                list(Icons.phonelink_lock_outlined, "Lock app in background", "",
                  Switch(value: true, onChanged: (value){},activeColor: Colors.red),),
                list(Icons.fingerprint, "Use fingerprint", "", Switch(value: false, onChanged: (value){},activeColor: Colors.red),),
                list(Icons.lock, "Change password", "",Switch(value: true, onChanged: (value){},activeColor: Colors.red),),
                Text(
                  "Misc",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                list(Icons.file_present_outlined, "Terms of Service", "", Text("")),
                list(Icons.file_copy, "Open source licence", "", Text("")),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget list(icon, String title, String subtitle, Widget item) {
    return InkWell(
      child: Container(
        height: 60,
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: item,
        ),
      ),
    );
  }
}
