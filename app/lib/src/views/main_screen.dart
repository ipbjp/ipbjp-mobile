import 'package:flutter/material.dart';
import 'package:ipbjp_mobile/src/controllers/controller_social_network.dart';
import 'package:ipbjp_mobile/src/widgets.dart';
// import font awesome icons
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selectedIndex = 0;

  late ControllerSocialNetwork controllerSocialNetwork;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  late List<Widget> _widgetOptions;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //init state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerSocialNetwork = getIt<ControllerSocialNetwork>();
    _widgetOptions = <Widget>[
      Calendar(),
      SocialNetworkList(
        controller: controllerSocialNetwork,
      ),
      Donations(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IPB - Jardim da Penha'),
        leading: Image.asset('assets/images/ipb_logo.png'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendar),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact),
            label: 'Redes socais',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
            label: 'Doação',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
