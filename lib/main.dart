import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Color.fromARGB(255, 220, 182, 255)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const dotsData = [
  // Digit 0
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ],
  // Digit 1
  [
    [0, 0, 1, 0, 0],
    [0, 1, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 1, 1, 0],
  ],
  // Digit 2
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 0, 0, 0, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0],
    [1, 1, 1, 1, 1],
  ],
  // Digit 3
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
    [0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ],
  // Digit 4
  [
    [0, 0, 0, 1, 0],
    [0, 0, 1, 1, 0],
    [0, 1, 0, 1, 0],
    [1, 0, 0, 1, 0],
    [1, 1, 1, 1, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 1, 0],
  ],
  // Digit 5
  [
    [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [0, 0, 0, 0, 1],
    [0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ],
  // Digit 6
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ],
  // Digit 7
  [
    [1, 1, 1, 1, 1],
    [0, 0, 0, 0, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0],
    [0, 1, 0, 0, 0],
    [0, 1, 0, 0, 0],
  ],
  // Digit 8
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ],
  // Digit 9
  [
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 1],
    [0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
  ]
];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _input_1 = 0;
  int _input_2 = 0;

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Center(
        child: Text(
          'CP-SU LED MATRIX',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: BuildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 5,
          ),
          _button_up(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 375,
                height: 275,
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 12.0, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    _buildLED_1(),
                    _buildLED_2(),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
              )
            ],
          ),
          _button_down(),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  Widget _button_down() {
    return Container(
      width: 90.0,
      height: 90.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _input_2 --;
              if(_input_1 == 0 && _input_2 < 0){
                _input_1 = 9;
                _input_2 = 9;
              }else if(_input_2 < 0){
                _input_1 --;
                _input_2 = 9;
              }
            });
          },
          child: Icon(
            Icons.arrow_drop_down,
            size: 60,
          ),
        ),
      ),
      
    );
  }

  Widget _button_up() {
    return Container(
      width: 90.0,
      height: 90.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _input_2 ++;
              if(_input_1 == 9 && _input_2 > 9){
                _input_1 = 0;
                _input_2 = 0;
              }else if(_input_2 > 9){
                _input_1 ++;
                _input_2 = 0;
              }
            });
          },
          child: Icon(
            Icons.arrow_drop_up,
            size: 60,
          ),
        ),
      ),
      
    );
  }

  Column _buildLED_1() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
          _buildlist(HomePage.dotsData[_input_1])
      ],
    );
  }

  Column _buildLED_2() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
          _buildlist(HomePage.dotsData[_input_2])
      ],
    );
  }


  Widget _buildlist(List<List<int>> numList){
    return Column(
      children: [
        for (int i = 0; i < numList.length; i++)
          _buildRow(numList[i]),
      ],
    );
  }

  Widget _buildRow(List<int> numList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //for (int i = 1; i <= numList.length; i++) _builddot(numList[i]),
        for(var num in numList)_builddot(num),
      ],
    );
  }

  Widget _builddot(int num) {
    if (num == 1) {
      return Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          width: 17,
          height: 17,
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 85, 255, 91),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          width: 17,
          height: 17,
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 92, 92, 92),
          ),
        ),
      );
    }
  }
}
