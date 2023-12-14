import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          backgroundColor: Colors.brown,
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
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.4,
                  width: w * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text(
                        "Alerts",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => security(),
                              //     ));
                            },
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Security",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => security(),
                              //     ));
                            },
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "System Health",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Honeypot Detection",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Timestamp",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: Text(
                                  "Source IP",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: Text(
                                  "Description",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Card(
                      //   child: IntrinsicHeight(
                      //     child: Row(
                      //       children: [
                      //         Expanded(
                      //           child: Container(
                      //               padding: EdgeInsets.all(6),
                      //               decoration: BoxDecoration(
                      //                 border: Border.all(),
                      //               ),
                      //               child: Column(
                      //                 children: [
                      //                   Text(
                      //                     "Timestamp",
                      //                     style: TextStyle(fontSize: 14),
                      //                   ),
                      //                 ],
                      //               )),
                      //         ),
                      //         Expanded(
                      //           child: Container(
                      //             padding: EdgeInsets.all(6),
                      //             decoration: BoxDecoration(
                      //               border: Border.all(),
                      //             ),
                      //             child: Text(
                      //               "Source IP",
                      //               style: TextStyle(fontSize: 14),
                      //             ),
                      //           ),
                      //         ),
                      //         Expanded(
                      //           child: Container(
                      //             padding: EdgeInsets.all(6),
                      //             decoration: BoxDecoration(
                      //               border: Border.all(),
                      //             ),
                      //             child: Text(
                      //               "Description",
                      //               style: TextStyle(fontSize: 14),
                      //             ),
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .006,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text("Grid Status"),
                              Text(
                                "Connected to main grid",
                                softWrap: true,
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .006,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text("Grid Status"),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "50 KW",
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      Text("Production"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: w * 0.002,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 50,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "30 KW",
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      Text("Consumption")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .006,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: h * 0.02,
                ),

                // 2 row

                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .01,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text("Battery Soc"),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "75 %",
                                softWrap: true,
                                style: TextStyle(fontSize: 35),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .01,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/map.svg",
                                height: 100,
                              ),
                              Text("Geospatial"),
                              Text("Status")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.01,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),

                // for graphs

                Row(
                  children: [
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        Column(
                                          children: [
                                            Text("IDS"),
                                            Text(
                                              "Active",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.01,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        Column(
                                          children: [
                                            Text("Firewall"),
                                            Text(
                                              "Active",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.014,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Text(
                                      "Security Patch",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text("Status"),
                                            SizedBox(
                                              height: h * 0.008,
                                            ),
                                            Text(
                                              "Upto to date",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: w * 0.020,
                                        ),
                                        Column(
                                          children: [
                                            Text("Last Update"),
                                            SizedBox(
                                              height: h * 0.008,
                                            ),
                                            Text(
                                              "10-12-2023",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: h * 0.014,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Column(
                            children: [
                              Text(
                                "Honeypot",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text("Status"),
                              Text(
                                "3/3",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text("Detection"),
                              Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(fontSize: 24),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: w * 0.01,
                          )
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: h * 0.02,
                ),

                // 4th row
                Row(
                  children: [
                    SizedBox(
                      width: w * 0.007,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "CO2 Emmissions",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "90 kg/MWh",
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.007,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "Energy Efficiency",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "90 %",
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.007,
                    ),
                  ],
                ),

                SizedBox(
                  height: h * 0.02,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Active Component Status",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text("Nanogrids"),
                                      Text(
                                        "3",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    children: [
                                      Text("Solar Plants"),
                                      Text(
                                        "5",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    children: [
                                      Text("Wind Turbines"),
                                      Text(
                                        "2",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    children: [
                                      Text("Battery Storage"),
                                      Text(
                                        "4",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: h * 0.1,
                ),

                SizedBox(
                  height: h * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class security extends StatefulWidget {
//   const security({super.key});

//   @override
//   State<security> createState() => _securityState();
// }

// class _securityState extends State<security> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//           child: Column(
//         children: [
//           IntrinsicWidth(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     child: Text("11-12-2023 15:45"),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Text("11-12-2023 15:45"),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Text("11-12-2023 15:45"),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
