import 'package:flutter/material.dart';
import 'package:itcp1/pdf_printing.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class PDFView extends StatelessWidget {
  const PDFView({Key? key, required this.title, required this.repairTeam, required this.driversTeam, required this.controller1, required this.controller2, required this.controller3, required this.controller4, required this.controller5, required this.controller6, required this.controller7, required this.controller8, required this.controller9, required this.controller10, required this.controller11, required this.controller12,}) : super(key: key);

  final String title;
  final List<String> repairTeam;
  final String driversTeam;
  final String controller1;
  final String controller2;
  final String controller3;
  final String controller4;
  final String controller5;
  final String controller6;
  final String controller7;
  final String controller8;
  final String controller9;
  final String controller10;
  final String controller11;
  final String controller12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: PdfPreview(
          build: (format) => generatePdf(format, title , repairTeam, driversTeam, controller1,controller2,controller3,controller4,controller5,controller6,controller7,controller8,controller9,controller10,controller11,controller12,),
        initialPageFormat: PdfPageFormat.a4,
        allowPrinting: true,
        allowSharing: true,
        canChangeOrientation: true,
        canChangePageFormat: true,
      ),
    );
  }
}
