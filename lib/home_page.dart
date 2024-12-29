import 'package:flutter/material.dart';
import 'package:temperature_converter_app/widgets/custom_text_feild.dart';
import 'package:temperature_converter_app/widgets/type_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> typeList = ['Fahrenheit', 'kelvin', 'Celsius'];
  String? selectedItem = 'Fahrenheit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Temperature Converter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(
                      labelText: 'Degrees',
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 40),
                  TypeMenu(
                      selectedItem: selectedItem,
                      onChanged: (item) {
                        setState(() {
                          selectedItem = item;
                        });
                      },
                      items: typeList
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList()),
                ],
              ),
              SizedBox(height: 30),
              CustomTextFeild(
                labelText: 'Result',
                onChanged: (value) {},
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 10,
                    ),
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white),
                child: Text('Convert',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
