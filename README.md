# date_form_field

<a href="https://pub.dev/packages/bloc"><img src="https://img.shields.io/pub/v/bloc.svg" alt="Pub"></a>
[![codecov](https://codecov.io/gh/sanpyaelin/datetime_picker_formfield/branch/master/graph/badge.svg)](https://codecov.io/gh/sanpyaelin/datetime_picker_formfield)

DateFormField wraps a TextField and integrates it with the enclosing Form. This provides additional functionality, such as validation and integration with other FormField widgets.

## Getting Started 

Add this to your package's pubspec.yaml file:

```yml
dependencies:
  location: ^0.0.1
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