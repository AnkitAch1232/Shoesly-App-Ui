import 'package:flutter/material.dart';
import 'package:shoe_brand_app/widgets/category_chip.dart';

class PlantStore extends StatelessWidget {
  const PlantStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5F7E8),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.shopping_bag,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/profile.png",
                            ),
                          ),
                          Positioned(
                              right: 0.1,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "  Get Your Favorite\n  Plant Now !",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(
                              0xff000000,
                            ),
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 6.5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xff014946),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Most Popular Plant",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "The following plants are suitable for the work\nenvironment so that you stay comfortable ...",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 3,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white30,
                                          radius: 3,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white30,
                                          radius: 3,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white30,
                                          radius: 3,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                      right: 10,
                      bottom: 0,
                      child: Image(
                        image: AssetImage(
                          "assets/images/plant1.png",
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.menu),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .05,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CategoryChip(
                                textCOlor: Colors.white,
                                backGroundColor: const Color(0xff014946),
                                text: "Indoor"),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryChip(
                                textCOlor: Colors.white,
                                backGroundColor: Color(0xff95BD91),
                                text: "Outdoor"),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryChip(
                                textCOlor: Colors.white,
                                backGroundColor: Color(0xff95BD91),
                                text: "Workplace"),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryChip(
                                textCOlor: Colors.white,
                                backGroundColor: Color(0xff95BD91),
                                text: "Dining Hall"),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 238,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color(0xff014946),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$25.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 16,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 175,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const Positioned(
                        bottom: 50,
                        right: -16,
                        child: Image(
                          image: AssetImage("assets/images/plant2.png"),
                        ),
                      ),
                      const Positioned(
                        bottom: 70,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Indoor",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Monstera",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 238,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color(0xff014946),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$22.50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 16,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 175,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const Positioned(
                        bottom: 50,
                        left: 22,
                        child: Image(
                          image: AssetImage("assets/images/plant3.png"),
                        ),
                      ),
                      const Positioned(
                        bottom: 70,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Indoor",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Peace Lily",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Suitable For You",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
