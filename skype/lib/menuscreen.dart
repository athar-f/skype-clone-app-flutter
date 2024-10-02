import 'package:flutter/material.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<IconData> drawericonleading = [
    (Icons.person_outline),
    (Icons.workspace_premium),
    (Icons.bookmark),
    (Icons.list_alt),
    (Icons.keyboard_voice),
    (Icons.monetization_on),
  ];
  List<String> drawertitle = [
    'Profile',
    'Premium',
    'Bookmarks',
    'List',
    'Spaces',
    'Monetisation',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: DrawerHeader(
              child: Column(
                children: [
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        'Athar Farooq',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    'farooqathar7@gamil.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '13 Following         29843 Followers',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Icon(
                        drawericonleading[index],
                        color: Colors.white,
                      ),
                      title: Text(
                        drawertitle[index],
                        style: TextStyle(color: Colors.white),
                      ));
                },
                separatorBuilder: (context, index) => Divider(
                      color: Colors.white70,
                      indent: 10,
                      endIndent: 10,
                    ),
                itemCount: drawericonleading.length),
          ),
        ],
      )),
    );
  }
}