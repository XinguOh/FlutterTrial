import 'package:flutter/material.dart';

class CarpoolPage extends StatefulWidget {
  const CarpoolPage({super.key});

  @override
  State<CarpoolPage> createState() => _CarpoolState();
}

class _CarpoolState extends State<CarpoolPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Carpool Page'),
      ),
    );
  }
}