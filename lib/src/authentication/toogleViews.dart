import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:santident/src/authentication/authenticate.dart';

class ToogleViewsPages extends StatefulWidget {
  @override
  _ToogleViewsPagesState createState() => _ToogleViewsPagesState();
}

class _ToogleViewsPagesState extends State<ToogleViewsPages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        brightness: Brightness.light,
//      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _image(),
                  SizedBox(height: 30.0,),
                  _buttons()
//                _form(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image(){
    return Container(
      child: Image.asset(
        'assets/images/logo.png',
        height: 80.0,
      ),
    );
  }

  Widget _buttons(){
    return Container(
      child: Column(
        children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            padding: EdgeInsets.all(10.0),
            color: Color(0xFF337FBD),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Feather.facebook, color: Colors.white,),
                VerticalDivider(),
                Text('Inicia sesión con Facebook', textScaleFactor: 1.2, style: GoogleFonts.ubuntu(color: Colors.white),),
              ],
            ),
          ),
          SizedBox(height: 5.0,),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            color: Colors.black,
            padding: EdgeInsets.all(10.0),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('assets/images/google.svg', height: 25.0,),
                VerticalDivider(),
                Text('Inicia sesión con Google', textScaleFactor: 1.2, style: GoogleFonts.ubuntu(color: Colors.white),),
              ],
            ),
          ),
          SizedBox(height: 5.0,),
          OutlineButton(
            color: Colors.teal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            padding: EdgeInsets.all(10.0),
            onPressed: (){
              showCupertinoModalBottomSheet(
                expand: true,
                context: context,
                builder: (BuildContext context, scrolController){
                  return Material(
                    child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Feather.x_circle),
                        ),
                      ),
                      Authenticate(),
                    ],
                  ));
                }
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Feather.mail),
                VerticalDivider(),
                Text('Continuar con Email', textScaleFactor: 1.2, style: GoogleFonts.ubuntu(),),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

