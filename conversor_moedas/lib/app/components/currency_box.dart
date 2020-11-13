import 'package:flutter/material.dart';

class Currencybox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, //Para subir o TextField
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              iconEnabledColor: Colors.amber, //Cor na seta do seletor
              isExpanded: true, //Para inserir o seletor no final do button
              //O Container no underline, seria para colocar cor na linha
              underline: Container(height: 1, color: Colors.amber),

              items: [
                DropdownMenuItem(child: Text("Real")),
                DropdownMenuItem(child: Text("Dolar")),
                DropdownMenuItem(child: Text("Euro")),
                DropdownMenuItem(child: Text("Bitcoin")),
              ],
              onChanged: (value) {},
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
          ),
        ),
      ],
    );
  }
}
