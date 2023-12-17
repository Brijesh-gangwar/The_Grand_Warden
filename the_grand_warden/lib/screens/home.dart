import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _homeState();
}

class _homeState extends State<dashboard> {
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
                decoration: const BoxDecoration(color: Colors.red),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 0.06 * h,
                        child: const Icon(Icons.person),
                      ),
                      const Text("BRIJESH GANGWAR"),
                      const Text("PROFESSION : STUDENT")
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text("HOME"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text("FAQ"),
                onTap: () {
                  Navigator.of(context).pop();

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => faq(),
                  //     ));
                },
              ),
              ListTile(
                title: const Text("ABOUT US"),
                onTap: () {
                  Navigator.of(context).pop();

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => about_us(),
                  //     ));
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
                title: const Text("SETTINGS"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text("LOGOUT"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Center(child: Text("Details")),
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
            decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [
                //     Colors.blue,
                //     Colors.red,
                //   ],
                // )
                ),
            child: Column(
              children: [
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => notifications(),
                //           ));
                //     },
                //     child: Text("Notifications")),
                SizedBox(
                  height: h * 0.02,
                ),

                SizedBox(
                  height: h * 0.02,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .02,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Text("Grid Status"),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: w * .02,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Connected to main grid",
                                        softWrap: true,
                                        style: TextStyle(fontSize: 22),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.power_settings_new_rounded,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: w * .02,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .02,
                      ),
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
                        width: w * .02,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Expanded(
                            child: Column(
                              children: [
                                const Text("Grid Status"),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            "50 KW",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          Text("Production"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.002,
                                    ),
                                    Container(
                                      width: 2,
                                      height: 50,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            "30 KW",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          Text("Consumption")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .02,
                      ),
                    ],
                  ),
                ),
                // 2 row
                SizedBox(
                  height: h * 0.02,
                ),

                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .02,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              const Text(
                                "Battery Soc",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: .05 * w,
                              ),
                              CircularPercentIndicator(
                                radius: .06 * w,
                                percent: .75,
                                lineWidth: 13,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text("75%"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * .01,
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
                Row(
                  children: [
                    SizedBox(
                      width: w * .02,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/map.svg",
                              height: 100,
                            ),
                            const Text("Geospatial"),
                            const Text("Status")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * .02,
                    ),
                  ],
                ),

                // 3 row
                SizedBox(
                  height: h * 0.02,
                ),

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
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        const Column(
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
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        const Column(
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
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    const Text(
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
                                            const Text("Status"),
                                            SizedBox(
                                              height: h * 0.008,
                                            ),
                                            const Text(
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
                                            const Text("Last Update"),
                                            SizedBox(
                                              height: h * 0.008,
                                            ),
                                            const Text(
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
                      padding: const EdgeInsets.all(7),
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
                              const Text(
                                "Honeypot",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              const Text("Status"),
                              const Text(
                                "3/3",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              const Text("Detection"),
                              const Row(
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
                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.007,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            children: [
                              Text(
                                "CO2 Emmissions",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
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
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Text(
                                "Energy Efficiency",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: .05 * w,
                              ),
                              CircularPercentIndicator(
                                radius: .06 * w,
                                percent: .90,
                                lineWidth: 13,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text("90 %"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.007,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: h * 0.02,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Active Component Status",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              IntrinsicHeight(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Column(
                                              children: [
                                                Text("Nanogrids"),
                                                Text(
                                                  "3",
                                                  style:
                                                      TextStyle(fontSize: 24),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Column(
                                              children: [
                                                Text("Nanogrids"),
                                                Text(
                                                  "3",
                                                  style:
                                                      TextStyle(fontSize: 24),
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
                              SizedBox(
                                height: h * 0.01,
                              ),
                              IntrinsicHeight(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Column(
                                              children: [
                                                Text("Nanogrids"),
                                                Text(
                                                  "3",
                                                  style:
                                                      TextStyle(fontSize: 24),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Column(
                                              children: [
                                                Text("Nanogrids"),
                                                Text(
                                                  "3",
                                                  style:
                                                      TextStyle(fontSize: 24),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
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

                Container(
                  height: h * 0.4,
                  width: w * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text(
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
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
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
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "System Health",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
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
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: const Column(
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
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: const Text(
                                  "Source IP",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: const Text(
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
