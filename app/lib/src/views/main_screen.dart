import 'package:flutter/material.dart';
import 'package:ipbjp_mobile/src/controllers/social_network_controller.dart';
import 'package:ipbjp_mobile/widgets.dart';
// import font awesome icons
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../provider.dart';
import 'donation_create_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selectedIndex = 0;

  late SocialNetworkController controllerSocialNetwork;

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
    controllerSocialNetwork = getIt<SocialNetworkController>();
    _widgetOptions = <Widget>[
      const EventList(),
      const SocialNetworkList(),
      const DonationList(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// color #165131
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('IPB - Jardim da Penha',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        leading: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 4,
            ),
            child: SizedBox(
                height: 20,
                child: Image.asset(
                  'assets/images/logo_ipb.png',
                ))),
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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          onPressed: () {
            /// logger msg to test
            print('MainScreen - floatingActionButton - onPressed');
            print(_selectedIndex);
            switch (_selectedIndex) {
              case 0:
                break;
              case 1:
                break;
              case 2:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DonationCreateScreen(),
                  ),
                );

                break;
            }
          },
          child: const Icon(Icons.add)),
    );
  }
}
