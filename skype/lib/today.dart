import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<String> storytitle = ['THE CHOSUNILBO.2h1'];
  List<String> storyimg = [
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
    'assets/LG.jpg',
    'assets/lg2.jpg',
    'assets/LG-Logo.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 124, 228, 235),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'My feed',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'Manage',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: 1 / 2),
                itemCount: storyimg.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 224, 215, 215)),
                    child: Column(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.chrome_reader_mode_outlined,
                              color: Colors.red,
                            ),
                            title: Text(
                              'Top Stories',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            child: Image.asset(
                              storyimg[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.format_underline,
                              color: Colors.red,
                            ),
                            title: Text(
                              storytitle[0],
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Text(
                              'LG Post Earnings Surprise',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Icon(Icons.thumb_up_alt_outlined)),
                              Expanded(
                                  flex: 1,
                                  child: Icon(Icons.thumb_down_alt_outlined)),
                              Expanded(
                                  flex: 1,
                                  child: Icon(Icons.screen_share_outlined)),
                              Expanded(flex: 1, child: Icon(Icons.more_horiz)),
                            ],
                          ),
                        ]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
