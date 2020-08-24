import 'package:flutter/material.dart';
import 'package:date_form_field/date_form_field.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DateTime initialDate = DateTime.now();
  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime(2100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateFormField'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        children: [
          buildDefaulf(),
          buildPadding(),
          buildOutline(),
          buildPadding(),
          buildDateTime(),
          buildPadding(),
        ],
      ),
    );
  }

  Widget buildDefaulf() {
    return DateFormField(
      showPicker: showPicker,
      decoration: InputDecoration(hintText: 'Select date'),
    );
  }

  Widget buildDateTime() {
    return DateFormField(
      format: 'd/MM/yyyy h:mm a',
      decoration: InputDecoration(
        filled: true,
        labelText: 'Date Time Picker',
        helperText: 'format: d/MM/yyyy h:mm a',
        prefixIcon: Icon(
          Icons.event,
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
      ),
      showPicker: () {
        return showDateTimePicker(
          context: context,
        );
      },
    );
  }

  Widget buildOutline() {
    return DateFormField(
      format: 'EEEE, MMM, d yyyy',
      initialValue: initialDate.toString(),
      decoration: InputDecoration(
        labelText: 'Date Picker',
        helperText: 'format: EEEE, MMM, d yyyy',
        border: OutlineInputBorder(),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
      ),
      showPicker: () {
        return showDatePicker(
          context: context,
          initialDate: firstDate,
          firstDate: firstDate,
          lastDate: lastDate,
        );
      },
    );
  }

  Future<DateTime> showPicker() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    return date;
  }

  Widget buildPadding() {
    return SizedBox(height: 20);
  }
}
