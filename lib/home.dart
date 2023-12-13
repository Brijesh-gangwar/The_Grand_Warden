import 'package:ellipsized_text/ellipsized_text.dart';
import 'package:flutter/material.dart';
import 'package:the_grand_warden/IGS_NT3.dart';
import 'package:the_grand_warden/IGS_NT8.dart';
import 'package:the_grand_warden/IntGen_SRNR.dart';
import 'package:the_grand_warden/about_us.dart';
import 'package:the_grand_warden/faq.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 0.3 * w,
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

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => faq(),
                      ));
                },
              ),
              ListTile(
                title: Text("ABOUT US"),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => about_us(),
                      ));
                },
              ),
              // ListTile(
              //   title: Text("chart"),
              //   onTap: () {
              //     Navigator.of(context).pop();

              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => chart(),
              //         ));
              //   },
              // ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 60,
                        width: 4,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    child: Icon(Icons.person),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    color: Colors.black,
                    width: 100,
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.line_style_outlined,
                      size: 100,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.black,
                      ),
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 4,
                        color: Colors.black,
                      ),
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.black,
                      ),
                      Container(
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ],
              ),

              // IntrinsicHeight(
              //   child: Row(
              //     children: [
              //       Container(
              //         padding: EdgeInsetsDirectional.all(4),
              //         width: w * 0.2,
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             border: Border.all(width: 1),
              //             borderRadius: BorderRadius.circular(4)),
              //         child: const Column(
              //           children: [
              //             Text("Grid Status"),
              //             Text(
              //               "Connected to main grid",
              //               softWrap: true,
              //               style: TextStyle(fontSize: 18),
              //             )
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 8,
              //       ),
              //       Expanded(
              //         child: Container(
              //           padding: EdgeInsetsDirectional.all(4),
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //               width: 1,
              //             ),
              //             borderRadius: BorderRadius.circular(2),
              //           ),
              //           child: const Column(
              //             children: [
              //               Text("Grid Status"),
              //               Row(
              //                 children: [
              //                   Column(
              //                     children: [
              //                       Text(
              //                         "50 KW",
              //                         style: TextStyle(fontSize: 26),
              //                       ),
              //                       Text("Production")
              //                     ],
              //                   ),
              //                   VerticalDivider(
              //                     color: Colors.red,
              //                     thickness: 2,
              //                     width: 10,
              //                     endIndent: 50,
              //                   ),
              //                   Column(
              //                     children: [
              //                       Text(
              //                         "30 KW",
              //                         style: TextStyle(fontSize: 26),
              //                       ),
              //                       Text("Consumption")
              //                     ],
              //                   ),
              //                 ],
              //               )
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Row(
              //   children: [
              //     Container(
              //       padding: EdgeInsetsDirectional.all(4),
              //       decoration: BoxDecoration(
              //           color: Colors.amber,
              //           border: Border.all(width: 1),
              //           borderRadius: BorderRadius.circular(10)),
              //       child: const Column(
              //         children: [
              //           Text("Battery Sec"),
              //           Text(
              //             "75%",
              //             style: TextStyle(fontSize: 14),
              //           )
              //         ],
              //       ),
              //     ),
              //     Container(
              //       padding: EdgeInsetsDirectional.all(4),
              //       decoration: BoxDecoration(
              //           border: Border.all(width: 1),
              //           borderRadius: BorderRadius.circular(10)),
              //       child: Icon(Icons.map),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  // previous code

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Home"),
  //     ),
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           const Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [Icon(Icons.density_small_sharp), Icon(Icons.person)],
  //           ),
  //           const Text("Move to smart controller "),
  //           ElevatedButton(
  //               onPressed: () {
  //                 Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                       builder: (context) => const IntGen_SRNR(),
  //                     ));
  //               },
  //               child: const Text("IntGen_SRNR")),
  //           ElevatedButton(
  //               onPressed: () {
  //                 Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                       builder: (context) => const IGS_NT3(),
  //                     ));
  //               },
  //               child: const Text("IGS_NT3")),
  //           ElevatedButton(
  //               onPressed: () {
  //                 Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                       builder: (context) => const IGS_NT8(),
  //                     ));
  //               },
  //               child: const Text("IGS_NT8")),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
