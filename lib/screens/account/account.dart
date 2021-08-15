import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              children: [
                Icon(
                  LineAwesomeIcons.user_circle,
                  size: 100,
                  color: Colors.green,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Agus Kurniadin Khaer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 12,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SettingsList(
          backgroundColor: Colors.white,
          sections: [
            SettingsSection(
              titlePadding: EdgeInsets.all(20),
              tiles: [
                SettingsTile(
                  title: 'Rewards member',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "127 OVO Points",
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Rewards',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Business Profile',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Scheduled',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Cards',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Subscriptions',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Challanges',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Support the Environment',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                        child: Text(
                          "New",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Saved Places',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Help Centre',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Drive with Grab',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: 16,
                      )
                    ],
                  ),
                  onPressed: (BuildContext context) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
