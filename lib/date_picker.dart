import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {

  late final TextEditingController myController5;
  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  DateTextField({required this.myController5});

  @override
  _DateTextFieldState createState() => _DateTextFieldState();

}

class _DateTextFieldState extends State<DateTextField> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.myController5,
      decoration: InputDecoration(
        labelText: 'Date',
        hintText: 'dd/mm/yyyy',
        border: OutlineInputBorder(),
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
    );
  }

  @override
  void dispose() {
    widget.myController5.dispose();
    super.dispose();
  }
}
