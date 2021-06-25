import 'package:flutter/material.dart';
import 'package:fluttershare/pages/signup_screen.dart';

class SignInScreen extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  
                  Text("Sign In",
                  style: Theme.of(context).textTheme.display1,
                  ),
                  FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Sign UP",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                )
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.alternate_email, color: Colors.black,),
                        ),
                        Expanded(child: TextField(decoration: InputDecoration(hintText: "Email address"),))
                      ],
                    ),
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