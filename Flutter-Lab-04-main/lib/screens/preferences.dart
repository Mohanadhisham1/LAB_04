import 'package:flutter/material.dart';

class PreferencesPage extends StatefulWidget {
  const PreferencesPage({Key? key}) : super(key: key);

  @override
  State<PreferencesPage> createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  List<Map<String, String>> radioItems = [
    {'title': 'Combact sports', 'subtitle': 'boxing'},
    {'title': 'Martial arts', 'subtitle': 'mma'},
    {'title': 'Entertaining sports', 'subtitle': 'soccer'},
    {'title': 'Mind games', 'subtitle': 'chess'},
  ];

  Map<String, String>? radioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://th.bing.com/th/id/R.1ddebd2c242ab22c53d69b5984c5be44?rik=NWWF34pMDSXJ%2fQ&riu=http%3a%2f%2fwww.highlandradio.com%2fwp-content%2fuploads%2f2013%2f08%2fsport.jpg&ehk=B%2fMzKgWN%2bzcwau3WD7d05sO1eqhGQ%2f13gjwmt8rJkV4%3d&risl=&pid=ImgRaw&r=0'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go To Home page',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text(
                    'What is your favorite sport?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                for (int i = 0; i < radioItems.length; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green,
                          Colors.white,
                        ],
                      ),
                    ),
                    child: RadioListTile(
                      title: Text(
                        '${radioItems[i]['title']}',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        '${radioItems[i]['subtitle']}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      secondary: const Icon(
                        Icons.sports,
                        color: Colors.blue,
                      ),
                      value: radioItems[i],
                      groupValue: radioValue,
                      onChanged: (Map<String, String>? value) {
                        setState(() {
                          radioValue = value;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
