import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task1/main.dart';


class pinputExample1 extends StatefulWidget {
  const pinputExample1({super.key});

  @override
  State<pinputExample1> createState() => _pinputExampleState();
}

class _pinputExampleState extends State<pinputExample1> {
  final pinController = TextEditingController();
  final num4 = FocusNode();
  final pinputfocusNOde = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      backgroundColor: Colors.white,
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50
            ),
            child: Text(
              'Verification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 30),
          child: Padding(
            padding: const EdgeInsets.only(top: 240, left: 20,
            ),
            child: Column(
              children: [
                Text(
                  'Enter your \n Verification Code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30
                  ),
                  child: Pinput(
                    controller: pinController,
                    length: 6,
                    focusNode: FocusNode(),
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    separatorBuilder: (intex) => const SizedBox(width:8,),
                    validator: (value) {
                      return value == '2222' ? null : 'pin is correct';
                    },
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 300),
                      child: Text(
                        '04:59',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 130,top: 10),
                      child: Text(
                        'We can verification code to your',
                        style: TextStyle(color: Colors.black
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('email',style: TextStyle(color: Colors.black,
                          ),
                          ),Text('brajaoma*****@gmail.com',
                          style: TextStyle(color: Colors.deepPurple),
                          ),
                          Text('you can',style: TextStyle(color: Colors.black,
                          ),
                        ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 210),
                          child: Text('check your inbox.',
                          style: TextStyle(color: Colors.black
                          ),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90,top: 30),
                          child: Text('i didnt received the code?Send again',
                           style: TextStyle(color: Colors.deepPurple,
                           ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: InkWell(
                                        onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homescreen(),
                      )
                      );
                },

                         
                        child: Container(
                          child: Center(
                            child: Text(
                            'Verify',style: TextStyle(color: Colors.white
                            ,fontSize: 18,fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                          width:350,
                          height: 60,
                          decoration:BoxDecoration(color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(18)
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
    );
  }
}
