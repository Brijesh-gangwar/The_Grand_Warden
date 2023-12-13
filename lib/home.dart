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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              )
            ],
          ),
        ),

        // power tranmisison diagram

        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               Container(
        //                 padding: EdgeInsets.all(4),
        //                 child: SvgPicture.asset(
        //                   "assets/solar.svg",
        //                   height: 40,
        //                   width: 40,
        //                 ),
        //                 decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   border: Border.all(width: 2, color: Colors.green),
        //                 ),
        //               ),
        //               Container(height: 100, width: 4, color: Colors.green)
        //             ],
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Column(
        //             children: [
        //               Container(
        //                 padding: EdgeInsets.all(4),
        //                 child: SvgPicture.asset(
        //                   "assets/genset.svg",
        //                   height: 40,
        //                   width: 40,
        //                 ),
        //                 decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   border: Border.all(color: Colors.green, width: 2),
        //                 ),
        //               ),
        //               Container(height: 100, width: 4, color: Colors.green)
        //             ],
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Column(
        //             children: [
        //               Container(
        //                 child: SvgPicture.asset(
        //                   "assets/battery.svg",
        //                   height: 40,
        //                   width: 40,
        //                 ),
        //                 decoration: BoxDecoration(
        //                   border: Border.all(width: 2, color: Colors.green),
        //                   shape: BoxShape.circle,
        //                 ),
        //               ),
        //               Container(height: 110, width: 4, color: Colors.green)
        //             ],
        //           ),
        //         ],
        //       ),

        //       Row(
        //         children: [
        //           Container(
        //             child: SvgPicture.asset(
        //               "assets/utility poles.svg",
        //               height: 40,
        //               width: 40,
        //             ),
        //             decoration: BoxDecoration(
        //               border: Border.all(width: 2, color: Colors.blue),
        //               shape: BoxShape.circle,
        //             ),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             width: 50,
        //             height: 4,
        //           ),
        //           Container(
        //               alignment: Alignment.center,
        //               width: 240,
        //               height: 120,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(20),
        //                 border: Border.all(width: 1, color: Colors.grey),
        //               ),
        //               child: Center(
        //                 child: SvgPicture.asset(
        //                   "assets/supply.svg",
        //                   height: 300,
        //                   width: 120,
        //                 ),
        //               )),
        //         ],
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           Column(
        //             children: [
        //               Container(
        //                 height: 125,
        //                 width: 4,
        //                 color: Colors.yellow,
        //               ),
        //               Container(
        //                 padding: EdgeInsets.all(8),
        //                 child: CircleAvatar(
        //                   child: SvgPicture.asset(
        //                     "assets/hvac.svg",
        //                     height: 120,
        //                     width: 40,
        //                   ),
        //                 ),
        //                 decoration: BoxDecoration(
        //                   border: Border.all(color: Colors.yellow, width: 2),
        //                   shape: BoxShape.circle,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Column(
        //             children: [
        //               Container(
        //                 height: 100,
        //                 width: 4,
        //                 color: Colors.yellow,
        //               ),
        //               Container(
        //                 child: SvgPicture.asset(
        //                   "assets/other loads.svg",
        //                   height: 80,
        //                   width: 20,
        //                 ),
        //                 decoration: BoxDecoration(
        //                   border: Border.all(color: Colors.yellow, width: 2),
        //                   shape: BoxShape.circle,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Column(
        //             children: [
        //               Container(
        //                 height: 100,
        //                 width: 4,
        //                 color: Colors.yellow,
        //               ),
        //               Container(
        //                 child: SvgPicture.asset(
        //                   "assets/electrical.svg",
        //                   height: 80,
        //                   width: 20,
        //                 ),
        //                 decoration: BoxDecoration(
        //                   border: Border.all(color: Colors.yellow, width: 2),
        //                   shape: BoxShape.circle,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),

        //       // IntrinsicHeight(
        //       //   child: Row(
        //       //     children: [
        //       //       Container(
        //       //         padding: EdgeInsetsDirectional.all(4),
        //       //         width: w * 0.2,
        //       //         decoration: BoxDecoration(
        //       //             color: Colors.amber,
        //       //             border: Border.all(width: 1),
        //       //             borderRadius: BorderRadius.circular(4)),
        //       //         child: const Column(
        //       //           children: [
        //       //             Text("Grid Status"),
        //       //             Text(
        //       //               "Connected to main grid",
        //       //               softWrap: true,
        //       //               style: TextStyle(fontSize: 18),
        //       //             )
        //       //           ],
        //       //         ),
        //       //       ),
        //       //       SizedBox(
        //       //         width: 8,
        //       //       ),
        //       //       Expanded(
        //       //         child: Container(
        //       //           padding: EdgeInsetsDirectional.all(4),
        //       //           decoration: BoxDecoration(
        //       //             border: Border.all(
        //       //               width: 1,
        //       //             ),
        //       //             borderRadius: BorderRadius.circular(2),
        //       //           ),
        //       //           child: const Column(
        //       //             children: [
        //       //               Text("Grid Status"),
        //       //               Row(
        //       //                 children: [
        //       //                   Column(
        //       //                     children: [
        //       //                       Text(
        //       //                         "50 KW",
        //       //                         style: TextStyle(fontSize: 26),
        //       //                       ),
        //       //                       Text("Production")
        //       //                     ],
        //       //                   ),
        //       //                   VerticalDivider(
        //       //                     color: Colors.red,
        //       //                     thickness: 2,
        //       //                     width: 10,
        //       //                     endIndent: 50,
        //       //                   ),
        //       //                   Column(
        //       //                     children: [
        //       //                       Text(
        //       //                         "30 KW",
        //       //                         style: TextStyle(fontSize: 26),
        //       //                       ),
        //       //                       Text("Consumption")
        //       //                     ],
        //       //                   ),
        //       //                 ],
        //       //               )
        //       //             ],
        //       //           ),
        //       //         ),
        //       //       )
        //       //     ],
        //       //   ),
        //       // ),
        //       // Row(
        //       //   children: [
        //       //     Container(
        //       //       padding: EdgeInsetsDirectional.all(4),
        //       //       decoration: BoxDecoration(
        //       //           color: Colors.amber,
        //       //           border: Border.all(width: 1),
        //       //           borderRadius: BorderRadius.circular(10)),
        //       //       child: const Column(
        //       //         children: [
        //       //           Text("Battery Sec"),
        //       //           Text(
        //       //             "75%",
        //       //             style: TextStyle(fontSize: 14),
        //       //           )
        //       //         ],
        //       //       ),
        //       //     ),
        //       //     Container(
        //       //       padding: EdgeInsetsDirectional.all(4),
        //       //       decoration: BoxDecoration(
        //       //           border: Border.all(width: 1),
        //       //           borderRadius: BorderRadius.circular(10)),
        //       //       child: Icon(Icons.map),
        //       //     )
        //       //   ],
        //       // )
        //     ],
        //   ),
        // ),
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
