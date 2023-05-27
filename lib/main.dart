import 'package:flutter/material.dart';
import 'package:inovatory_food_app/order_page.dart';



void main() {
  runApp(const MaterialApp(home: InovatoryApp()));
}

class InovatoryApp extends StatefulWidget {
  const InovatoryApp({super.key});

  @override
  State<InovatoryApp> createState() => _InovatoryAppState();
}

class _InovatoryAppState extends State<InovatoryApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var pages = [const HomePage(), const OrderPage(), const OrderPage()];
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          iconSize: 50,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: 'Acasa'.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              label: 'Coș'.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person,
              ),
              label: 'Cont'.toString(),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        backgroundColor: Colors.grey[200],
        body: pages[_currentIndex],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(40),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Icon(
                        Icons.menu,
                        size: 60,
                        color: Colors.amber[800],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: const Text(
                        "Meniu",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ], 
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "N o u r i s h   U",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Icon(
                        Icons.shopping_cart,
                        size: 60,
                        color: Colors.amber[800],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Text(
                        "Coș",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 100,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.amber, width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/salad.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: const Text(
                                "Salate",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Text(
                              "5 feluri",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 100,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.amber, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Image.asset('assets/images/sandwitch4.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: const Text(
                                "Sandwitchuri",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Text(
                              "10 feluri",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 100,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.amber, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/croassant.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: const Text(
                                "Patiserie",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Text(
                              "23 feluri",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 100,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.amber, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/salad.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: const Text(
                                "Salate",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Text(
                              "23 feluri, 5 restaurante",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.only(left: 45),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Populare',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // food item widget
          SizedBox(
            width: double.infinity,
            height: 402,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/sandwitch.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Sandwitch vegetarian',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Firma X, 50 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'RON 8.80',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/sandwitch2.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Sandwitch cu pui',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Firma X, 68 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'RON 6.45',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/wrap.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Buritto cu pui',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Firma Y, 40 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'RON 12.20',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.only(left: 45),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Oferte',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          SizedBox(
            height: 402,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/salad2.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Salata Cezar',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Firma X, 30 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'RON 20.65',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      ' RON 10.56',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/sandwitch3.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Sandwitch Croassant',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Firma Y, 68 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'RON 10.50',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      ' RON 5.50',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.asset('assets/images/strudel.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Strudel cu mere',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Firma Y, 34 in stoc',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'RON 9.70',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      ' RON 4.40',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.amber,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
