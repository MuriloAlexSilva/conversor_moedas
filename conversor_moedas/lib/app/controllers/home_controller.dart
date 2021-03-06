import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<CurrencyModel> currencies;

  //Controllers para os textfield
  final TextEditingController toText;
  final TextEditingController fromText;

  //Controllers para os dropDownButton
  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;
  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  //Função para conversão
  void convert() {
    String text = toText.text;
    //Abaixo seria para converter o text em double
    //Caso seja null então mostrar 1.0
    double value = double.tryParse(text.replaceAll(",", ".")) ??
        1.0; //O replaceAll seria para converter de , para .
    double returnValue = 0;

    if (fromCurrency.name == "Real") {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == "Dolar") {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == "Euro") {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == "Bitcoin") {
      returnValue = value * toCurrency.bitcoin;
    }
    fromText.text = returnValue
        .toStringAsFixed(2); //asFixed(2), vai fixar em 2 casas após a virgula
  }
}
