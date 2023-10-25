import 'package:flutter/material.dart';
import 'package:task1/verification.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final num3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 50,
              ),
              child: Text(
                'sign up',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 80),
            child: SizedBox(
              width: 370,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.white,
                      ),
                      ),
                  hintText: 'Name',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 370,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 370,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.visibility
                      ),
                      ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 320),
                child: Container(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      'By signing up,you agree to the',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Text(
                    'Terms of',
                    style: TextStyle(
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    'Service and Privacy Policy',
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pinputExample1(),
                          ));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.indigo,
                      ),
                    )),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45,left: 40
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white
                                ),
                                ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/google.png',
                              height: 25,
                              width: 25,
                            ),
                            Text(
                              'Sign Up with Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 100),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
