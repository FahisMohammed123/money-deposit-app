import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/Function.dart';
import 'package:task1/main.dart';

class income extends StatelessWidget {
  // final functions obj;
  income({
    super.key,
  });

  bool status = false;

  String dropdownvalue = 'category';

  List<String> drop = ['category', 'salary'];

  final num1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Functions>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: const Text(
            'Income',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'how much',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            TextField(
              controller: num1,
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              keyboardType: TextInputType.number,
              cursorColor: Colors.white,
              cursorHeight: 50,
              decoration: const InputDecoration(
                hintText: '\$0',
                hintStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                height: 550,
                child: Column(children: [
                  const SizedBox(
                    height: 25,
                  ),
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    value: dropdownvalue,
                    items: drop.map<DropdownMenuItem<String>>((String drop) {
                      return DropdownMenuItem<String>(
                        value: drop,
                        child: Text(
                          drop,
                          style: const TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      prov.dropdownvalue;
                    },
                  ),
                  Container(
                    height: 46,
                    width: 420,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: const SizedBox(
                      height: 450,
                      child: TextField(
                        showCursor: false,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Description',
                          hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      value: dropdownvalue,
                      items: drop.map<DropdownMenuItem<String>>((String drop) {
                        return DropdownMenuItem<String>(
                          value: drop,
                          child: Text(
                            drop,
                            style: const TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        prov.drapdownvalue;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.attach_file,
                          color: Colors.black,
                        ),
                        Text(
                          ' Add attachment',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Repeat',
                      style: TextStyle(fontSize: 23),
                    ),
                    subtitle: const Text('Repeat transaction'),
                    trailing: CupertinoSwitch(
                      value: prov.toggleswitch,
                      onChanged: (value) {
                        prov.incomecuper(value);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple),
                              ),
                      onPressed: () {
                        int incomevalue = int.parse(num1.text);
                        prov.add(incomevalue);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ]
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
