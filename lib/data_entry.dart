import 'dart:math';
import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  // Generating RNG for Report Id. field //
  static const _chars = '1234567890';
  final Random _rnd = Random();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  final myController6 = TextEditingController();
  final myController7 = TextEditingController();
  final myController8 = TextEditingController();
  final myController9 = TextEditingController();
  final myController10 = TextEditingController();
  String firstField = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تقرير الصيانة - ITCP"),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('الدعم الفني'),
                    content: const Text(
                        'في حالة وجود مشكلة في التطبيق الرجاء الاتصال على : '
                        '07730062193'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('إلغاء'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.contact_support)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'name',
              ),
              controller: myController1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Scaffold(
                  appBar: AppBar(
                    title: const Text('تقرير الصيانة'),
                    centerTitle: true,
                    leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                  ),
                  body: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 340,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'Team Information',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.person),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 2,
                                      ),
                                      const Text("رقم التقرير"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Container(
                                        width: 160,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.5),
                                          child: Text(
                                            getRandomString(10),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Directorate"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Container(
                                        width: 250,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.5),
                                          child: Text(
                                            firstField = myController1.text,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Team Members"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 130,
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
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Container(
                                            width: 130,
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
                            ),
                            Expanded(
                              flex: 150,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'Dates',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.date_range_outlined),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 2,
                                      ),
                                      const Text("Maintenance.D"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Container(
                                        width: 160,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.5),
                                          child: Text(
                                            firstField = myController1.text,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Defect.D"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Container(
                                        width: 140,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.5),
                                          child: Text(
                                            firstField = myController1.text,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Live.D"),
                                      const SizedBox(
                                        width: 5,
                                        height: 2,
                                      ),
                                      Container(
                                        width: 140,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.5),
                                          child: Text(
                                            firstField = myController1.text,
                                            textAlign: TextAlign.center,
                                          ),
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
                  ));
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.picture_as_pdf),
      ),
    );
  }
}
