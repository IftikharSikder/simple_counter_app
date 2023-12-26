import 'package:flutter/material.dart';
void main(){
  runApp(
    counterApp()
  );
}
class counterApp extends StatelessWidget {
  const counterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: homeState(),
    );
  }
}
class homeState extends StatefulWidget {
  const homeState({Key? key}) : super(key: key);

  @override
  State<homeState> createState() => _homeStateState();
}

class _homeStateState extends State<homeState> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter++'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              //color: Colors.blue,
              child: Center(
                child: Text('$i',style: TextStyle(fontSize: 59,color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextButton(onPressed: (){
                setState(() {
                  i=0;
                });
              }, child: Icon(Icons.restart_alt),
                  style: ButtonStyle(iconSize: MaterialStateProperty.all(50))),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            i++;
          });
        },
      ),
    );
  }
}

