import 'package:flutter/material.dart';
import 'package:the_grand_warden/IGS_NT3.dart';
import 'package:the_grand_warden/IGS_NT8.dart';
import 'package:the_grand_warden/IntGen_SRNR.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Icon(Icons.density_small_sharp), Icon(Icons.person)],
            ),
            const Text("Move to smart controller "),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntGen_SRNR(),
                      ));
                },
                child: const Text("IntGen_SRNR")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IGS_NT3(),
                      ));
                },
                child: const Text("IGS_NT3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IGS_NT8(),
                      ));
                },
                child: const Text("IGS_NT8")),
          ],
        ),
      ),
    );
  }
}
