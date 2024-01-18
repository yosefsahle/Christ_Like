import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String dropdownValue = 'Personal Life';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Schedule',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'Services Type   : ',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_double_arrow_down_rounded),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Personal Life',
                        child: Text('Personal Life'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Marrage Life',
                        child: Text('Marrage Life'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Ministry',
                        child: Text('MInistry'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Personal Prayer',
                        child: Text('Personal Prayer'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
