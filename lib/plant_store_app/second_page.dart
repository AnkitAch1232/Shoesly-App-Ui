import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset("assets/images/image2.png"),
                ),
                Positioned(
                  child: Image.asset("assets/icons/Exclude.png"),
                ),
                Positioned(
                  top: 10,
                  right: 25,
                  child: CircleAvatar(
                    radius: 24,
                    child: Image.asset("assets/icons/cancel.png"),
                    backgroundColor: Colors.black38,
                  ),
                ),
              ],
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/icons/u_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green.shade800,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        "assets/icons/Vector.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
