import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  final TextEditingController myController6;

  const TimePicker({required this.myController6});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        widget.myController6.text = picked.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.myController6,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.access_time),
          labelText: 'وقت التبليغ بالعارض',
        ),
        readOnly: true,
        onTap: () {
          _selectTime(context);
        },
      ),
    );
  }
}
