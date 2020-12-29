import 'dart:io';

import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  String currencyValue;

  @override
  void initState() {
    super.initState();

    getCurrrencyValue(selectedCurrency);
  }

  void getCurrrencyValue(String val) async {
    CoinData coinData = CoinData();

    var data = await coinData.getCoinData(val);
    // print(data['rate']);
    setState(() {
      currencyValue = data['rate'].toString();
    });
  }

  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (int i = 0; i < currenciesList.length; i++) {
      var newItem = DropdownMenuItem(
        child: Text(currenciesList[i]),
        value: currenciesList[i],
      );
      dropDownItems.add(newItem);
    }
    return dropDownItems;
  }

  List<Widget> getPickerItems() {
    List<Text> pickerItems = [];

    for (String curr in currenciesList) {
      pickerItems.add(Text(curr));
    }
    return pickerItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
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
                  '1 BTC = $currencyValue $selectedCurrency',
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
                onSelectedItemChanged: (selectedIndex) {
                  getCurrrencyValue(currenciesList[selectedIndex]);
                  setState(() {
                    selectedCurrency = currenciesList[selectedIndex];
                  });
                },
                children: getPickerItems(),
              )
              //  DropdownButton<String>(
              //   value: selectedCurrency,
              //   items: getDropdownItems(),
              //   onChanged: (value) {
              //     setState(() {
              //       selectedCurrency = value;
              //     });
              //   },
              // ),
              ),
        ],
      ),
    );
  }
}
