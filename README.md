# date_form_field

<a href="https://pub.dev/packages/bloc"><img src="https://img.shields.io/pub/v/bloc.svg" alt="Pub"></a>
DateFormField wraps a TextField and integrates it with the enclosing Form. This provides additional functionality, such as validation and integration with other FormField widgets.

## Getting Started 

Add this to your package's pubspec.yaml file:

```yml
dependencies:
  location: ^3.0.0
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
For Initial data, Can be use ```initialDate(DateTime)``` or ```initialValue(String)```;
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
        labelText: 'To',
        suffixIcon: Icon(
        Icons.event,
        ),
    ),
)

```

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
