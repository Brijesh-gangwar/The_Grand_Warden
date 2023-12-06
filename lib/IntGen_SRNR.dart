import 'package:flutter/material.dart';

class IntGen_SRNR extends StatefulWidget {
  const IntGen_SRNR({super.key});

  @override
  State<IntGen_SRNR> createState() => _IntGen_SRNRState();
}

class _IntGen_SRNRState extends State<IntGen_SRNR> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text("IntelliGen_SRNR"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Image.asset("assets/rpm.png")),
                  Expanded(child: Image.asset("assets/act_power.png")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Appar pwr",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "0 kVa",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("React power",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "0 kVar",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Pwr factor",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "0.00",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Gen factor",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "0.0 Hz",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Gen V",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "0 V",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Oil press",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "#### Bar",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Water temp",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "#### C",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Fuel level",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text(
                    "#### %",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              SizedBox(
                height: 140,
              )
            ],
          ),
        ),
        floatingActionButton: Wrap(
          alignment: WrapAlignment.spaceAround,
          direction: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  child: Icon(Icons.report_gmailerrorred_outlined),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  child: Icon(Icons.voice_over_off),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  onPressed: () {},
                  child: Text("I"),
                ),
                SizedBox(
                  width: 2,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  onPressed: () {},
                  child: Text(
                    "O",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
