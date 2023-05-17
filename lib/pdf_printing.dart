import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generatePdf(PdfPageFormat format, String title) async {
  final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
  final arabicFont = await rootBundle.load('fonts/Amiri-Regular.ttf');
  final ttf = pw.Font.ttf(arabicFont);
  final image = pw.MemoryImage(
    (await rootBundle.load('assets/images/image.png')).buffer.asUint8List(),
  );

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
                                width: 80,
                                height: 80,
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
                              top: pw.BorderSide(color: PdfColors.black),
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
                                      padding: const pw.EdgeInsets.all(20),
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
                                    title,
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
                                      padding: const pw.EdgeInsets.all(20.0),
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
                                  child: pw.Text(
                                    title,
                                  ),
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
                                  child: pw.Text(
                                    title,
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(
                                    title,
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(
                                    title,
                                  ),
                                ),
                                pw.Divider(
                                  height: 0,
                                  color: PdfColors.black,
                                ),
                                pw.Expanded(
                                  child: pw.Text(
                                    title,
                                  ),
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
                          pw.Container(
                            height: 50,
                            decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                    left:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.all(5.0),
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
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 5.0),
                            child: pw.Text(
                              title,
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 15,
                                  color: PdfColors.white),
                            ),
                          ),
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
                                                  child: pw.Text(
                                                    title,
                                                  )),
                                              pw.Divider(
                                                color: PdfColors.black,
                                              ),
                                              pw.Expanded(
                                                  flex: 2,
                                                  child: pw.Text(
                                                    title,
                                                  )),
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
                                              child: pw.Text(title),
                                            ),
                                            pw.Divider(
                                              color: PdfColors.black,
                                            ),
                                            pw.Expanded(
                                                flex: 2,
                                                child: pw.Text(
                                                  title,
                                                )),
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
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
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
                                border: pw.Border(
                                    bottom:
                                        pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 5.0),
                                  child: pw.Container(
                                    decoration: const pw.BoxDecoration(),
                                  ),
                                )
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
                                border: pw.Border(
                                    bottom:
                                    pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 5.0),
                                  child: pw.Container(
                                    decoration: const pw.BoxDecoration(),
                                  ),
                                )
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
                                border: pw.Border(
                                    bottom:
                                    pw.BorderSide(color: PdfColors.black))),
                            child: pw.Row(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 5.0),
                                  child: pw.Container(
                                    decoration: const pw.BoxDecoration(),
                                  ),
                                )
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
