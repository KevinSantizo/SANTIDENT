import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  final Function toogleViews;
  Login({ this.toogleViews });
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  void chagedStateIcon(){
    setState(() =>  _obscureText = !_obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/logo.png', height: 70.0,)
                ),
                SizedBox(height: 25.0,),
                Text(getText, textScaleFactor: 1.5, style: GoogleFonts.ubuntu(),),
                SizedBox(height: 15.0,),
                Theme(
                  data: ThemeData(
                    primaryColor: Color(0xFF59BEB6),
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Ingresa tu email',
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Feather.mail,
                          color: Color(0xFF59BEB6),
                        ),
                        suffixStyle: TextStyle(color: Color(0xFF59BEB6)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Theme(
                  data: ThemeData(
                    primaryColor: Color(0xFF59BEB6),
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration:  InputDecoration(
                        hintText: 'Ingresa tu contraseña',
                        labelText: 'Contraseña',
                        prefixIcon: _obscureText ? _lockIconClosed() : _lockIconOpen(),
                        suffixIcon: IconButton(
                          icon: _obscureText ? _iconButtonVisibilityOn() : _iconButtonVisibilityOff(),
                          onPressed:  chagedStateIcon,
                        ),
                        suffixStyle: TextStyle(color: Color(0xFF59BEB6))),
                  ),
                ),
                SizedBox(height: 45.0,),
                NeumorphicButton(
                  padding: EdgeInsets.all(15.0),
                  style: NeumorphicStyle(
                    depth: 2.0,
                    intensity: 1.0,
                    color: Colors.white,
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)), 
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  child: Text('Iniciar sesión', textAlign: TextAlign.center, style: GoogleFonts.ubuntu(color: Color(0xFF59BEB6), fontSize: 20.0 ),),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('¿No tienes cuenta?', textScaleFactor: 1.2, style: GoogleFonts.ubuntu(color:  Color(0xFF347EBE)),),
                    FlatButton(
                      onPressed: () => widget.toogleViews(),
                      child: Text('Crear una', textScaleFactor: 1.1, style: GoogleFonts.ubuntu(color: Color(0xFF347EBE), decoration: TextDecoration.underline),),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
  String getText = '¡Bienvenido de nuevo!';
  Widget _iconButtonVisibilityOn() => Icon(Feather.eye, color: Color(0xFF59BEB6),);
  Widget _iconButtonVisibilityOff() => Icon(Feather.eye_off, color: Color(0xFF59BEB6),);
  Widget _lockIconClosed() => Icon(Feather.lock, color: Color(0xFF59BEB6),);
  Widget _lockIconOpen()   => Icon(Feather.unlock, color: Color(0xFF59BEB6),);
}