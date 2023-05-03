import 'dart:math';
import 'package:flutter/material.dart';
import 'package:itcp1/date_picker.dart';
import 'package:itcp1/printing_pdf_report.dart';


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

  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  final TextEditingController myController3 = TextEditingController();
  final TextEditingController myController4 = TextEditingController();
  final TextEditingController myController5 = TextEditingController();
  final TextEditingController myController6 = TextEditingController();
  final TextEditingController myController7 = TextEditingController();
  final TextEditingController myController8 = TextEditingController();
  final TextEditingController myController9 = TextEditingController();
  final TextEditingController myController10 = TextEditingController();


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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "يرجى ملى الحقول ادناه لتكوين التقرير",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, right: 10),
                        border: OutlineInputBorder(),
                        hintText: 'موقع العارضة',
                      ),
                      controller: myController1,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, right: 10),
                        border: OutlineInputBorder(),
                        hintText: 'اسم المسار',
                      ),
                      controller: myController2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(),
                    hintText: 'نوع العارض',
                  ),
                  controller: myController1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(),
                    hintText: 'جهة تسبب العارض',
                  ),
                  controller: myController3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DateTextField(myController5: myController5),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'وقت التبليغ بالعارض',
                ),
                controller: myController1,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'مدة اصلاح العارض',
                ),
                controller: myController1,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'المواد المستخدمة لاصلاح العارض',
                ),
                controller: myController1,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'تفاصيل العمل على العارضة',
                ),
                controller: myController1,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'عضو الصيانة -1-',
                ),
                controller: myController1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PDFReport(myController1: myController1, myController2: myController2, myController3: myController3, myController4: myController4, myController5: myController5, myController6: myController6, myController7: myController7, myController8: myController8, myController9: myController9, myController10: myController10,)));
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.picture_as_pdf),
      ),
    );
  }
}
