import 'package:flutter/material.dart';
import 'Page2.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background1.jpg"),
          fit: BoxFit.cover,
        )),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: const Color.fromARGB(255, 126, 126, 126),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    const Text(
                      "Aufa As'ad Atsal Fs",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const Text(
                      "Vocational High School Student at SMK Wikrama Bogor",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 0, 0, 0)),
                    ),
                    
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2()),
                      );
                    }, child:const Text('See More'),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}