import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const SlotMApp1());
}

class SlotMApp1 extends StatelessWidget {
  const SlotMApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Slot machine"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.yellow,
        body: Slot1(),
      ),
    );
  }
}

class Slot1 extends StatefulWidget {
  Slot1({super.key});

  @override
  State<Slot1> createState() => _SlotState();
}

class _SlotState extends State<Slot1> {
  var slotnumber1 = Random().nextInt(5) + 1;

  void setSlotNumber() {
    setState(() {
      slotnumber1 = Random().nextInt(5) + 1;
    });
    debugPrint("$slotnumber1");
  }

  Expanded createExpanded(int slotnumber) {
    return Expanded(
      child: TextButton(
          onPressed: setSlotNumber,
          child: Image.asset('images/$slotnumber.png')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [
          createExpanded(slotnumber1),
        ]),
      ),
    );
  }
}
