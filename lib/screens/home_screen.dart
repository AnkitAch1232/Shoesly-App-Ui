import 'package:flutter/material.dart';
import 'package:shoe_brand_app/const/app_data.dart';
import 'package:shoe_brand_app/utils/text_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(AppData().shoeDetails[i]
                                              ['shoeIcon']),
                                          Image.asset(AppData().shoeDetails[i]
                                              ['shoeImage']),
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
                                        AppData().shoeDetails[i]['reviewIcon'],
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        AppData().shoeDetails[i]['reviewNum'],
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
                                    AppData().shoeDetails[i]['reviewPeopleNum'],
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
      ),
    );
  }
}
