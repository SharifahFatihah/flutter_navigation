import 'package:flutter/material.dart';
import 'main.dart';


class SelectColorPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectColorPage(),
    );
  }
  

}

class SelectColorPage extends StatefulWidget {
  SelectColorPage({Key? key}) : super(key: key);

  @override
  _SelectColorPageState createState() => _SelectColorPageState();

}

  class _SelectColorPageState extends State<SelectColorPage> {

    void navigateToMainPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return MyApp();
        }),
      );
//BuildContext context to pass/link data from below context

    }
  int red_value = 0;
  int green_value = 0;
  int blue_value = 0;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Pick Your Color'),
  backgroundColor: Colors.blue,
  ),
  body: ListView(
  // padding: EdgeInsets.all(15.0),
  // child: Center(
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.start,
  // mainAxisSize: MainAxisSize.max,
  children: <Widget>[

  new Expanded(
  child: Slider(
  value: red_value.toDouble(),
  min: 0.0,
  max: 255.0,
  divisions: 10,
  activeColor: Colors.blue,
  inactiveColor: Colors.grey,
  label: 'Set red value',
  onChanged: (double newValue) {
  setState(() {
    red_value = newValue.round();
  });
  },
  semanticFormatterCallback: (double newValue) {
  return '${newValue.round()} dollars';
  }
  )
  ),

    new Expanded(
        child: Slider(
            value: green_value.toDouble(),
            min: 0.0,
            max: 255.0,
            divisions: 10,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            label: 'Set green value',
            onChanged: (double newValue) {
              setState(() {
                green_value = newValue.round();
              });
            },
            semanticFormatterCallback: (double newValue) {
              return '${newValue.round()} dollars';
            }
        )
    ),

    new Expanded(
        child: Slider(
            value: blue_value.toDouble(),
            min: 0.0,
            max: 255.0,
            divisions: 10,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            label: 'Set blue value',
            onChanged: (double newValue) {
              setState(() {
                blue_value = newValue.round();
              });
            },
            semanticFormatterCallback: (double newValue) {
              return '${newValue.round()} dollars';
            }
        )
    ),

    Container(
      child: Center(child: Text('Selected Color')),
    ),
    Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromRGBO(red_value, green_value, blue_value, 1),
              borderRadius: BorderRadius.circular(70)
          ),
        ),
      ),
    ),

    // TextButton(
    //   child: Text('Select this color'),
    //   backgroundColor:
    //   onPressed: () {
    //     print('Hello');
    //   },
    // ),
    const SizedBox(height: 30),
    TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey)),
        onPressed: () {
          navigateToMainPage();
        },
        child: const Text(
          'Select this color',
          style: TextStyle(color: Colors.white),
        ))

  ]


  // )
  // ),
  )
  );
  }
  }

