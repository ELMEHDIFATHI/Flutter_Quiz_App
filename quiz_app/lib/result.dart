import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final re;

  Result(this.q, this.re);

  String get resultphase {
    String resultText;
    if (re >= 70) {
      resultText = "you are legend";
    } else if (re >= 45) {
      resultText = "you are likable !";
    } else {
      resultText = "you are bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphase,
            style:
                TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: b),
          ),
          Text(
            "Totalscore $re",
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
          ),
          TextButton(
              onPressed: q,
              child: const Text(
                "Restart the APP",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
