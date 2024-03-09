// ignore_for_file: prefer_const_constructors, unused_field, sized_box_for_whitespace

import 'package:dsi_notes/config.dart';
import 'package:dsi_notes/widgets/Drawer.dart';
import 'package:dsi_notes/widgets/NoteWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_devsecit/hello_devsecit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  bool isAppBar = true;

  @override
  Widget build(BuildContext context) {
    if (checkDevice(context) != "des") {
      isAppBar = false;
      setState(() {});
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 216, 216),
        key: _drawerKey,
        drawer: checkDevice(context) != "des" ? MyCustomDrawer() : SizedBox(),
        body: Column(
          children: [
            checkDevice(context) != "des"
                ? AppBar(
                    title: Text("DSI Notes"),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings),
                      ),
                      CircleAvatar(
                        child: Text("K"),
                      ),
                      SizedBox(width: 10),
                    ],
                  )
                : Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (checkDevice(context) != "des") {
                              _drawerKey.currentState?.openDrawer();
                            } else {
                              setState(() {
                                isAppBar = !isAppBar;
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
                  ),
            Row(
              children: [
                checkDevice(context) == "des" && isAppBar
                    ? Expanded(
                        flex: 3,
                        child: MyCustomDrawer(),
                      )
                    : SizedBox(),
                Expanded(
                  flex: 12,
                  child: Container(
                    height: MediaQuery.of(context).size.height - 110,
                    decoration: BoxDecoration(),
                    child: ListView(
                      padding: EdgeInsets.all(25),
                      children: [
                        Wrap(
                          children: [
                            for (var x = 1; x <= 10; x++)
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (_) => Container(
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          H3(text: "Update - Urgent"),
                                          Divider(),
                                          DSI_TEXT_BOX(
                                            label: "Title",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(35)),
                                          ),
                                          SizedBox(height: 15),
                                          DSI_PRIMARY_BUTTON(
                                            height: 55.0,
                                            title: "SAVE",
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                child: NoteWidget(
                                    title: "Urgent",
                                    text:
                                        'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
