import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';
import 'review.dart';

class BlogSplash extends StatelessWidget {
  const BlogSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const BlogPage())); // Navigate to target page
    });
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          // Disable swiping back
          return Future.value(false);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/hathi_logo.png',
                height: mobileDeviceHeight * 0.23,
              ),
              const CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
