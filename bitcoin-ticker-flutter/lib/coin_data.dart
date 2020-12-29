import 'package:bitcoin_ticker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = 'DD07495D-3344-4B3F-9713-A5371A79D14E';
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCoinData(String currency) async {
    var url = '$coinAPIURL/BTC/$currency?apikey=$apiKey';

    NetworkHelper networkHelper = NetworkHelper(url);
    var coinData = await networkHelper.getData();
    // print(coinData);
    return coinData;
  }
}
