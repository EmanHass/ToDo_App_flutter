import 'package:flutter/material.dart';
import 'package:todo_list/todoScreen.dart';
import 'package:todo_list/widgets/taskCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30,vertical:30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("https://cdn3d.iconscout.com/3d/premium/thumb/to-do-list-4727272-3928189.png",width: 80,height: 80,),
              Expanded(
                child: ListView(
                  children: [
                  SizedBox(height: 20,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',), SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',), SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),SizedBox(height: 15,),
                  TaskWidget( decription: 'this is todo app', title: 'Get Started',),                   

                    ],))
                  ],
                ),
              ),
            
            
          ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>  TodoDetails()));},
        child: const Icon(Icons.add),
      ), 
    );
  }
}

