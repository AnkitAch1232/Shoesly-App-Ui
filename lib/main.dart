import 'package:flutter/material.dart';
import 'package:shoe_brand_app/homework/class_work.dart';
import 'package:shoe_brand_app/homework/home_work1.dart';
import 'package:shoe_brand_app/homework/home_work2.dart';
import 'package:shoe_brand_app/homework/task_bar.dart';
import 'package:shoe_brand_app/plant_store_app/first_page.dart';
import 'package:shoe_brand_app/plant_store_app/second_page.dart';
import 'package:shoe_brand_app/screens/class_work_screen.dart';
import 'package:shoe_brand_app/screens/home_screen.dart';
import 'package:shoe_brand_app/screens/quiz_screen.dart';
import 'package:shoe_brand_app/screens/text_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:

          //SecondScreen(),
          PlantStore(),
      //QuizScreen(),
      //DiscussionForumScreen(),
      //LokSewaScreen(),
      //TaskBarScreen(),
      //PaymentScreen(),
      //RegisterScreen(),
      //TextScreen(),
      //ClassWorkScreen(),
      //HomeScreen(),
    );
  }
}
