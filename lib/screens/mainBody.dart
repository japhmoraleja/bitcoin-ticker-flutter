import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/utils/coin_data.dart';
import 'package:flutter/cupertino.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  String selectedCurrency = 'PHP';

  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      // for (int i = 0; i < currenciesList.length; i++) {
      // String currency = currenciesList[i];
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  // List<Widget> getCupertinoDropdownItems() {

  // }

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
          child: CupertinoPicker(
            itemExtent: 32.0,
            onSelectedItemChanged: (selectedIndex) {},
            children: getDropdownItems(),
          ),
        ),
      ],
    );
  }
}

// DropdownButton<String>(
//             value: selectedCurrency,
//             items: getDropdownItems(),
//             onChanged: (value) {
//               setState(
//                 () {
//                   selectedCurrency = value;
//                 },
//               );
//               print(value);
//             },
//           ),
//         ),
