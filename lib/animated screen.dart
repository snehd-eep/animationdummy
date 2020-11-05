import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _obcureText = true;
  @override
  Widget build(BuildContext context) {

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
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.transparent,
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Backgroud(size: size, child:
            SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
               
              children: [
                Container(

                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(29),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Your Email',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.50),

                        ),

                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),

                        border: InputBorder.none
                    ),


                  ),
                ),
                Container(

                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(29),

                  ),

                  child: TextField(

                    style: TextStyle(
                      color: Colors.white
                    ),
                    obscureText: _obcureText,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.50),

                        ),



                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: GestureDetector(
                          onTap:()
                          {
                            setState(() {
                              if(_obcureText == true)
                                _obcureText = false;
                              else
                                _obcureText = true;
                              print(_obcureText);
                            });

                          },

                          child: Icon(
                            Icons.visibility,
                            color: Colors.white,

                          ),
                        ),

                        border: InputBorder.none
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: size.width*0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                      color: Colors.black,
                      onPressed: (){

                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),

                    ),
                  ),
                )



              ],
            ),
          ),
          ),
        ),




      ),
    );
  }
}

class Backgroud extends StatelessWidget {
  const Backgroud({
    Key key,
    @required this.size, this.child,
  }) : super(key: key);

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -40,
          right: -80,
          child: Image(
            image: AssetImage(
              'assets/images/a.png'
            ),
          ),
        ),
        Positioned(
          top: size.height/10,
          right: 30,
          child: Image(
            image: AssetImage(
              'assets/images/b.png'
            ),

          ),
        ),
        Positioned(
          bottom: 0,
          right : -20,

          child: SvgPicture.asset(

            'assets/images/pump.svg',
            width: 200,
            height: 200,

          ),

        ),

        Positioned(
          top: size.height/5,
            child: child)



      ],
    );
  }
}
