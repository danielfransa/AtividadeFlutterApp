import 'package:flutter/material.dart';
import 'package:navagation_and_form/pages/initial_page.dart';
import 'package:navagation_and_form/pages/personal_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final url =
      'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

  int _selectedIndex = 0;

  var pages = [
    const FeedWidget(),
    const PersonalPage(),
    Container(
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Página'),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(url)),
                accountName: const Text('Aluno Fatec Araras'),
                accountEmail: const Text('aluno@fatec.sp.gov.br'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contato',
          ),
        ],
      ),
    );
  }
}
