import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {

var listNama = [
'MARENTINO', 'FAISAL', 'TAUFIK', 'FIRA',
'SAKILA', 'AYU', 'HANIF', 'FEBRI'
];
var listWarna = [
Color.fromARGB(221, 143, 3, 3), Colors.purple, Colors.teal, Colors.lime,
Colors.indigo, Colors.deepPurple, Colors.cyan,
Colors.blue, Colors.yellow
];
int index = 0;
void incrementIndex () {
  setState(() {
    index++;
    });
}
@override
Widget build(BuildContext context) {
return Column(
children: [
Text(
'apa kabar',
textDirection: TextDirection.ltr,
),
Text(
listNama[index % listNama.length],
textDirection: TextDirection.ltr,
style: TextStyle(
fontSize: 45,
fontWeight: FontWeight.bold,
color: listWarna[index % listWarna.length]
),
)
],
);
}
}

class TeksUtama extends StatefulWidget {

final state = StateTeksUtama();

@override
State<StatefulWidget> createState() => state;
}

void main() {
TeksUtama teksUtama = TeksUtama();

runApp(
MaterialApp(
title: 'Halo Dunia',
home: Scaffold(
body: Center(
child: teksUtama,
),
floatingActionButton: FloatingActionButton(
tooltip: 'Refresh',
child: Icon(Icons.refresh),
onPressed: teksUtama.state.incrementIndex,
),
)
)
);
}