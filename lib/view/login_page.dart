import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideqs/util/resize.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _textEditingControllerEmail = new TextEditingController();
  TextEditingController _textEditingControllerPassword = new TextEditingController();
  int _value = 1;
  bool eyePass = false;
  bool LogButton = false;

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration (
                color: Colors.transparent,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/background_app.png'),
                  ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Color.fromRGBO(81, 98, 141, 0.7),
                        Color.fromRGBO(0, 11, 57, 0.8),
                      ],
                      stops: [
                        0.0,
                        1.0
                      ])),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: resizeH(mediaQ: _height, size: 90),
                  left: 25,
                  right: 25
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(31, 37, 53, 0.01),
                  // borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(80, 110), bottomRight: Radius.elliptical(80, 110))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: 185
                      )
                  ),
                  Image.asset('assets/img/name_app_icon.png',
                    width: resizeH(mediaQ: _height, size: 270),
                    height: resizeH(mediaQ: _height, size: 90),
                    fit: BoxFit.contain,),
                  Container(
                      padding: EdgeInsets.only(
                          top: 15
                      )
                  ),
                  Image.asset('assets/img/qr_code_icon.png',
                    width: resizeH(mediaQ: _height, size: 50),
                    height: resizeH(mediaQ: _height, size: 50),
                    fit: BoxFit.contain,),
                  Container(
                      padding: EdgeInsets.only(
                          top: 35
                      )
                  ),
                  InputDecorator(
                    decoration:  InputDecoration(
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(Icons.article_outlined, color: Colors.white),
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                    ),),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isDense: true,
                        itemHeight: 48.0,
                        hint: Text(
                          "Tipo de Identificacion",
                          style: TextStyle(color: Colors.white,fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10
                      )
                  ),
                  TextField(
                    controller: _textEditingControllerEmail,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(1),
                      isDense: true,
                      hintText: "Numero de Identificacion",
                      hintStyle: TextStyle(color: Colors.white,fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        //labelText: 'Numero de Identificacion'
                    ),
                    style: TextStyle(
                      height: 1
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: 15
                      )
                  ),
                  TextField(
                    controller: _textEditingControllerPassword,
                    obscureText: eyePass == false ? true : false,
                    decoration: InputDecoration(
                      isDense: true,
                        hintText: "Contraseña",
                        hintStyle: TextStyle(color: Colors.white,fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        suffixIcon: IconButton(
                          icon: Icon( eyePass == false ? Icons.remove_red_eye : Icons.remove_red_eye_outlined, color: Colors.white,),
                          onPressed: (){
                            setState(() {
                              eyePass = !eyePass;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                          color: Colors.white,
                        ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: 15
                      )
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            LogButton = !LogButton;
                            if(_textEditingControllerEmail.text.isEmpty||_textEditingControllerPassword.text.isEmpty){
                              LogButton = !LogButton;
                            }else{
                              LogButton = !LogButton;
                            }
                            Navigator.of(context).pushReplacementNamed('/home');
                          });
                        },
                        hoverColor: Colors.red,
                        focusColor: Colors.red,
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 15,
                              right: 15
                          ),
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/15,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(81, 98, 141, 0.7),
                                Color.fromRGBO(0, 11, 57, 0.7),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 12
                              )
                            ],
                          ),
                          child: Center(
                              child: LogButton != true ? Text("Ingresar",
                                  style: GoogleFonts.signika(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  )) : CircularProgressIndicator()),
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacementNamed('/recovery');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                              "Olvido su contraseña?",
                            style: GoogleFonts.signika(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No tiene cuenta? ",
                        style: GoogleFonts.signika(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacementNamed('/register');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            " Registrese",
                            style: GoogleFonts.signika(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),),
                        ),
                      ),
                    ],
                  ),

                  Container(
                      padding: EdgeInsets.only(
                          top: 10
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Desarrollado por  ",
                        style: GoogleFonts.signika(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      /*Image.asset('assets/img/ideqs_icon.png',
                        width: resizeH(mediaQ: _height, size: 50),
                        height: resizeH(mediaQ: _height, size: 20),
                        fit: BoxFit.contain,),*/
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
