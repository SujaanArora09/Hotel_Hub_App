import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/CustomButton.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}



class _FiltersScreenState extends State<FiltersScreen> {
  final List<bool> _checked = [false, false, false , false , false ];
  final List<String> _title = ["All Hotels","Nearest First","Price- Low to High","Price- High to Low", " Most Recommended",];


  Widget checkboxList() {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _checked.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(_title[index]),
            value: _checked[index],
            onChanged: (bool? value) {
              setState(() {
                _checked[index] = value!;
              });
            },
          );
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: 800,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 14, bottom: 24),
                width: 48,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffcdcfd0),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: const Text(
                        "Filter",
                        style: TextStyle(
                          color: Color(0xff090a0a),
                          fontSize: 24,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: checkboxList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Column(
                        children: [
                          CustomButton(text: 'Show 340 results',
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                               onClick: (){    }),
                          SizedBox(
                            height: 32,
                            child: TextButton(onPressed: (){},
                                child: const Text(
                              "Reset",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff202325),
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )


            ],
          ),
        )
    );
  }
}
