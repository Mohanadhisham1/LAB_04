import 'package:flutter/material.dart';
import 'package:lab_04/screens/information.dart';
import 'package:lab_04/screens/preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dropItems = ['mohanad', 'hisham', 'mohammed'];
  String selectedValue = 'mohanad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainPage'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://th.bing.com/th/id/R.1ddebd2c242ab22c53d69b5984c5be44?rik=NWWF34pMDSXJ%2fQ&riu=http%3a%2f%2fwww.highlandradio.com%2fwp-content%2fuploads%2f2013%2f08%2fsport.jpg&ehk=B%2fMzKgWN%2bzcwau3WD7d05sO1eqhGQ%2f13gjwmt8rJkV4%3d&risl=&pid=ImgRaw&r=0'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.black,
                  Colors.white,
                ]),
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Card(
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: const Center(
                  child: Text(
                    'welcome to your Sports',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.favorite),
                  label: const Text(
                    'Your Preferences Page',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PreferencesPage()));
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.favorite),
                  label: const Text(
                    'fill your Information ',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const InformationPage()));
                  },
                ),
                const SizedBox(
                  height: 120.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
