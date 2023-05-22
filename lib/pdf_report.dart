import 'dart:math';
import 'package:flutter/material.dart';
import 'package:itcp1/pdf_previwer.dart';
import 'package:screenshot/screenshot.dart';

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
  final TextEditingController myController11;
  final TextEditingController myController12;


  final String firstField = "";

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
    required this.myController12,
    required this.myController11,
    required this.checkedItems,
    required this.checkedItems1,
    required List<String> myList,
  });

  final ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {

    List<String> myList = checkedItems.map((element) => element.toString()).toList();

    return Scaffold(
        appBar: AppBar(
          title: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
          child: AspectRatio(
            aspectRatio: 1 / 3,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Flexible(
                                flex: 2,
                                child: Text(
                                  'مديرية اتصالات ومعلوماتية نينوى',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                flex: 1,
                                child: Image.asset(
                                  'assets/images/image.png',
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Flexible(
                                flex: 2,
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
                      flex: 2,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Text(
                              "رقم التقرير :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text(
                              getRandomString(10),
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 14,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0),
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
                            flex: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.black))),
                                    child: const Column(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'موقع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'اسم المسار',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'نوع العارض',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              'جهة تسبب العارض',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 176,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.black))),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            myController1.text,
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Text(
                                            myController2.text,
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Text(
                                            myController3.text,
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Text(
                                            myController4.text,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 94,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 94,
                                            color: Colors.blue.shade100,
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Text(
                                                'وقت العارض',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Text(
                                            myController5.text,
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 94,
                                            color: Colors.blue.shade100,
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Text(
                                                'تاريخ العارض',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                          color: Colors.black,
                                        ),
                                        Expanded(
                                          child: Text(
                                            myController6.text,
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
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.black))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        'مدة اصلاح العارض',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(myController7.text),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      'الاجهزة والمواد المستخدمة :',
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
                            flex: 8,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black))),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue.shade100,
                                                  border: const Border(
                                                      left: BorderSide(
                                                          color:
                                                              Colors.black))),
                                              child: const SizedBox(
                                                  child: Text(
                                                'الأجهزة : ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              )),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                        myController8.text)),
                                                const Divider(
                                                  color: Colors.black,
                                                ),
                                                Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                        myController9.text)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                border: const Border(
                                                    left: BorderSide(
                                                        color: Colors.black))),
                                            child: const SizedBox(
                                                child: Text(
                                              'المواد :',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                      myController10.text)),
                                              const Divider(
                                                color: Colors.black,
                                              ),
                                              Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                      myController11.text)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      'تفاصيل العمل على العارضة :',
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
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                myController12.text,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      'فريق السواق :',
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
                            flex: 3,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              checkedItems1
                                                  .elementAt(0)
                                                  .toString(),
                                              style: const TextStyle(fontSize: 13),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      'فريق الصيانة :',
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
                            flex: 6,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 380,
                                    height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: GridView.builder(
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: 60.0,
                                          crossAxisCount: 3,
                                        ),
                                        itemCount: checkedItems.length, // Number of items in the grid
                                        itemBuilder: (BuildContext context, int index) {
                                          final item = myList[index];
                                          return Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 40,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Text(item,style: const TextStyle(fontSize: 13),),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          )],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PDFView(
                                      title: 'Pdf Page',
                                  repairTeam: myList,
                                  controller1: myController1.text,
                                  controller2: myController2.text,
                                  controller3: myController3.text,
                                  controller4: myController4.text,
                                  controller5: myController5.text,
                                  controller6: myController6.text,
                                  controller7: myController7.text,
                                  controller8: myController8.text,
                                  controller9: myController9.text,
                                  controller10: myController10.text,
                                  controller11: myController11.text,
                                  controller12: myController12.text,
                                  driversTeam: checkedItems1.elementAt(0),
                                    )));
                      },
                      child: const Text('خزن و طباعة'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
