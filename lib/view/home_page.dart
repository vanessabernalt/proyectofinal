import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideqs/util/resize.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/banner_home.png',
                    width: MediaQuery.of(context).size.height,
                    height: MediaQuery.of(context).size.width*6/8,
                    fit: BoxFit.fill,),

              Container(
                padding: EdgeInsets.only(
                    top: resizeH(mediaQ: _height, size: 90),
                    left: 25,
                    right: 25
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/img/mi_perfil.png',
                            width: resizeH(mediaQ: _height, size: 140),
                            height: resizeH(mediaQ: _height, size: 140),
                            fit: BoxFit.contain,),
                          Image.asset('assets/img/carne_digital.png',
                            width: resizeH(mediaQ: _height, size: 140),
                            height: resizeH(mediaQ: _height, size: 140),
                            fit: BoxFit.contain,),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              top: 10
                          )
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/img/puntos_de_atencion.png',
                            width: resizeH(mediaQ: _height, size: 140),
                            height: resizeH(mediaQ: _height, size: 140),
                            fit: BoxFit.contain,),
                          Image.asset('assets/img/poliza.png',
                            width: resizeH(mediaQ: _height, size: 140),
                            height: resizeH(mediaQ: _height, size: 140),
                            fit: BoxFit.contain,),
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          /*Image.asset('assets/img/ideqs_blue_icon.png',
                            width: resizeH(mediaQ: _height, size: 50),
                            height: resizeH(mediaQ: _height, size: 20),
                            fit: BoxFit.contain,),*/
                        ],
                      ),
                    ]
                ),
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
