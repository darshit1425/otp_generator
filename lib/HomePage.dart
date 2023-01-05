import 'package:flutter/material.dart';
import 'dart:math';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  List Otp = [];
  int n=0;
  TextEditingController txtnumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: txtnumber,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  setState(() {
                    for(int i=0;i<int.parse(txtnumber.text);i++)
                      {
                        Otp.add(0);
                      }
                    Otp.asMap().entries.map((e) => otp(Otp[e.key])).toList();
                  });
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget otp(number)
{
  return Text("$number");
}