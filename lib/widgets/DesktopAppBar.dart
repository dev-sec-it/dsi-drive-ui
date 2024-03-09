// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:dsi_notes/config.dart';
import 'package:flutter/material.dart';
import 'package:hello_devsecit/hello_devsecit.dart';

class DesktopAppBar extends StatefulWidget {
    DesktopAppBar({super.key, required this.isAppBar, required this.drawerKey });
  var drawerKey;
  bool isAppBar;
  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              if (checkDevice(context) != "des") {
                widget.drawerKey.currentState?.openDrawer();
              } else {
                setState(() {
                  widget.isAppBar = !widget.isAppBar;
                });
              }
            },
            icon: Icon(Icons.menu),
          ),
          Container(
            height: 55,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(35),
            ),
            alignment: Alignment.center,
            child: H3(
              text: "DSI Notes",
              color: Colors.white,
            ),
          ),
          Container(
            width: 530,
            height: 45,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search here..",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
                hintStyle: TextStyle(
                    // color: Colors.white,
                    ),
              ),
            ),
          ),
          Container(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.view_list_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.space_dashboard_rounded),
                ),
                CircleAvatar(
                  radius: 25,
                  child: H1(text: "K"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
