import 'package:flutter/material.dart';
import 'package:pdpui6/animation/n/FadeAnimati.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/im_party.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    FadeAnimation(Text("Find the best parties near you.",style: TextStyle(fontSize: 40 , color: Colors.yellow),),1),
                    SizedBox(
                      height: 15,
                    ),
                    FadeAnimation(Text("Let us find you a party for your interest",style: TextStyle(fontSize: 25,color: Colors.green),), 2)

                  ],
                ),
                _isLogin ?
                FadeAnimation(Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange
                  ),
                  child: Center(
                      child: Text(
                        "Google+",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ), 3):
                FadeAnimation(Row(

                  children: [
                    Expanded(child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red
                      ),
                      child: Center(
                          child: Text(
                            "Google",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),),
                    SizedBox(width: 20,),
                   Expanded(child:  Container(
                     height: 55,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.blue
                     ),
                     child: Center(
                         child: Text(
                           "Fecebook",
                           style: TextStyle(color: Colors.white, fontSize: 18),
                         )),
                   ))
                  ],
                ),3)


              ],
            ),
          ),
        ),
    );
  }
}
