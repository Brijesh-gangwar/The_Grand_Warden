import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_grand_warden/profile.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 0.06 * h,
                        child: Icon(Icons.person),
                      ),
                      Text("BRIJESH GANGWAR"),
                      Text("PROFESSION : STUDENT")
                    ],
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(
                title: Text("HOME"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("FAQ"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("SETTINGS"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("LOGOUT"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Center(child: Text("Details")),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: SvgPicture.asset('assets/microgrid.svg'),
                height: 0.24 * h,
                width: 0.28 * w,
              ),
              SizedBox(
                height: 0.04 * h,
                child: Row(
                  children: [],
                ),
              ),
              Container(
                height: 0.18 * h,
                child: Center(
                    child: Text("Besg MICROGRID IS GRID CONNECTED MICROGRID")),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 0.04 * h,
                child: Row(
                  children: [],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0.02 * w,
                  ),
                  Column(children: [
                    SizedBox(
                      child: SvgPicture.asset('assets/monitor.svg'),
                      height: 0.20 * h,
                      width: 0.20 * w,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Monitor"),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    )
                  ]),
                  SizedBox(
                    width: 0.03 * w,
                  ),
                  Column(children: [
                    SizedBox(
                      child: SvgPicture.asset('assets/manage.svg'),
                      height: 0.20 * h,
                      width: 0.20 * w,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.grey),
                        onPressed: () {},
                        child: Text("Manage"))
                  ]),
                  SizedBox(
                    width: 0.02 * w,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
