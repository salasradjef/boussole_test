import 'package:boussole_test/utils/Loading.dart';
import 'package:boussole_test/widgets/Text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool loading = false;
  void gotoLogin(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));

  }
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
              SizedBox(height: 40,),
              TextFieldInput(controller: TextEditingController(), hint: "Nom", txtInputType: TextInputType.text),
              SizedBox(height: 12,),
              TextFieldInput(controller: TextEditingController(), hint: "Prénom", txtInputType: TextInputType.text),
              SizedBox(height: 12,),
              TextFieldInput(controller: TextEditingController(), hint: "Email", txtInputType: TextInputType.text),
              SizedBox(height: 12,),
              TextFieldInput(controller: TextEditingController(), hint: "Password", txtInputType: TextInputType.text,isPass: true,),
              SizedBox(height: 50,),
              InkWell(
                child: Container(
                  child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                onTap: () {
                  setState(() {
                    loading = true;
                  });
                },
              ),
              SizedBox(height: 40,),
              Text("Vous avez déja un compte?"),
              SizedBox(height: 12,),

              InkWell(
                child: Text("Connectez-vous",style: TextStyle(fontWeight: FontWeight.bold),),
                onTap:() => gotoLogin(),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
