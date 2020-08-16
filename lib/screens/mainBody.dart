import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  String selectedCurrency = 'PHP';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
          child: Card(
            color: Colors.lightBlueAccent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
              child: Text(
                '1 BTC = ? USD',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 150.0,
          alignment: Alignment.center,
          padding: EdgeInsets.only(bottom: 30.0),
          color: Colors.lightBlue,
          child: DropdownButton<String>(
            value: selectedCurrency,
            items: [
              DropdownMenuItem(
                child: Text('PHP'),
                value: 'PHP',
              ),
              DropdownMenuItem(
                child: Text('CAD'),
                value: 'CAD',
              ),
              DropdownMenuItem(
                child: Text('NZD'),
                value: 'NZD',
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedCurrency = value;
              });
              print(value);
            },
          ),
        ),
      ],
    );
  }
}
