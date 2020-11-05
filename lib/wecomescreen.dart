import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';




class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Size size = MediaQuery.of(context).size;

    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.5,0.9],
          colors: [
            Color(0xFF1E5473),
            Color(0xFF358DB9)

          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,


        body: Stack(
          children: <Widget>[
            Positioned(
              top:-40,
              right : -80,

              child: Image(
               image: AssetImage(
                'assets/images/a.png'
              ),
            ),
            ),
            Positioned(
              top: size.height/5,
              right: 30,
              child: Image(

                image: AssetImage(
                    'assets/images/b.png'
                ),

              ),
            ),
            Positioned(
              bottom: 0,
              child: SvgPicture.asset(
                  'assets/images/house.svg',
                 width: size.width+50,
              ),



              ),
            Positioned(
              top: size.height/15,
              left: size.width/30,

              child: Text(
                'Happy Halloween !',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    fontSize: size.height/20,
                  ),
                ),
              ),

            ),
            Positioned(
              top: size.height/6.5,
              left: size.width/20,

              child: Text(
                'Get ready for Halloween Party',
                style: GoogleFonts.turretRoad(
                  textStyle: TextStyle(
                    fontSize: size.height/40,
                  ),
                ),
              ),

            ),
            Positioned(
              bottom: size.width/8 + 5,
              left: size.width/2.5,

              child: Text(
                'Swipe Up',
                style: GoogleFonts.turretRoad(
                  textStyle: TextStyle(
                    fontSize: size.height/40,
                    color: Colors.white
                  ),
                ),
              ),

            ),
            Positioned(
              bottom: 0,
              left: size.width/2.5,
              child:Container(
                width: size.width/5,
                height: size.width/8,
                decoration: BoxDecoration(
                  color: Color(0xFFFA7B14),
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(size.width),topRight:Radius.circular(size.width))
                ),
                child: Center(
                  child: Icon(

                    Icons.keyboard_arrow_up,
                    color: Colors.white.withOpacity(0.8),
                    size: size.width/6,
                  ),
                ),

              ),
            )



          ]
        )

      ),
    );

  }
}
