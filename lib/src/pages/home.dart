import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:santident/src/components/app_bar_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            appBar(context),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                       _buildCardNewAppointment(),
                       _buildServices(),
                       _buildServices(),
                      ],
                    ),
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }

 Widget _buildCardNewAppointment() {
   final _screenSize = MediaQuery.of(context).size;
   return Material(
     color: Colors.transparent,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(20.0)
     ),
     elevation: 3.0,
     child: Container(
      width: _screenSize.width * 0.28,
      height: _screenSize.height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: 1.0),
      // padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xfff4b97c),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Citas', style: GoogleFonts.ubuntu(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Agendar\ncitas', style: GoogleFonts.ubuntu(fontSize: 18.0, color: Colors.white)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0) ),
                color: Color(0xfff1a14b),
              ),
              child: Image.asset('assets/images/calendar.png', height: _screenSize.height * 0.05),
            ),
          ),
        ],
      ),
    ),
   );
 }

 Widget _buildServices(){
  final _screenSize = MediaQuery.of(context).size;
   return Material(
     color: Colors.transparent,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(20.0)
     ),
     elevation: 3.0,
     child: Container(
      margin: EdgeInsets.symmetric(horizontal: 1.0),
      width: _screenSize.width * 0.28,
      height: _screenSize.height * 0.2,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xffef9383),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('assets/images/tooth.png', height: _screenSize.height * 0.07),
            ),
          Text('Servicios', style: GoogleFonts.ubuntu(fontSize: 18.0))
        ],
      ),
    ),
   );
  }
}