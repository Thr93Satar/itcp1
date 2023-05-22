import 'dart:math';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generatePdf(
  PdfPageFormat format,
  String title,
  List<String> repairTeam,
  String driversTeam,
  String controller1,
  String controller2,
  String controller3,
  String controller4,
  String controller5,
  String controller6,
  String controller7,
  String controller8,
  String controller9,
  String controller10,
  String controller11,
  String controller12,
) async {
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  final arabicFont = await rootBundle.load('fonts/Amiri-Regular.ttf');
  final ttf = pw.Font.ttf(arabicFont);
  final image = pw.MemoryImage(
    (await rootBundle.load('assets/images/image.png')).buffer.asUint8List(),
  );
  final count = repairTeam.length;

  pdf.addPage(
    pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.all(5),
            child: pw.Container(
                height: double.infinity,
                width: double.infinity,
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(),
                ),
                child: pw.Column(children: [
                  pw.Expanded(
                      flex: 5,
                      child: pw.Container(
                        decoration: const pw.BoxDecoration(
                            border: pw.Border(
                                bottom: pw.BorderSide(color: PdfColors.black))),
                        child: pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          children: [
                            pw.Flexible(
                              flex: 2,
                              child: pw.Text(
                                ' قسم البنى التحتية \n شعبة تراسل المعلومات',
                                textAlign: pw.TextAlign.center,
                                maxLines: 3,
                                textDirection: pw.TextDirection.rtl,
                                style: pw.TextStyle(
                                  font: ttf,
                                  fontSize: 15,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              width: 20,
                            ),
                            pw.Flexible(
                              flex: 1,
                              child: pw.Image(
                                image,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            pw.SizedBox(
                              width: 20,
                            ),
                            pw.Flexible(
                              flex: 2,
                              child: pw.Text(
                                'مديرية اتصالات \n ومعلوماتية نينوى',
                                textAlign: pw.TextAlign.center,
                                textDirection: pw.TextDirection.rtl,
                                style: pw.TextStyle(
                                    font: ttf,
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 5.0),
                          child: pw.Text(
                            getRandomString(10),
                            style: const pw.TextStyle(
                                fontSize: 14, color: PdfColors.black),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 5.0),
                          child: pw.Text(
                            "رقم التقرير :",
                            textDirection: pw.TextDirection.rtl,
                            style: pw.TextStyle(
                                font: ttf,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                                color: PdfColors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Container(
                      decoration: const pw.BoxDecoration(
                          color: PdfColors.lightBlue,
                          border: pw.Border(
                              bottom: pw.BorderSide(color: PdfColors.black))),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        children: [
                          pw.Padding(
                            padding: const pw.EdgeInsets.only(right: 5.0),
                            child: pw.Text(
                              'معلومات العارضة :',
                              textDirection: pw.TextDirection.rtl,
                              style: pw.TextStyle(
                                  font: ttf,
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 15,
                                  color: PdfColors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 10,
                    child: pw.Container(
                      decoration: const pw.BoxDecoration(
                          border: pw.Border(
                              bottom: pw.BorderSide(color: PdfColors.black))),
                      child: pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 94,
                            child: pw.Column(
                              children: [
                                pw.Expanded(
                                  child: pw.Container(
                                    width: 94,
                                    color: PdfColors.blue,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.all(10),
                                      child: pw.Text(
                                        'وقت العارض',
                                        textDirection: pw.TextDirection.rtl,
                                        style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(
                                    controller5,
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Container(
                                    width: 94,
                                    color: PdfColors.blue,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.all(10.0),
                                      child: pw.Text(
                                        'تاريخ العارض',
                                        textDirection: pw.TextDirection.rtl,
                                        style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(controller6,
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(font: ttf)),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                            width: 250,
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    left:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Column(
                              children: [
                                pw.Expanded(
                                  child: pw.Text(controller1,
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(font: ttf)),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(controller2,
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(font: ttf)),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(controller3,
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(font: ttf)),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(controller4,
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(font: ttf)),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    left:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Column(
                              children: [
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.all(20),
                                    child: pw.Text(
                                      'موقع العارض',
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),
                                ),
                                pw.Divider(
                                  color: PdfColors.white,
                                ),
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.all(20),
                                    child: pw.Text(
                                      'اسم المسار',
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),
                                ),
                                pw.Divider(
                                  color: PdfColors.white,
                                ),
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.all(20),
                                    child: pw.Text(
                                      'نوع العارض',
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),
                                ),
                                pw.Divider(
                                  color: PdfColors.white,
                                ),
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.all(20.0),
                                    child: pw.Text(
                                      'جهة تسبب العارض',
                                      textDirection: pw.TextDirection.rtl,
                                      style: pw.TextStyle(
                                          font: ttf,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Container(
                      decoration: const pw.BoxDecoration(
                          border: pw.Border(
                              bottom: pw.BorderSide(color: PdfColors.black))),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 5.0),
                              child: pw.Text(controller7,
                                  textDirection: pw.TextDirection.rtl,
                                  style: pw.TextStyle(font: ttf))),
                          pw.Container(
                            height: 50,
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    left:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(right: 10.0),
                              child: pw.Text(
                                'مدة اصلاح العارض',
                                textDirection: pw.TextDirection.rtl,
                                style: pw.TextStyle(
                                    font: ttf,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 15,
                                    color: PdfColors.black),
                              ),
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 10,
                    child: pw.Column(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColors.lightBlue,
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 5.0),
                                  child: pw.Text(
                                    'الاجهزة والمواد المستخدمة :',
                                    textDirection: pw.TextDirection.rtl,
                                    style: pw.TextStyle(
                                        font: ttf,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 15,
                                        color: PdfColors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 8,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Column(
                              children: [
                                pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                    decoration: const pw.BoxDecoration(
                                        border: pw.Border(
                                            bottom: pw.BorderSide(
                                                color: PdfColors.black))),
                                    child: pw.Row(
                                      children: [
                                        pw.Expanded(
                                          flex: 4,
                                          child: pw.Column(
                                            children: [
                                              pw.Expanded(
                                                  flex: 2,
                                                  child: pw.Text(controller8,
                                                      textDirection:
                                                          pw.TextDirection.rtl,
                                                      style: pw.TextStyle(
                                                          font: ttf))),
                                              pw.Divider(
                                                color: PdfColors.black,
                                              ),
                                              pw.Expanded(
                                                  flex: 2,
                                                  child: pw.Text(controller9,
                                                      textDirection:
                                                          pw.TextDirection.rtl,
                                                      style: pw.TextStyle(
                                                          font: ttf))),
                                            ],
                                          ),
                                        ),
                                        pw.Expanded(
                                          flex: 1,
                                          child: pw.Container(
                                            height: 100,
                                            decoration: const pw.BoxDecoration(
                                                color: PdfColors.blue,
                                                border: pw.Border(
                                                    left: pw.BorderSide(
                                                        color:
                                                            PdfColors.black))),
                                            child: pw.SizedBox(
                                                child: pw.Text(
                                              'الأجهزة : ',
                                              textDirection:
                                                  pw.TextDirection.rtl,
                                              style: pw.TextStyle(
                                                font: ttf,
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 15,
                                                color: PdfColors.white,
                                              ),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 4,
                                  child: pw.Row(
                                    children: [
                                      pw.Expanded(
                                        flex: 4,
                                        child: pw.Column(
                                          children: [
                                            pw.Expanded(
                                                flex: 2,
                                                child: pw.Text(controller10,
                                                    textDirection:
                                                        pw.TextDirection.rtl,
                                                    style: pw.TextStyle(
                                                        font: ttf))),
                                            pw.Divider(
                                              color: PdfColors.black,
                                            ),
                                            pw.Expanded(
                                                flex: 2,
                                                child: pw.Text(controller11,
                                                    textDirection:
                                                        pw.TextDirection.rtl,
                                                    style: pw.TextStyle(
                                                        font: ttf))),
                                          ],
                                        ),
                                      ),
                                      pw.Expanded(
                                        flex: 1,
                                        child: pw.Container(
                                          height: 100,
                                          decoration: const pw.BoxDecoration(
                                              color: PdfColors.blue,
                                              border: pw.Border(
                                                  left: pw.BorderSide(
                                                      color: PdfColors.black))),
                                          child: pw.SizedBox(
                                              child: pw.Text(
                                            'المواد :',
                                            textDirection: pw.TextDirection.rtl,
                                            style: pw.TextStyle(
                                              font: ttf,
                                              fontWeight: pw.FontWeight.bold,
                                              fontSize: 15,
                                              color: PdfColors.white,
                                            ),
                                          )),
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
                  pw.Expanded(
                    flex: 8,
                    child: pw.Column(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColors.lightBlue,
                             ),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 5.0),
                                  child: pw.Text(
                                    'تفاصيل العمل على العارضة :',
                                    textDirection: pw.TextDirection.rtl,
                                    style: pw.TextStyle(
                                        font: ttf,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 15,
                                        color: PdfColors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 6,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                            ),
                            child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 5.0),
                                child: pw.Expanded(
                                    flex: 6,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.all(5),
                                      child: pw.Text(controller12,
                                          textDirection: pw.TextDirection.rtl,
                                          style: pw.TextStyle(font: ttf))
                                    )
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 5,
                    child: pw.Column(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColors.lightBlue,
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 5.0),
                                  child: pw.Text(
                                    'فريق سائقي العجلات :',
                                    textDirection: pw.TextDirection.rtl,
                                    style: pw.TextStyle(
                                        font: ttf,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 15,
                                        color: PdfColors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Padding(
                                    padding: const pw.EdgeInsets.all(10),
                                    child: pw.Container(
                                        height: 80,
                                        width: 150,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(
                                              right: 5),
                                          child: pw.Text(driversTeam,
                                              textDirection:
                                                  pw.TextDirection.rtl,
                                              style: pw.TextStyle(font: ttf)),
                                        ))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 8,
                    child: pw.Column(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColors.lightBlue,
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 5.0),
                                  child: pw.Text(
                                    'فريق الصيانة :',
                                    textDirection: pw.TextDirection.rtl,
                                    style: pw.TextStyle(
                                        font: ttf,
                                        fontWeight: pw.FontWeight.bold,
                                        fontSize: 15,
                                        color: PdfColors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 6,
                          child: pw.Container(
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.end,
                              children: [
                                pw.Container(
                                    height: 300,
                                    width: 350,
                                    child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(10.0),
                                        child: pw.GridView(
                                            crossAxisCount: 3,
                                            children: List.generate(
                                              count,
                                              (index) {
                                                return pw.Padding(
                                                  padding: pw.EdgeInsets.all(5),
                                                  child: pw.Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: pw.Padding(
                                                          padding: pw.EdgeInsets
                                                              .only(right: 5),
                                                          child: pw.Text(
                                                              repairTeam[index],
                                                              textDirection: pw
                                                                  .TextDirection
                                                                  .rtl,
                                                              style:
                                                                  pw.TextStyle(
                                                                font: ttf,
                                                              )))),
                                                );
                                              },
                                            ))))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                    // -----------------EndoftheLIne----------------
                    )),
          );
        }),
  );

  return pdf.save();
}

const _chars = '1234567890';
final Random _rnd = Random();
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
