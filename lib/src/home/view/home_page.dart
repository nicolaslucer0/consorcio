import 'package:flutter/material.dart';

import '../../calendar/calendar.dart';
import '../../comunication/view/comunication_page.dart';
import '../../dashboard/dashboard.dart';
import '../../expenses/expenses.dart';
import '../../help/help.dart';
import '../../rule/rules.dart';
import '../../vote/vote.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool showNavigationBar = false;

  var list = [
    const Dashboard(),
    const CalendarPage(),
    const ComunicationPage(),
    const ExpensesPage(),
    const VotePage(),
    const RulesPage(),
    const HelpPage(),
  ];

  var title = [
    "Inicio",
    'Calendario de reservas',
    'Mensajes y avisos',
    'Expensas',
    'Votaciones',
    'Reglamentos',
    'Ayuda y contacto',
    'Salir',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.account_balance, color: Colors.black,),
        title: Text(title[_selectedIndex], style: const TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: const [Icon(Icons.supervised_user_circle, color: Colors.black,)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Reservas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Comunicados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.how_to_vote),
            label: 'Votaciones',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            list[_selectedIndex],
          ],
        ),
      ),
    );
  }
}
