// // -----------------------------PW.PAge=----------------------------------
//
// Future<Uint8List> generatePdf(PdfPageFormat format, String title) async {
//   final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
//   final arabicFont = await rootBundle.load('fonts/Amiri-Regular.ttf');
//   final ttf = pw.Font.ttf(arabicFont);
//
//   final myController1 = TextEditingController();
//
//   pdf.addPage(
//     pw.Page(
//       pageFormat: PdfPageFormat.a4,
//       build: (context) {
//
//
//         return pw.AspectRatio(
//           aspectRatio: 1 / 3,
//           child: pw.Padding(
//             padding: pw.EdgeInsets.all(5.0),
//             child: pw.Container(
//               decoration: pw.BoxDecoration(
//                 border: pw.Border.all(),
//               ),
//               child: pw.Column(
//                 children: [
//                   pw.Expanded(
//                       flex: 5,
//                       child: pw.Container(
//                         decoration: pw.BoxDecoration(
//                             border: pw.Border(bottom: pw.BorderSide())),
//                         child: pw.Row(
//                           mainAxisAlignment: pw.MainAxisAlignment.center,
//                           children: [
//                             pw.Flexible(
//                               flex: 2,
//                               child: pw.Text(
//                                 'مديرية اتصالات ومعلوماتية نينوى',
//                                 textAlign: pw.TextAlign.center,
//                                 textDirection: pw.TextDirection.rtl,
//                                 style: pw.TextStyle(
//                                     font: ttf,
//                                     fontSize: 15,
//                                     fontWeight: pw.FontWeight.bold),
//                               ),
//                             ),
//                             pw.SizedBox(
//                               width: 10,
//                             ),
//                             // pw.Flexible(
//                             //   flex: 1,
//                             //   child: pw.Image.asset(
//                             //     'assets/images/image.png',
//                             //     width: 80,
//                             //     height: 80,
//                             //   ),
//                             // ),
//                             pw.SizedBox(
//                               width: 10,
//                             ),
//                             pw.Flexible(
//                               flex: 2,
//                               child: pw.Text(
//                                 ' قسم البنى التحتية \n شعبة تراسل المعلومات',
//                                 textAlign: pw.TextAlign.center,
//                                 textDirection: pw.TextDirection.rtl,
//                                 maxLines: 3,
//                                 style: pw.TextStyle(
//                                   font: ttf,
//                                   fontSize: 15,
//                                   fontWeight: pw.FontWeight.bold,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )),
//                   pw.Expanded(
//                     flex: 2,
//                     child: pw.Row(
//                       children: [
//                         pw.Padding(
//                           padding: pw.EdgeInsets.only(right: 5.0),
//                           child: pw.Text(
//                             "رقم التقرير :",
//                             textDirection: pw.TextDirection.rtl,
//                             style: pw.TextStyle(
//                                 font: ttf,
//                                 fontWeight: pw.FontWeight.bold,
//                                 fontSize: 15,
//                                 color: PdfColors.black),
//                           ),
//                         ),
//                         pw.Padding(
//                           padding: pw.EdgeInsets.only(right: 5.0),
//                           child: pw.Text(
//                             textDirection: pw.TextDirection.rtl,
//                             getRandomString(10),
//                             style: const pw.TextStyle(
//                                 fontSize: 14, color: PdfColors.black),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 14,
//                     child: pw.Column(
//                       children: [
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 color: PdfColors.black,
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(right: 5.0),
//                                   child: pw.Text(
//                                     'معلومات العارضة :',
//                                     textDirection: pw.TextDirection.rtl,
//                                     style: pw.TextStyle(
//                                         font: ttf,
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.black),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 10,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Container(
//                                   decoration: pw.BoxDecoration(
//                                       border: pw.Border(
//                                           left: pw.BorderSide(
//                                               color: PdfColors.black))),
//                                   child: pw.Column(
//                                     children: [
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           'موقع العارض',
//                                           textDirection: pw.TextDirection.rtl,
//                                           style: pw.TextStyle(
//                                               font: ttf,
//                                               fontWeight: pw.FontWeight.bold),
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         color: PdfColors.white,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           'اسم المسار',
//                                           textDirection: pw.TextDirection.rtl,
//                                           style: pw.TextStyle(
//                                               font: ttf,
//                                               fontWeight: pw.FontWeight.bold),
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         color: PdfColors.white,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           'نوع العارض',
//                                           textDirection: pw.TextDirection.rtl,
//                                           style: pw.TextStyle(
//                                               font: ttf,
//                                               fontWeight: pw.FontWeight.bold),
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         color: PdfColors.white,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Padding(
//                                           padding:
//                                           pw.EdgeInsets.only(left: 5.0),
//                                           child: pw.Text(
//                                             'جهة تسبب العارض',
//                                             style: pw.TextStyle(
//                                                 fontWeight: pw.FontWeight.bold),
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 pw.Container(
//                                   width: 176,
//                                   decoration: pw.BoxDecoration(
//                                       border: pw.Border(
//                                           left: pw.BorderSide(
//                                               color: PdfColors.black))),
//                                   child: pw.Column(
//                                     children: [
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 pw.SizedBox(
//                                   width: 94,
//                                   child: pw.Column(
//                                     children: [
//                                       pw.Expanded(
//                                         child: pw.Container(
//                                           width: 94,
//                                           color: PdfColors.blue,
//                                           child: pw.Padding(
//                                             padding: pw.EdgeInsets.all(5.0),
//                                             child: pw.Text(
//                                               'وقت العارض',
//                                               style: pw.TextStyle(
//                                                   fontWeight:
//                                                   pw.FontWeight.bold),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Container(
//                                           width: 94,
//                                           color: PdfColors.blue,
//                                           child: pw.Padding(
//                                             padding: pw.EdgeInsets.all(5.0),
//                                             child: pw.Text(
//                                               'تاريخ العارض',
//                                               style: pw.TextStyle(
//                                                   font: ttf,
//                                                   fontWeight:
//                                                   pw.FontWeight.bold),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Divider(
//                                         height: 0,
//                                         color: PdfColors.black,
//                                       ),
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           title,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Container(
//                                   height: 50,
//                                   decoration: pw.BoxDecoration(
//                                       border: pw.Border(
//                                           left: pw.BorderSide(
//                                               color: PdfColors.black))),
//                                   child: pw.Padding(
//                                     padding: pw.EdgeInsets.all(5.0),
//                                     child: pw.Text(
//                                       'مدة اصلاح العارض',
//                                       style: pw.TextStyle(
//                                           fontWeight: pw.FontWeight.bold,
//                                           fontSize: 15,
//                                           color: PdfColors.black),
//                                     ),
//                                   ),
//                                 ),
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Text(
//                                     title,
//                                     style: pw.TextStyle(
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.white),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 10,
//                     child: pw.Column(
//                       children: [
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 color: PdfColors.lightBlue,
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(right: 5.0),
//                                   child: pw.Text(
//                                     'الاجهزة والمواد المستخدمة :',
//                                     style: pw.TextStyle(
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.white),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 8,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Column(
//                               children: [
//                                 pw.Expanded(
//                                   flex: 5,
//                                   child: pw.Container(
//                                     decoration: pw.BoxDecoration(
//                                         border: pw.Border(
//                                             bottom: pw.BorderSide(
//                                                 color: PdfColors.black))),
//                                     child: pw.Row(
//                                       children: [
//                                         pw.Expanded(
//                                           flex: 1,
//                                           child: pw.Container(
//                                             height: 100,
//                                             decoration: pw.BoxDecoration(
//                                                 color: PdfColors.blue,
//                                                 border: pw.Border(
//                                                     left: pw.BorderSide(
//                                                         color:
//                                                         PdfColors.black))),
//                                             child: pw.SizedBox(
//                                                 child: pw.Text(
//                                                   'الأجهزة : ',
//                                                   style: pw.TextStyle(
//                                                       fontWeight:
//                                                       pw.FontWeight.bold,
//                                                       fontSize: 15),
//                                                 )),
//                                           ),
//                                         ),
//                                         pw.Expanded(
//                                           flex: 4,
//                                           child: pw.Column(
//                                             children: [
//                                               pw.Expanded(
//                                                   flex: 2,
//                                                   child: pw.Text(
//                                                     title,)),
//                                               pw.Divider(
//                                                 color: PdfColors.black,
//                                               ),
//                                               pw.Expanded(
//                                                   flex: 2,
//                                                   child: pw.Text(
//                                                     title,)),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 pw.Expanded(
//                                   flex: 4,
//                                   child: pw.Row(
//                                     children: [
//                                       pw.Expanded(
//                                         flex: 1,
//                                         child: pw.Container(
//                                           height: 100,
//                                           decoration: pw.BoxDecoration(
//                                               color: PdfColors.blue,
//                                               border: pw.Border(
//                                                   left: pw.BorderSide(
//                                                       color: PdfColors.black))),
//                                           child: pw.SizedBox(
//                                               child: pw.Text(
//                                                 'المواد :',
//                                                 style: pw.TextStyle(
//                                                     fontWeight: pw.FontWeight.bold,
//                                                     fontSize: 15),
//                                               )),
//                                         ),
//                                       ),
//                                       pw.Expanded(
//                                         flex: 4,
//                                         child: pw.Column(
//                                           children: [
//                                             pw.Expanded(
//                                               flex: 2,
//                                               child: pw.Text(
//                                                   title),),
//                                             pw.Divider(
//                                               color: PdfColors.black,
//                                             ),
//                                             pw.Expanded(
//                                                 flex: 2,
//                                                 child: pw.Text(
//                                                   title,)),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 8,
//                     child: pw.Column(
//                       children: [
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 color: PdfColors.lightBlue,
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(right: 5.0),
//                                   child: pw.Text(
//                                     'تفاصيل العمل على العارضة :',
//                                     style: pw.TextStyle(
//                                         font: ttf,
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.white),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 6,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Container(
//                                     decoration: pw.BoxDecoration(
//                                         border: pw.Border(
//                                             left: pw.BorderSide(
//                                                 color: PdfColors.black))),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 8,
//                     child: pw.Column(
//                       children: [
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                               color: PdfColors.lightBlue,
//                             ),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Text(
//                                     'فريق السواق :',
//                                     style: pw.TextStyle(
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.white),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 6,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Container(
//                                     decoration: pw.BoxDecoration(
//                                         border: pw.Border(
//                                             left: pw.BorderSide(
//                                                 color: PdfColors.black))),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 8,
//                     child: pw.Column(
//                       children: [
//                         pw.Expanded(
//                           flex: 2,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                               color: PdfColors.lightBlue,
//                             ),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Text(
//                                     'فريق الصيانة :',
//                                     style: pw.TextStyle(
//                                         fontWeight: pw.FontWeight.bold,
//                                         fontSize: 15,
//                                         color: PdfColors.white),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.Expanded(
//                           flex: 6,
//                           child: pw.Container(
//                             decoration: pw.BoxDecoration(
//                                 border: pw.Border(
//                                     bottom:
//                                     pw.BorderSide(color: PdfColors.black))),
//                             child: pw.Row(
//                               children: [
//                                 pw.Padding(
//                                   padding: pw.EdgeInsets.only(left: 5.0),
//                                   child: pw.Container(
//                                     decoration: pw.BoxDecoration(
//                                         border: pw.Border(
//                                             left: pw.BorderSide(
//                                                 color: PdfColors.black))),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pw.SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     ),
//   );
//
//   // Save the document to a file.
//   final file = File('my_pdf.pdf');
//   await file.writeAsBytes(await pdf.save());
//
//   // Return the PDF file as a `Uint8List`.
//   return file.readAsBytes();
// }