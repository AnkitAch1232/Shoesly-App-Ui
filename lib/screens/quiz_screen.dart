import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_brand_app/widgets/category_chip.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Subba Model Question Set-1",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white54,
          ),
        ),
        backgroundColor: Colors.indigo,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "SUBMIT",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(
                Color(0xff3A4BAD),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryChip(
                    textCOlor: Colors.white,
                    backGroundColor: Colors.blue,
                    text: "\General  Knowledge (50)",
                  ),
                  SizedBox(width: 8),
                  CategoryChip(
                    textCOlor: Colors.black,
                    backGroundColor: Colors.black26,
                    text: "\Verbal Reasoning (8)",
                  ),
                  SizedBox(width: 8),
                  CategoryChip(
                      textCOlor: Colors.black,
                      backGroundColor: Colors.black26,
                      text: "\Non-Verbal Reasoning (10)"),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black45,
                  child: Image.asset("assets/images/jpt.jpg"),
                ),
                Container(
                  height: 44,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "02:00:00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 2,
                    color: Colors.black26,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\Q.1|3.0 0.0"),
                          Icon(Icons.bookmark_outline),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "In June 2024, which two countries signed a historic\bilateral trade agreement aimed at enhancing economic\coperation and reducing tariffs?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.27,
              child: Column(
                children: [
                  CategoryChip(
                    textCOlor: Colors.black,
                    backGroundColor: Colors.black26,
                    text: "A. United States and China",
                  ),
                  SizedBox(height: 12),
                  CategoryChip(
                    textCOlor: Colors.white,
                    backGroundColor: Colors.blue,
                    text: "India and the United Kingdom",
                  ),
                  SizedBox(height: 12),
                  CategoryChip(
                      textCOlor: Colors.black,
                      backGroundColor: Colors.black26,
                      text: "C. Canada and Japan"),
                  SizedBox(height: 12),
                  CategoryChip(
                      textCOlor: Colors.black,
                      backGroundColor: Colors.black26,
                      text: "D. Brazil and Germnany"),
                  SizedBox(height: 12),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      Text(
                        "Precious",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
