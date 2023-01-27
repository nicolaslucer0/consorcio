import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const _NavigationRail(),
      body: Container(),
    );
  }
}

class _NavigationRail extends StatefulWidget {
  const _NavigationRail({Key? key}) : super(key: key);
  @override
  _NavigationRailState createState() => _NavigationRailState();
}

class _NavigationRailState extends State<_NavigationRail> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntrinsicWidth(
        child: NavigationRail(
          selectedIndex: _selectedIndex,
          destinations: _buildDestinations(),
          extended: true,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  List<NavigationRailDestination> _buildDestinations() {
    return [
      const NavigationRailDestination(
        icon: Icon(Icons.home),
        label: Text('Inicio'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.schedule),
        label: Text('Reservas'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.message),
        label: Text('Comunicados y mensajes'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.how_to_vote),
        label: Text('Votaciones'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.help),
        label: Text('Ayuda'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.logout),
        label: Text('Salir'),
      ),
    ];
  }
}
