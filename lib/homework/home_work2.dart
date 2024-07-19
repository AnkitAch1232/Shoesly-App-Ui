import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(13.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.delete),
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
              SizedBox(
                height: 288,
              ),
              Row(
                children: [
                  Text(
                    "By creating an account you agree to our",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w200),
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
      ),
    );
  }
}
