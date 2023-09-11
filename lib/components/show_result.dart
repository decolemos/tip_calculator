// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ShowResult extends StatefulWidget {

  final double valueTip;
  final double valueTotal;

  const ShowResult({
    Key? key,
    required this.valueTip,
    required this.valueTotal,
  }) : super(key: key);

  @override
  State<ShowResult> createState() => _ShowResultState();
}

class _ShowResultState extends State<ShowResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Gorgeta: ", style: TextStyle(fontSize: 20),),
              Container(
                width: 300,
                height: 30,
                color: Colors.blue,
                child: Center(
                  child: Text("R\$ ${widget.valueTip.toStringAsFixed(2)}",
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  )
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Total: ", style: TextStyle(fontSize: 20),),
              Container(
                width: 300,
                height: 30,
                color: Colors.blue,
                child: Center(
                  child: Text("R\$ ${widget.valueTotal.toStringAsFixed(2)}",
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  )
                ),
              )
            ],
          ),
        ),
      ]
    );
  }
}
