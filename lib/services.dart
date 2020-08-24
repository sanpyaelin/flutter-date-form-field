import 'package:flutter/material.dart';

Future<DateTime> showDateTimePicker({
  @required BuildContext context,
  DateTime initialDate,
  DateTime firstDate,
  DateTime lastDate,
  DateTime currentDate,
  DatePickerEntryMode initialDatePickerEntryMode = DatePickerEntryMode.calendar,
  TimePickerEntryMode initialTimePickerEntryMode = TimePickerEntryMode.dial,
  SelectableDayPredicate selectableDayPredicate,
  String helpText,
  String cancelText,
  String confirmText,
  Locale locale,
  bool useRootNavigator = true,
  RouteSettings routeSettings,
  TextDirection textDirection,
  TransitionBuilder builder,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
  String errorFormatText,
  String errorInvalidText,
  String fieldHintText,
  String fieldLabelText,
}) async {
  DateTime now = DateTime.now();
  DateTime last = DateTime(2100);
  DateTime date = await showDatePicker(
    context: context,
    initialDate: initialDate ?? now,
    firstDate: firstDate ?? now,
    lastDate: lastDate ?? last,
    currentDate: currentDate,
    initialEntryMode: initialDatePickerEntryMode,
    selectableDayPredicate: selectableDayPredicate,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
    locale: locale,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    textDirection: textDirection,
    builder: builder,
    initialDatePickerMode: initialDatePickerMode,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    fieldHintText: fieldHintText,
    fieldLabelText: fieldLabelText,
  );
  if (date != null) {
    TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: new TimeOfDay.now(),
      initialEntryMode: initialTimePickerEntryMode,
      useRootNavigator: useRootNavigator,
      cancelText: cancelText,
      confirmText: confirmText,
      helpText: helpText,
      routeSettings: routeSettings,
    );
    if (time != null) {
      return new DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    }
  }

  return null;
}