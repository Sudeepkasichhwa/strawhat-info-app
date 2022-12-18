import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Sudeep Kasichhwa"),
            accountEmail: Text("kasichhwasudeep@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("s"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contact"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setttings"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About us"),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Help"),
          ),
        ],
      ),
    );
  }
}
