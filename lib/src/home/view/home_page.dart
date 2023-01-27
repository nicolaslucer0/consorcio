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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[_selectedIndex]),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () => setState(() {
            showNavigationBar = !showNavigationBar;
          }),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          list[_selectedIndex],
          Positioned(
            top: 0,
            left: 0,
            child: Visibility(
              visible: showNavigationBar,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: NavigationRail(
                  selectedIndex: _selectedIndex,
                  elevation: 10,
                  trailing: Row(
                    children: const [
                      Icon(Icons.logout),
                      Text('Salir'),
                    ],
                  ),
                  extended: true,
                  backgroundColor: Colors.white,
                  selectedIconTheme: const IconThemeData(
                    color: Colors.purple,
                    size: 30,
                  ),
                  unselectedIconTheme: const IconThemeData(
                    color: Colors.grey,
                    size: 20,
                  ),
                  selectedLabelTextStyle: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelTextStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                      showNavigationBar = !showNavigationBar;
                    });
                  },
                  labelType: NavigationRailLabelType.none,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      selectedIcon: Icon(Icons.home),
                      label: Text('Inicio'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calendar_month_outlined),
                      selectedIcon: Icon(Icons.calendar_month),
                      label: Text('Calendario de reservas'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.message_outlined),
                      selectedIcon: Icon(Icons.message),
                      label: Text('Mensajes y avisos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.how_to_vote_outlined),
                      selectedIcon: Icon(Icons.how_to_vote),
                      label: Text('Expensas'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.how_to_vote_outlined),
                      selectedIcon: Icon(Icons.how_to_vote),
                      label: Text('Votaciones'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.rule_outlined),
                      selectedIcon: Icon(Icons.rule),
                      label: Text('Reglamentos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.help_outline),
                      selectedIcon: Icon(Icons.help),
                      label: Text('Ayuda y contactos'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
