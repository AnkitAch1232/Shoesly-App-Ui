import 'package:flutter/material.dart';
import 'package:shoe_brand_app/const/app_data.dart';
import 'package:shoe_brand_app/utils/text_utils.dart';

class TaskBarScreen extends StatefulWidget {
  TaskBarScreen({super.key});

  @override
  State<TaskBarScreen> createState() => _TaskBarScreenState();
  final TextEditingController nameController = TextEditingController();
}

class _TaskBarScreenState extends State<TaskBarScreen> {
  String enterText = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "TaskBar Classwork",
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Column(
                children: [
                  Icon(Icons.book_outlined),
                  Text("Task 1"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.car_crash),
                  Text("Task 2"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.cable),
                  Text("Task 3"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.baby_changing_station),
                  Text("Task 4"),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover",
                        style: TextUtils.headerStyle,
                      ),
                      Image.asset(
                        'assets/icons/cart.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      AppData().shoeCategories.length,
                      (index) {
                        if (index == 0) {
                          return Text(
                            AppData().shoeCategories[index],
                            style: TextStyle(
                              color: Color(0xff101010),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          );
                        } else {
                          return Text(
                            AppData().shoeCategories[index],
                            style: TextStyle(
                              color: Color(0xffB7B7B7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                        child: Wrap(children: [
                          for (int i = 0; i < AppData().shoeDetails.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 224,
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.grey,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(AppData()
                                                  .shoeDetails[i]['shoeIcon']),
                                              Image.asset(AppData()
                                                  .shoeDetails[i]['shoeImage']),
                                              //Image.asset("assets/icons/Brand2.png"),
                                              //Image.asset("assets/images/Product2.png"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        AppData().shoeDetails[i]['shoeName'],
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            //Icons.star,
                                            AppData().shoeDetails[i]
                                                ['reviewIcon'],
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            AppData().shoeDetails[i]
                                                ['reviewNum'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            AppData().shoeDetails[i]
                                                ['reviewPeopleNum'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        AppData().shoeDetails[i]
                                            ['reviewPeopleNum'],
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Welcome to RedotPay",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 52,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 52,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "",
                          style: TextStyle(fontSize: 8),
                        ),
                        Icon(Icons.remove_red_eye_outlined),
                        Text(
                          "",
                          style: TextStyle(fontSize: 5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\Referral ID(Optional)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_up,
                      ),
                    ],
                  ),
                  Container(
                    height: 52,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "By creating an account you agree to our",
                        style: TextStyle(
                            fontSize: 11.5, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "Terms of Services",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 42,
                    width: double.maxFinite,
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/image.png",
                                height: 61,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Card Fee",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "100",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Text(
                                          ".00 USD",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Physical Card",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\Spend & ATM withdrawal",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "VISA",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "ATM",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.apple,
                                        size: 12,
                                      ),
                                      Text(
                                        "PAY",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.g_translate,
                                        size: 12,
                                      ),
                                      Text(
                                        "PAY",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Text(
                      enterText,
                    ),
                  ),
                ),
                Spacer(),
                TextField(
                  controller: widget.nameController,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    setState(
                      () {
                        enterText = text;
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
