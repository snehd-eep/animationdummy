import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BottleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          color: Color(0xFFEAEFFF),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [

            Positioned(
              top: 50,
              left: 30,
              child: Row(
                children: <Widget>[
                  GestureDetector(

                    child: Icon(
                      Icons.arrow_left,
                      color: Color(0xFF1B1F65),
                    ),
                    onTap: (){
                      //Navigator.of(context).push(MaterialPage())
                    },
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Color(0xFF1B1F65),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 50,
              child: Container(
                width: size.width/1.2,
                height: size.height/1.5 + 100,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(

                      width: size.width/1.2,
                      height: size.height/1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: size.height/20,left:size.width/3),
                              child: Text(
                                'Hylyte Hydro Bottle',
                                style: TextStyle(
                                  color: Color(0xFF1B1F65),
                                  fontSize: size.width/15,
                                  fontWeight: FontWeight.bold
                                ),

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height/50,left:size.width/3 ),
                              child: Text(
                                '22oz. hydration bottle from Hylyte',
                                style: TextStyle(
                                    color: Color(0xFF1B1F65).withOpacity(0.80),
                                    fontSize: size.width/25,

                                ),

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height/50,left:size.width/3.2,right: size.width/5),
                              child: Container(
                                padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,),

                                decoration: BoxDecoration(
                                  color:Color(0xFFE6F4FF),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/coin.png',
                                      ),
                                      height: size.width/11,

                                    ),
                                    Text(
                                      '15 Tokens',
                                      style: TextStyle(
                                        color: Color(0xFF1B1F65),
                                        fontWeight: FontWeight.bold
                                      ),
                                    )

                                  ],
                                ),

                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: size.width/19,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [new BoxShadow(
                            color: Colors.blueAccent.withOpacity(0.21),
                            blurRadius: 50.0,
                            offset: Offset(15,10)

                          )
                          ]
                        ),
                        child: Image(
                          width: size.height/8,
                          image: AssetImage(
                            'assets/images/bottle.png',

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),


            Positioned(
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/images/f.svg',
                  color: Color(0xFF8FCAF7),
                  width: size.width,

                )

            ),
           Positioned(
             bottom: -50,
             child: SvgPicture.asset(
               'assets/images/g.svg',
               color: Color(0xFF61B3F3),
               width: size.width,

             )

             ),
            Positioned(
              bottom: 10,
              child: Center(
                child: Container(
                  width: size.width/1.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF0014B2),
                    borderRadius: BorderRadius.circular(10)

                  ),
                  child: FlatButton(
                    onPressed: (){

                    },
                    child: Center(
                      child: Text(
                        'Redeem & Purchase',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
