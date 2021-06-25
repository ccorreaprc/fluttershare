import 'package:flutter/material.dart';
import 'package:fluttershare/pages/signup_screen.dart';

class SignUpScreen extends StatelessWidget {
  //const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/logo.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
              children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.alternate_email, color: Colors.black,),
                        ),
                        Expanded(child: TextField(decoration: InputDecoration(hintText: "Name"),))
                      ],
                    ),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.alternate_email, color: Colors.black,),
                        ),
                        Expanded(child: TextField(decoration: InputDecoration(hintText: "Surname"),))
                      ],
                    ),
                  
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.alternate_email, color: Colors.black,),
                        ),
                        Expanded(child: TextField(decoration: InputDecoration(hintText: "Email address"),))
                      ],
                    ),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.lock, color: Colors.black,),
                      ),
                      Expanded(child: TextField(decoration: InputDecoration(hintText: "Password"),))
                    ],
                  ),
                  Row(
                    children: <Widget>[Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        ),
                        child: Icon(Icons.arrow_forward, color: Colors.white,
                      ),
                      
                    )],
                  )
                ],
              ),
            )
            )
          ],
        ),
    );
  }
}