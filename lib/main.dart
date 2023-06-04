import 'package:flutter/material.dart';
import 'package:food_ordering_app/List.dart';
import 'package:food_ordering_app/review.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,

      ),
      home: MyHomePage(),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
           SliverAppBar(
             expandedHeight: 200,
             floating: false,
             pinned: true,
             bottom: TabBar(
               indicatorColor: Colors.white,
               indicatorWeight: 5,
               tabs: [
               Tab(icon:Icon(Icons.menu),text: "Menu",),
               Tab(icon:Icon(Icons.reviews),text: "Review" ,)
             ],

             ),
             flexibleSpace: FlexibleSpaceBar(

               
               background: Image.asset("assets/Images/food.jpg" , fit: BoxFit.cover,),

               
             ),


           )

          ];


        }, body: TabBarView(
          children: [
            list_funtion(),
            review(),
        ],

        )

        ),
      ),
    );
  }
}
