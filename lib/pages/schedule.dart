import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String dropdownValue = 'Personal Life';

  bool display(String text) {
    if (text == 'Personal Life') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Schedule',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Center(
                child: Text(
                  'You Can Schedule for various Counsoling and prrayer Reqs',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const Text(
                      'Services Type : ',
                      style: TextStyle(fontSize: 22, color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.keyboard_double_arrow_down_rounded,
                        color: Colors.blue,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Personal Life',
                          child: Text(
                            'Personal Life',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Marrage Life',
                          child: Text(
                            'Marrage Life',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Ministry',
                          child: Text(
                            'Ministry',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Personal Prayer',
                          child: Text(
                            'Personal Prayer  ',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // second Selection if the user selects Persona life
              Visibility(
                visible: display(dropdownValue),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const Text(
                        'Services Type : ',
                        style: TextStyle(fontSize: 22, color: Colors.blue),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.keyboard_double_arrow_down_rounded,
                          color: Colors.blue,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Prayer',
                            child: Text(
                              'Prayer',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Marrage Life',
                            child: Text(
                              'Marrage Life',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Ministry',
                            child: Text(
                              'MInistry',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Personal Prayer',
                            child: Text(
                              'Personal Prayer  ',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
