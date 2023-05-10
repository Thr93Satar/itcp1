import 'dart:math';
import 'package:flutter/material.dart';

class PDFReport extends StatelessWidget {
  static const _chars = '1234567890';
  final Random _rnd = Random();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  Set<String> checkedItems = {};

  Set<String> checkedItems1 = {};

  final TextEditingController myController1;
  final TextEditingController myController2;
  final TextEditingController myController3;
  final TextEditingController myController4;
  final TextEditingController myController5;
  final TextEditingController myController6;
  final TextEditingController myController7;
  final TextEditingController myController8;
  final TextEditingController myController9;
  final TextEditingController myController10;
  final TextEditingController myController12;

  String firstField = "";

  // ignore: use_key_in_widget_constructors
  PDFReport({
    required this.myController1,
    required this.myController2,
    required this.myController3,
    required this.myController4,
    required this.myController5,
    required this.myController6,
    required this.myController7,
    required this.myController8,
    required this.myController9,
    required this.myController10,
    required this.checkedItems,
    required this.checkedItems1,
    required this.item,
    required this.myController12,
    this.item1,
  });
  final item;
  final item1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'تقرير الصيانة',
                  style: TextStyle(textBaseline: TextBaseline.alphabetic),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.home_repair_service_rounded,
                  size: 30,
                ),
              ]),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Flexible(
                          flex: 1,
                          child: Text(
                            'مديرية اتصالات ومعلوماتية نينوى',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          flex: 1,
                          child: Image.asset(
                            'assets/images/WhatsApp Image 2023-05-09 at 10.11.24 AM.jpeg',
                            width: 80,
                            height: 80,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                          flex: 1,
                          child: Text(
                            ' قسم البنى التحتية \n شعبة تراسل المعلومات',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Colors.black))),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'موقع العارض',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(color: Colors.white,),
                                      Text(
                                        'اسم المسار',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(color: Colors.white,),
                                      Text(
                                        'نوع العارض',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(color: Colors.white,),
                                      Text(
                                        'جهة تسبب العارض',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 181,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Colors.black))),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          myController1.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          myController2.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          myController3.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          myController4.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 94,
                                  child: Column(
                                    children:[
                                      Expanded(
                                        flex:1,
                                        child: Container(
                                          width: 94,
                                          color: Colors.blue.shade100,
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'وقت العارض',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex:1,
                                        child: Text(
                                          myController5.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: 94,
                                          color: Colors.blue.shade100,
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'تاريخ العارض',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.black,),
                                      Expanded(
                                        flex:1,
                                        child: Text(
                                          myController6.text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(color: Colors.black))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        children: const [
                                          Text(
                                            'موقع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'اسم المسار',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'نوع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'جهة تسبب العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(color: Colors.black))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        children: const [
                                          Text(
                                            'موقع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'اسم المسار',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'نوع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'جهة تسبب العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border(
                                    bottom: BorderSide(color: Colors.black))),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'معلومات العارضة :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
