# date_form_field

<img src="https://raw.githubusercontent.com/sanpyaelin/flutter-date-form-field/master/demo/screenshot.gif" alt="Demo App" style="margin:auto" height="500">

<a href="https://pub.dev/packages/date_form_field"><img src="https://img.shields.io/pub/v/date_form_field.svg" alt="Pub"></a>
<a href="https://github.com/hacktons/convex_bottom_bar"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="github"></a>
<a href="https://github.com/sanpyaelin/flutter-date-form-field/blob/master/LICENSE"><img src="https://img.shields.io/github/license/sanpyaelin/flutter-date-form-field.svg" alt="license"></a>

DateFormField wraps a TextField and integrates it with the enclosing Form. This provides additional functionality, such as validation and integration with other FormField widgets.


## Getting Started 

Add this to your package's pubspec.yaml file:

```yml
dependencies:
  date_form_field: ^0.0.2
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

More complete example:

```dart
DateFormField(
    format: 'd/MM/yyyy h:mm a',
    initialValue: new DateTime.now().toString(),  
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
    showPicker: () {
        return showDateTimePicker(
          context: context,
        );
    },
)

```


## showDateTimePicker 

### usage
```dart
DateFormField(
    showPicker: showPicker,
    onDateChanged: (DateTime date) {
        // your code
    },
)

Future<DateTime> showPicker() async {
    DateTime date = await showDateTimePicker(
      context: context,       // required
      initialDate: firstDate, // optional
      firstDate: firstDate,   // optional
      lastDate: lastDate,     // optional
    );

    return date;
}
```

### function

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