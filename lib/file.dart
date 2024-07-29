import 'package:flutter/material.dart';
import 'package:yup_um/yup_um.dart';

class Plug extends StatefulWidget {
  const Plug({super.key});

  @override
  State<Plug> createState() => _PlugState();
}

class _PlugState extends State<Plug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${checkopentimes()}"),),
    );
  }
}