import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PDFReport extends StatelessWidget {

  static const _chars = '1234567890';
  final Random _rnd = Random();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

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

  String firstField = "";

  PDFReport({required this.myController1, required this.myController2, required this.myController3, required this.myController4, required this.myController5, required this.myController6, required this.myController7, required this.myController8, required this.myController9, required this.myController10});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'تقرير الصيانة',
                  style: TextStyle(
                      textBaseline: TextBaseline.alphabetic),
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
            aspectRatio: 12 / 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                    child: Column(
                      children: [
                        // main headline
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Expanded(
                                child: Text(
                                  'مديرية اتصالات ومعلومات نينوى',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 85,
                              ),
                              Expanded(
                                child: Text(
                                  ' من / هيئة الكابل الضوئي'
                                      ' الى / شعبة التراسل',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 2,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'معلومات العارضة',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          textBaseline:
                                          TextBaseline.ideographic),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons
                                        .wifi_tethering_error_rounded),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "عدد التقرير",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          getRandomString(10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "موقع العارضة",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "اسم المسار",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 110,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController2.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "نوع العارض",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "جهة تسبب العارض",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 260,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text(
                                      "تاريخ وقوع العارض",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController5.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "وقت التبليغ بالعارض",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController6.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "مدة اصلاح العارض",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "المواد المستخدمة لاصلاح العارض",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    2),
                                              ),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    top: 3.5),
                                                child: Text(
                                                  firstField =
                                                      myController1.text,
                                                  textAlign:
                                                  TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 150,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    2),
                                              ),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    top: 3.5),
                                                child: Text(
                                                  firstField =
                                                      myController1.text,
                                                  textAlign:
                                                  TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                            BorderRadius.circular(2),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                top: 3.5),
                                            child: Text(
                                              firstField =
                                                  myController1.text,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 150,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                            BorderRadius.circular(2),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                top: 3.5),
                                            child: Text(
                                              firstField =
                                                  myController1.text,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "تفاصيل العمل على العارضة",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: 400,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          height: 2,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'فريق الصيانة',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          textBaseline:
                                          TextBaseline.alphabetic),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons
                                        .precision_manufacturing_rounded),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "عضو الصيانة - 1",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "عضو الصيانة - 2",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "عضو الصيانة -3",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "عضو الصيانة -4",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                        BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.5),
                                        child: Text(
                                          firstField = myController1.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}
