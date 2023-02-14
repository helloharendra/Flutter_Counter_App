import 'package:flutter/material.dart';
void main() {
  runApp(
    const MaterialApp(
      title: "flutter",
    home: MyApp(),
    ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
   int count=0;
   int temp=0;
  void increment(){
    setState(() {
        if(temp==4){
          count--;
          temp=0;
          print((count));
          print(temp);
        }
        else {
          count ++;
          temp ++;
        }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          leading: const IconButton(onPressed: null, icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',),
          title: const Text('MyFirstApp'),
          actions: const [IconButton(onPressed: null,
           icon: Icon(Icons.search),
           tooltip: 'search',
           ),
           ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: increment,
            child: Text('hello $count'))
    
        ),
        floatingActionButton: const FloatingActionButton(onPressed: null,tooltip: "add",child: Icon(Icons.add),),
        
      ),
    );
  }
}

