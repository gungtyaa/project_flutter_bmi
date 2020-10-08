import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('My Profile'), centerTitle: true,
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
                Picture(),
                Name(),
                Website(),
                RowOne(),
                RowTwo(),
              ]
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundImage: AssetImage('images/img.jpg'),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Gusti Ayu Putu Setiari',
        style: TextStyle(
          color: Colors.white, fontSize: 25,
        ),),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('https://elearning.undiksha.ac.id/',
        style: TextStyle(
          color: Colors.white, fontSize: 20,
        ),),
    );
  }
}

class RowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.add_location, size: 45, color: Colors.white,
                      ),
                      Text(
                        'Badung', style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.school, size: 45, color: Colors.white,
                      ),
                      Text(
                        'Undiksha', style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          )
        ]
    );
  }
}

class RowTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.movie, size: 45, color: Colors.white,
                      ),
                      Text(
                        'Romantic', style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.fastfood, size: 45, color: Colors.white,
                      ),
                      Text(
                        'All I Can Eat', style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]
                ),
              ),
            ),
          )
        ]
    );
  }
}