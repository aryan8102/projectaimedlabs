import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Aimed Labs'),
      ),
      body: OrientationBuilder(
        builder:(context , orientation){
          return Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      child: Card(
                        color: Colors.redAccent,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ListTile(
                              title: Text('1'),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 100,

                                width:orientation ==Orientation.portrait?  300:300,
                                padding: EdgeInsets.all(16.0),
                                child: Card(
                                  color: Colors.grey,
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ListTile(
                                        title: Text('2'),

                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.greenAccent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('3'),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(

                      child:Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Card(
                              color: Colors.redAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ListTile(
                                    title: Text('4'),
                                  ),
                                  SizedBox(
                                    height: 0.1,
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          alignment: Alignment.topCenter,
                                            height: 100,

                                            width:orientation ==Orientation.portrait?  200:200,
                                            padding: EdgeInsets.all(16.0),
                                            child:Card(
                                                elevation: 4.0,
                                                color: Colors.grey,
                                                child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Text('5'),



                                                )
                                            )





                                        ),
                                      )
                                    ],

                                  ),

                                  Container(
                                    padding:EdgeInsets.all(8.0),
                                    child: Card(
                                      color: Colors.greenAccent,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          ListTile(
                                            title: Text('6'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),




                    ),
                  ],

                ),




              ),


            ),
          );
        },

      ),


    );

  }
}
