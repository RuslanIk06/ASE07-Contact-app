import 'package:flutter/material.dart';

class DetailContactPage extends StatefulWidget {
  String name;
  String phone;
  String gender;
  String datetime;
  DetailContactPage({
    super.key,
    required this.name,
    required this.phone,
    required this.gender,
    required this.datetime,
  });

  @override
  State<DetailContactPage> createState() => _DetailContactPageState();
}

class _DetailContactPageState extends State<DetailContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text(widget.name),
            Text(widget.phone),
            Text(widget.gender),
            Text(widget.datetime),
          ],
        ),
      )),
    );
  }
}
