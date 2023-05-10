import 'dart:math';
import 'package:flutter/material.dart';
import 'package:itcp1/date_picker.dart';
import 'package:itcp1/pdf_report.dart';
import 'package:itcp1/time_picker.dart';

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
  final TextEditingController myController11 = TextEditingController();
  final TextEditingController myController12 = TextEditingController();
  final TextEditingController myController13 = TextEditingController();
  final TextEditingController myController14 = TextEditingController();
  String firstField = "";

  Set<String> checkedItems = {};

  Set<String> checkedItems1 = {};

  final List<String> _items = [
    'سنان يونس حمد',
    'غازي نبيل رشيد',
    'جمال احمد زعيان',
    'رامي سالم عبد الهادي',
    'كرار حيدر علي',
    'محمد صباح',
    'شيخ الياس',
    'علي اكرم',
    'مروان صالح',
    'جسام احمد'
  ];

  final List<String> drivers = [
    'خلف محمد تايه',
    'حسن صالح بكدش',
    'لطيف توني عباس'
  ];

  int selectedCount = 0;

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
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    controller: myController3,
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
                    controller: myController4,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DateTextField(myController5: myController5),
                const SizedBox(
                  height: 10,
                ),
                TimePicker(
                  myController6: myController6,
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
                      hintText: 'مدة اصلاح العارض',
                      labelText: 'مدة اصلاح العارض',
                    ),
                    controller: myController7,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'المواد المستخدمة لاصلاح العارض',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.hardware_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black38,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: '1',
                        ),
                        controller: myController8,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: '2',
                        ),
                        controller: myController9,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: '3',
                        ),
                        controller: myController10,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: '4',
                          border: InputBorder.none,
                        ),
                        controller: myController11,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'تفاصيل العمل على العارضة',
                  ),
                  controller: myController12,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'فريق الصيانة',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.home_repair_service_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 680,
                  width: 360,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = _items[index];
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black38,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: SizedBox(width: 148, child: Text(item)),
                              ),
                              const SizedBox(
                                width: 105,
                              ),
                              SizedBox(
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CheckboxListTile(
                                        value: checkedItems.contains(item),
                                        onChanged: (checked) {
                                          setState(() {
                                            if (checked!) {
                                              checkedItems.add(item);
                                            } else {
                                              checkedItems.remove(item);
                                            }
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        // ignore: prefer_const_constructors
                        return SizedBox(
                          height: 10,
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'فريق السواق',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.car_crash_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  width: 360,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: drivers.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item1 = drivers[index];
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black38,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: SizedBox(width: 148, child: Text(item1)),
                              ),
                              const SizedBox(
                                width: 105,
                              ),
                              SizedBox(
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CheckboxListTile(
                                        value: checkedItems1.contains(item1),
                                        onChanged: (checked) {
                                          setState(() {
                                            if (checked!) {
                                              checkedItems1.add(item1);
                                            } else {
                                              checkedItems1.remove(item1);
                                            }
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        // ignore: prefer_const_constructors
                        return SizedBox(
                          height: 10,
                        );
                      }),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (checkedItems.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'خطأ',
                                      style: TextStyle(
                                          textBaseline:
                                              TextBaseline.alphabetic),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.error,
                                    ),
                                  ],
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Text(
                                          'يرجى اختيار ما لا يقل عن 4 اعضاء'),
                                    ),
                                  ],
                                )));
                      } else if (checkedItems.length > 4) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'خطأ',
                                      style: TextStyle(
                                          textBaseline:
                                              TextBaseline.alphabetic),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.error,
                                    ),
                                  ],
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Text(
                                          'الرجاء اختيار ما لا يزيد عن 4 اعضاء'),
                                    ),
                                  ],
                                )));
                      } else if (checkedItems.length == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PDFReport(
                                      myController1: myController1,
                                      myController2: myController2,
                                      myController3: myController3,
                                      myController4: myController4,
                                      myController5: myController5,
                                      myController6: myController6,
                                      myController7: myController7,
                                      myController8: myController8,
                                      myController9: myController9,
                                      myController10: myController10,
                                      myController12: myController12,
                                      checkedItems: checkedItems,
                                      checkedItems1: checkedItems1,
                                      item: _items,
                                    )));
                      }
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'تكوين تقرير الصيانة',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.picture_as_pdf,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
