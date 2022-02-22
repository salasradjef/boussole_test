import 'dart:io';

import 'package:boussole_test/register_screen.dart';
import 'package:boussole_test/utils/Loading.dart';
import 'package:boussole_test/widgets/Text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void gotoRegister(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen()));

  }
  bool loading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
        child: loading ? Loading() : Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(),flex:0),
              SvgPicture.asset('assets/boussole.svg',color: Colors.white,height: 300,),
              Text("Boussole d'orientation",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              TextFieldInput(controller: TextEditingController(), hint: "Email", txtInputType: TextInputType.text),
              SizedBox(height: 12,),
              TextFieldInput(controller: TextEditingController(), hint: "Password", txtInputType: TextInputType.text,isPass: true,),
              SizedBox(height: 50,),
              InkWell(
                child: Container(
                  child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    color: Color.fromRGBO(141, 231, 251,1),

                  ),

                ),
                onTap: ()  {
                  setState(() {
                    loading = true;
                  });
                },
              ),
              SizedBox(height: 40,),
              Text("Vous n'avez pas de compte?"),
              SizedBox(height: 12,),

              InkWell(
                  child: Text("Inscrivez vous",style: TextStyle(fontWeight: FontWeight.bold),),
                  onTap:gotoRegister,
              ),

            ],

          ),
        ),
      ),
    );
  }
}
