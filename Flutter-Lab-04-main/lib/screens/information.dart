import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  List<String> dropDownItems = ['1 sport', '2-3 sports', '4-5 sports', 'More'];
  late String dropDownValue;

  List<Map<String, dynamic>> radioItems = [
    {
      'title': 'Entertaining sports',
      'subtitle': 'soccer',
      'icon': FontAwesomeIcons.soccerBall,
    },
    {
      'title': 'Entertaining sports',
      'subtitle': 'basketball',
      'icon': FontAwesomeIcons.basketball,
    },
  ];

  Map<String, dynamic>? radioValue;

  List<Map<String, dynamic>> checkBoxItems = [
    {
      'title': 'Combact sports',
      'subtitle': 'boxing',
      'icon': FontAwesomeIcons.handRock,
      'isChecked': false,
    },
    {
      'title': 'Martial arts',
      'subtitle': 'mma',
      'icon': FontAwesomeIcons.handRock,
      'isChecked': false,
    },
    {
      'title': 'Entertaining sports',
      'subtitle': 'soccer',
      'icon': FontAwesomeIcons.soccerBall,
      'isChecked': false,
    },
    {
      'title': 'Mind games',
      'subtitle': 'chess',
      'icon': FontAwesomeIcons.chess,
      'isChecked': false,
    },
  ];

  @override
  void initState() {
    dropDownValue = dropDownItems[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Information'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.7,
            image: NetworkImage(
                'https://th.bing.com/th/id/R.1ddebd2c242ab22c53d69b5984c5be44?rik=NWWF34pMDSXJ%2fQ&riu=http%3a%2f%2fwww.highlandradio.com%2fwp-content%2fuploads%2f2013%2f08%2fsport.jpg&ehk=B%2fMzKgWN%2bzcwau3WD7d05sO1eqhGQ%2f13gjwmt8rJkV4%3d&risl=&pid=ImgRaw&r=0'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: const Text(
                  'Please enter your information',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'How many sports are you interested in?',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 5,
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: DropdownButton(
                      elevation: 8,
                      value: dropDownValue,
                      items: dropDownItems
                          .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ))
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          dropDownValue = value!;
                        });
                      },
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'what is the most famous sport?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 5,
              ),
              for (int i = 0; i < radioItems.length; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: RadioListTile(
                    title: Text(
                      '${radioItems[i]['title']}',
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      '${radioItems[i]['subtitle']}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    secondary: FaIcon(
                      radioItems[i]['icon'],
                      color: Colors.yellow,
                    ),
                    value: radioItems[i],
                    groupValue: radioValue,
                    onChanged: (Map<String, dynamic>? value) {
                      setState(() {
                        radioValue = value;
                      });
                    },
                  ),
                ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                'What sport do you practice?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 5,
              ),
              for (int i = 0; i < checkBoxItems.length; i++)
                CheckboxListTile(
                  title: Text(
                    checkBoxItems[i]['title'],
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    checkBoxItems[i]['subtitle'],
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  secondary: FaIcon(
                    checkBoxItems[i]['icon'],
                    color: Colors.yellow,
                  ),
                  value: checkBoxItems[i]['isChecked'],
                  onChanged: (bool? value) {
                    setState(() {
                      checkBoxItems[i]['isChecked'] = value;
                    });
                  },
                ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back To Home',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
