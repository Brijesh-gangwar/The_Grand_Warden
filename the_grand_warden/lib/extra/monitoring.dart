import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class monitoring extends StatefulWidget {
  const monitoring({super.key});

  @override
  State<monitoring> createState() => _monitoringState();
}

class _monitoringState extends State<monitoring> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Monitoring"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                SvgPicture.asset("assets/"),
                const Column(
                  children: [
                    
                  ],
                )
              ]
              ),

            ],
          ),
        ),
      ),
    );
  }
}
