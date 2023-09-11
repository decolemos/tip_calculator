import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/components/form.dart';
import 'package:tip_calculator/components/show_result.dart';
import 'package:tip_calculator/provider/calculate_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalculateProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text("Calculadora", style: TextStyle(fontSize: 30),),
          SizedBox(
            width: 250,
            child: Image.network(
              "https://mir-s3-cdn-cf.behance.net/projects/404/72c390134944253.Y3JvcCwxMzgwLDEwODAsMzAwLDA.png"
            )
          ),
          const Text("Gorjeta", style: TextStyle(fontSize: 30)),
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: FormValue(
            ),
          ),
          ShowResult(
            valueTip: provider.valueTip ?? 0.00,
            valueTotal: provider.valueTotal ?? 0.00,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}