import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: const Text(
                  'Sambătă, 27 Mai',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: const Text(
                  '(2)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),

          // purchased element widget

          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            width: double.infinity,
            height: 793,
            margin:
                const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30, top: 30, bottom: 30),
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('assets/images/salad2.jpg'),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 40),
                              child: const Text(
                                'Salata Cezar',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  ' -  ',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 50,
                                      fontWeight: FontWeight.w200),
                                ),
                                const Text(
                                  ' 1 ',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '  + ',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 20,
                            top: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "RON 10.56",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 25),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                Icons.cancel_rounded,
                                color: Colors.amber,
                                size: 40,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Divider(
                        color: Colors.black12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30, top: 30, bottom: 30),
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('assets/images/strudel.jpg'),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 40),
                              child: const Text(
                                'Strudel cu mere',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  ' -  ',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 50,
                                      fontWeight: FontWeight.w200),
                                ),
                                const Text(
                                  ' 1 ',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '  + ',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 20,
                            top: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "RON 4.40",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 25),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                Icons.cancel_rounded,
                                color: Colors.amber,
                                size: 40,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Divider(
                        color: Colors.black12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 40,
                            top: 30,
                          ),
                          child: Text(
                            'Total:',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600]),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 40,
                            top: 20,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(right: 30, top: 10),
                            child: Text(
                              'RON 14.96',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  width: 500,
                  height: 80,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: const Center(
                    child: Text(
                      'Plătește',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// 1209 lines