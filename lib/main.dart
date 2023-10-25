import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/Function.dart';
import 'package:task1/counter.notifier.dart';
import 'package:task1/expenses.dart';
import 'package:task1/income.dart';
import 'package:task1/line.dart';
import 'package:task1/login.dart';
import 'package:task1/montra.dart';
 // ignore: depend_on_referenced_packages
 import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
 
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
); 
// ...


  runApp(page1());
}

class page1 extends StatelessWidget {
  page1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Functions(),
        ),
      ],
      child: MaterialApp(
        title: 'shared preference demo',
        debugShowCheckedModeBanner: false,
        home: montra(),
      ),
    );
  }
}

class homescreen extends StatefulWidget {
  homescreen({super.key});
  
  

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  
  // int counter = 0;
  // void_incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  String dropdownvalue = 'january';

  // functions obj = functions();

  // void getData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     obj.incomestate = prefs.getInt('incomee') ?? 0;
  //     obj.expensestate = prefs.getInt('expensee') ?? 0;
  //     obj.total = prefs.getInt('balancee') ?? 0;
  //   });
  // }

  List<String> month = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'august',
    'september',
    'october',
    'november',
    'december'
  ];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Functions>(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: DropdownButton(
              value: prov.droapdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: month.map((String month) {
                return DropdownMenuItem(
                  value: month,
                  child: Text(month),
                );
              }).toList(),
              onChanged: (newvalue) {
                prov.homedroap(newvalue);
              }),
          elevation: 0,
          backgroundColor: Colors.white,
          // leading: Image.asset('assets/task1.webp'),
          leading: Image.asset(
            'assets/task1.webp',
            height: 5,
            width: 5,
          ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.notification_important,
                  color: Colors.blue,
                ),
                onPressed: () {}),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [
          const Text(
            'Account Balance',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                Text(
                  '${prov.total}',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 25),
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => income(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                    ),
                    child: Container(
                      height: 80,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        color: Colors.green,
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset('assets/i.jpg'),
                        ),
                        title: const Text(
                          'Income',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${prov.incomestate}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => expenses(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 25, left: 20),
                            height: 80,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('assets/e.jpg'),
                              ),
                              title: const Text(
                                'Expence',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                '${prov.expensestate}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Spend Frequency',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(),
              child: mypage1(),
            ),
          ),
          DefaultTabController(
            length: 4,
            child: TabBar(
              unselectedLabelColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1,
              labelColor: Colors.orange,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange.shade50),
              tabs: const [
                Tab(
                  text: 'Today',
                ),
                Tab(
                  text: 'Week',
                ),
                Tab(
                  text: 'Month',
                ),
                Tab(
                  text: 'Year',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Recent Transaction',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 12,
                                ),
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.indigo[200],
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 70,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/yellow.png'),
              ),
              title: const Text(
                'Shopping',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Buy some grocery'),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const BottomAppBar(
            color: Colors.red,
            height: 75,
          ),
          Image.asset(
            'assets/home.png',
            height: 50,
          ),
          Image.asset(
            'assets/transaction.png',
            height: 50,
          ),
          Image.asset(
            'assets/Budget.png',
            height: 50,
          ),
          //   Image.asset(
          //     'assets/budget.png',
          //     height: 50,
          // ),
          Image.asset(
            'assets/profile.png',
            height: 50,
          ),
        ],
      ),
    );
  }
}
