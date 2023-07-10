import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
* Starting pint of our flutter o\project
* Here MyApp is the parent widget in this project
*
* */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.recursive().fontFamily,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("My Digital Card",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:const  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16,),

                 CircleAvatar(
                   radius: 52,
                     backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.BUHldsdP4pMWNTS7Zc3bKgHaE5?pid=ImgDet&w=1100&h=728&rs=1')

                     ,
                 ),
                 SizedBox(height: 16,),


                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        'Name: ',style: TextStyle(fontSize: 22,color: Colors.green),

                      ),
                      Text('Ujjwal dhungel',style: TextStyle(fontSize: 22,color: Colors.green),
                        maxLines:2,)
                    ],
                  ),
                  SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('contact:',style: TextStyle(fontSize:22,color: Colors.green ),),
                      Text('9824001743',style: TextStyle(fontSize:22,color: Colors.green ),)
                    ],
                  ),
                  SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Roll No:',style: TextStyle(fontSize: 22,color: Colors.green),),
                      Text('35',style: TextStyle(fontSize:22,color: Colors.green ),)
                    ],
                  ),
                  SizedBox(height: 16,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(

                          child: Text('Address:',style: TextStyle(fontSize: 22,color: Colors.black87),)
                      ),
                    Expanded(
                      //flex: 2,
                      child: Text('Maidhar,Jhapa',style: TextStyle(fontSize: 22,color: Colors.green),
                      maxLines: 3,
                      ),
                    )
                    ],
                  ),
                  SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DOB:',style: TextStyle(fontSize: 22,color: Colors.blueAccent),),
                      Text('2056/06/25',style: TextStyle(fontSize: 23,color: Colors.red),)
                    ],
                  ),
                  SizedBox(height: 16,)

                ]
              ),
            ),
          ),
        ),
      ),

    );
  }
}




/*ctrl + shift + /
* Every widget parent and child relationship
*
* */
