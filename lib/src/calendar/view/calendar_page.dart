import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
// https://pub.dev/packages/syncfusion_flutter_calendar

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => "",
      ),
      body: SfCalendar(
        view: CalendarView.month,
      ),
    );
  }
}
