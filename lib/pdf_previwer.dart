import 'package:flutter/material.dart';
import 'package:itcp1/pdf_printing.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class PDFView extends StatelessWidget {
  const PDFView({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: PdfPreview(
          build: (format) => generatePdf(format, title ,),
        initialPageFormat: PdfPageFormat.a4,
        allowPrinting: true,
        allowSharing: true,
        canChangeOrientation: true,
        canChangePageFormat: true,
      ),
    );
  }
}
