# date_form_field

<a href="https://pub.dev/packages/date_form_field"><img src="https://img.shields.io/pub/v/date_form_field.svg" alt="Pub"></a>

DateFormField wraps a TextField and integrates it with the enclosing Form. This provides additional functionality, such as validation and integration with other FormField widgets.

<p align="center">
  <img src="https://raw.githubusercontent.com/sanpyaelin/sanpyaelin/flutter-date-form-field/master/demo/screenshot.gif" alt="Demo App" style="margin:auto" width="372" height="686">
</p>

## Getting Started 

Add this to your package's pubspec.yaml file:

```yml
dependencies:
  date_form_field: ^0.0.1
```

## Usage

import package
```dart
import 'package:date_form_field/date_form_field.dart';
```

```dart
DateFormField(
    showPicker: showPicker,
    onDateChanged: (DateTime date) {
        // your code
    },
)

Future<DateTime> showPicker() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    return date;
}
```
For Initial data, Can be use ```initialDate```(datetype DateTime) or ```initialValue```(datetype String)

Other properties are same as ```TextFormField```

```dart
DateFormField(
    initialDate: new DateTime.now(), // datatype DateTime
    initialValue: new DateTime.now().toString(),  // datatype String 
    showPicker: showPicker,
    onSaved: (String dateStr) {
        // your code
    },
    onChanged: (String dateStr) {
        // your code
    },
    onDateChanged: (DateTime date) {
        // your code
    },
    validator: (value) {
        if (value.isEmpty) return 'Date can\'t be blank.';
        return null;
    },
    decoration: InputDecoration(
        labelText: 'Date',
        suffixIcon: Icon(
        Icons.event,
        ),
    ),
)

```

## showDateTimePicker function

```dart
Future<DateTime> showDateTimePicker({
  @required BuildContext context,
  DateTime initialDate,
  DateTime firstDate,
  DateTime lastDate,
  DateTime currentDate,
  DatePickerEntryMode initialDatePickerEntryMode: DatePickerEntryMode.calendar,
  TimePickerEntryMode initialTimePickerEntryMode: TimePickerEntryMode.dial,
  SelectableDayPredicate selectableDayPredicate,
  String helpText,
  String cancelText,
  String confirmText,
  Locale locale,
  bool useRootNavigator: true,
  RouteSettings routeSettings,
  TextDirection textDirection,
  TransitionBuilder builder,
  DatePickerMode initialDatePickerMode: DatePickerMode.day,
  String errorFormatText,
  String errorInvalidText,
  String fieldHintText,
  String fieldLabelText,
})
```

## showDateTimePicker usage

```dart
DateFormField(
    showPicker: showPicker,
    onDateChanged: (DateTime date) {
        // your code
    },
)

Future<DateTime> showPicker() async {
    DateTime date = await showDateTimePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    return date;
}
```