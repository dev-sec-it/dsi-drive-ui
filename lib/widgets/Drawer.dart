// ignore_for_file: prefer_const_constructors

import 'package:dsi_notes/config.dart';
import 'package:flutter/material.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: checkDevice(context) == "des"
          ? MediaQuery.of(context).size.height - 110
          : MediaQuery.of(context).size.height,
      width: checkDevice(context) == "des"
          ? double.infinity
          : MediaQuery.of(context).size.width - 80,
      color: checkDevice(context) == "des" ? Colors.transparent : Colors.white,
      child: ListView(
        children: [
          checkDevice(context) != "des"
              ? UserAccountsDrawerHeader(
                  accountName: Text("Kanai Shil"),
                  accountEmail: Text("email@devsecit.com"),
                  currentAccountPicture: CircleAvatar(
                    child: Text("K"),
                  ),
                )
              : SizedBox(),
          ListTile(
            title: Text("Notes"),
            onTap: () {},
            leading: Icon(Icons.bubble_chart_outlined),
          ),
          ListTile(
            title: Text("Starred"),
            onTap: () {},
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Important"),
            onTap: () {},
            leading: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Trash Box"),
            onTap: () {},
            leading: Icon(Icons.delete_outline_outlined),
          ),
          Divider(),
          ListTile(
            title: Text("Help & Support"),
            onTap: () {},
            leading: Icon(Icons.support_agent_outlined),
          ),
        ],
      ),
    );
  }
}
