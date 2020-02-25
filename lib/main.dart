import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _acontroller = TextEditingController();
  final TextEditingController _bcontroller = TextEditingController();
  final TextEditingController _ccontroller = TextEditingController();
  final TextEditingController _dcontroller = TextEditingController();
  double a = 0.0,
      b = 0.0,
      c = 0.0,
      d = 0.0,
      result = 0.0,
      result1 = 0.0,
      realResult = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Fraction Calculator App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(130, 20, 130, 0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: _acontroller,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "1st numerator",
                  contentPadding: EdgeInsets.all(12),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(2.0),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "_____________",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 10, 130, 0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: _bcontroller,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "1st denominator",
                  contentPadding: EdgeInsets.all(12),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 80, 130, 0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: _ccontroller,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "2nd numerator",
                  contentPadding: EdgeInsets.all(12),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "_____________",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 10, 130, 40),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: _dcontroller,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "2nd denominator",
                  contentPadding: EdgeInsets.all(12),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Choose operation to get the result",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text("+"),
                  onPressed: _onPress,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text("-"),
                  onPressed: _onPress1,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text("*"),
                  onPressed: _onPress2,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text("/"),
                  onPressed: _onPress3,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text("Reset"),
                  onPressed: _reset,
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
            ]),
            Text(
              "Result in decimal: $realResult",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPress() {
    setState(() {
      a = double.parse(_acontroller.text);
      b = double.parse(_bcontroller.text);
      result = a / b;
      c = double.parse(_ccontroller.text);
      d = double.parse(_dcontroller.text);
      result1 = c / d;
      realResult = result + result1;
    });
  }

  void _onPress1() {
    setState(() {
      a = double.parse(_acontroller.text);
      b = double.parse(_bcontroller.text);
      result = a / b;
      c = double.parse(_ccontroller.text);
      d = double.parse(_dcontroller.text);
      result1 = c / d;
      realResult = result - result1;
    });
  }

  void _onPress2() {
    setState(() {
      a = double.parse(_acontroller.text);
      b = double.parse(_bcontroller.text);
      result = a / b;
      c = double.parse(_ccontroller.text);
      d = double.parse(_dcontroller.text);
      result1 = c / d;
      realResult = result * result1;
    });
  }

  void _onPress3() {
    setState(() {
      a = double.parse(_acontroller.text);
      b = double.parse(_bcontroller.text);
      result = a / b;
      c = double.parse(_ccontroller.text);
      d = double.parse(_dcontroller.text);
      result1 = c / d;
      realResult = result / result1;
    });
  }

  void _reset() {
    setState(() {
       _acontroller.text = " ";
    _bcontroller.text = " ";
    _ccontroller.text = " ";
    _dcontroller.text = " ";
    realResult=0.0;
    });
  }
}
