import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {

  late final TextEditingController myController5;
  final DateFormat _dateFormat = DateFormat('yyyy/MM/dd');

  DateTextField({required this.myController5});

  @override
  _DateTextFieldState createState() => _DateTextFieldState();

}

class _DateTextFieldState extends State<DateTextField> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.myController5,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(top: 5, right: 10),
          labelText: 'تاريخ وقوع العارض',
          hintText: 'dd/mm/yyyy',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.date_range),
        ),
        keyboardType: TextInputType.datetime,
        onTap: () async {
          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            setState(() {
              widget.myController5.text = widget._dateFormat.format(pickedDate);
            });
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.myController5.dispose();
    super.dispose();
  }
}
