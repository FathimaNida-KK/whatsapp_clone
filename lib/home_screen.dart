import 'package:flutter/material.dart';
class HomeScreen  extends StatefulWidget {

const HomeScreen({Key?key}):
    super(key:key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name="Empty";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("counter"),
        actions: [
          IconButton(onPressed:(){},
              icon: Icon(Icons.minimize),)
        ],
      ),
       
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            if(name.length<4){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor:Colors.red,
                  content:Text("name must atleast 4 character long"),
                  duration:Duration(seconds: 2),
                ),
                );}


            },

          backgroundColor: Colors.cyan,
          child: const Icon(Icons.add),
        ),
    body: Center(
      child:ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context,"second screen");
    },
     child: Text("next page"),
      )
       ),

     );


    }

  }

