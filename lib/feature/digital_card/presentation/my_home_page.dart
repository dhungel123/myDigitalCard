
import 'package:first_project/core/constants/app_images.dart';
import 'package:first_project/core/constants/app_strings.dart';
import 'package:first_project/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

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
        title: Text("My Digital Card",style: AppStyles.mainStyle,),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
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
                      backgroundImage: NetworkImage(AppImages.avatar)

                      ,
                    ),
                    
                    SizedBox(height: 16,),

                    DigitalCardRow(labelName: AppString.name, labelValue:AppString.nameValue),


                    SizedBox(height: 16,),

                    DigitalCardRow(labelName: AppString.contact, labelValue: AppString.contactValue),

                    SizedBox(height: 16,),

                   DigitalCardRow(labelName: AppString.rollNo, labelValue: AppString.rollNoValue),
                    
                    SizedBox(height: 16,),

                    DigitalCardRow(labelName:AppString.address , labelValue:AppString.addressValue ),


                    SizedBox(height: 16,),

                  DigitalCardRow(labelName: AppString.dob, labelValue:AppString.dobValue ),
                    
                    SizedBox(height: 16,)

                  ]
              ),
            ),
          ),
        ),
      ),

    );
  }

 Widget DigitalCardRow(
     {
   required String labelName,
   required String labelValue,
   int? maxline
 }
 )
 {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Expanded(
            child: Text(
              labelName,
              style: TextStyle(fontSize: 22,color: Colors.green),

            ),
          ),
          Expanded(
            child: Text(
              labelValue,
              maxLines:maxline,
              style: TextStyle(fontSize: 22,color: Colors.brown),
              ),
          )
        ],
      );
  }
}
