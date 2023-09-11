// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tip_calculator/provider/calculate_provider.dart';

class FormValue extends StatefulWidget {

  const FormValue({
    Key? key,
  }) : super(key: key);

  @override
  State<FormValue> createState() => _FormValueState();
}

class _FormValueState extends State<FormValue> {
  
  final _formKey = GlobalKey<FormState>();
  late double value;
  late double tip;

  void calculateTip() {
    if(!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();

    Provider.of<CalculateProvider>(context, listen: false).calculateTip(value, tip);

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Valor",
              hintText: "Digite o valor"
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (value) {
              if(value == null || value.isEmpty) {
                return "O campo valor não pode ser vazio!";
              }
              if(!RegExp(r'^[0-9;,]+$').hasMatch(value)) {
                return "Digite apenas números com ponto ou virgula";
              }
              return null;
            },
            onSaved: (newValue) {
              value = double.parse(newValue!);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Gorgeta %",
              hintText: "Informe a porcentagem da gorgeta"
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (value) {
              if(value == null || value.isEmpty) {
                return "O campo gorgeta não pode ser vazio!";
              }
              if(!RegExp(r'^[0-9;,]+$').hasMatch(value)) {
                return "Digite apenas números com ponto ou virgula";
              }
              return null;
            },
            onSaved: (newValue) {
              tip = double.parse(newValue!);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                calculateTip();
              }, 
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Calcular", style: TextStyle(fontSize: 20),),
              )
            ),
          )
        ],
      ),
    );
  }
}