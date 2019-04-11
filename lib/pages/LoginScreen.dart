import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:enigma_messenger/pages/Home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtNombre = TextEditingController();
  TextEditingController txtValidator = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    cambiar(){
      setState(() {
       var route = MaterialPageRoute(
              builder: (BuildContext context) =>
                HomePage(),
              );
               Navigator.of(context).push(route); 
      });
    }
    final nombre =TextField(
      keyboardType: TextInputType.text,
      controller: txtNombre,
      style: TextStyle(color: Color(0xFFeb3b5a)),
      decoration: InputDecoration(
        labelText: "Nombre",
        labelStyle: TextStyle(color: Color(0xFFeb3b5a)),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFeb3b5a)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFeb3b5a)),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    final validator =TextField(
      keyboardType: TextInputType.number,
      controller: txtValidator,
      maxLength: 6,
      obscureText: true,
      style: TextStyle(color:Color(0xFFeb3b5a), letterSpacing: 30.0),
      decoration: InputDecoration(   
        labelText: "TOKEN",
        labelStyle: TextStyle(color: Color(0xFFeb3b5a),letterSpacing: 0),
        helperStyle: TextStyle(color: Color(0xFFeb3b5a)),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFeb3b5a)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFeb3b5a)),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    final boton =Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: Color(0xFFeb3b5a),
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            minWidth: 200.0,
            height: 50.0,
            child: Text("Let's start", style: TextStyle(color: Colors.white, fontSize: 20.0),),
            onPressed: (){
              cambiar();
            },
          ),
        ),
      ),
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Color(0xFFd2dae2),
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold( 
      backgroundColor: Color(0xFFd2dae2),
      body: Center(
       child:ListView(
        
         children: <Widget>[
           Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child:Column(
              
            ),
         ),
         Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
           
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 44.0, left: 44.0,top: 1.0),
                  child: nombre,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 44.0, left: 44.0,top: 30.0),
                  child: validator,
                ),
                InkWell(
                    child: Text('How dows this work?', style: TextStyle(color: Color(0xFFeb3b5a), fontSize: 20.0), textAlign: TextAlign.right,),
                    onTap: (){
                      print('Funciona');
                    },
                  ),
                Padding(
                  padding: EdgeInsets.only(right: 44.0, left: 44.0,top: 20.0),
                  child: boton,
                ),
              ],
            ),
         ),
         ],
       ),
      ),
    );
  }
}