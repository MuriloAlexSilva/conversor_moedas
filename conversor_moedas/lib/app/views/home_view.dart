import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 100),
          child: Column(
            children: [
              Image.asset(
                "images/logo.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 50),
              Currencybox(),
              SizedBox(height: 10),
              Currencybox(),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("Converter"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
