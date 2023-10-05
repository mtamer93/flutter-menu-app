import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  String title = '';

  // SubPage({super.key, required this.title});
  SubPage(String sTitle) {
    title = sTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back To Home'),
        ),
      ),
    );
  }
}
