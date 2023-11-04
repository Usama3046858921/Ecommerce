




import 'package:ecommerce/screens/verify_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/RoundButton.dart';

class LoginWithPhoneNUmber extends StatefulWidget {
  const LoginWithPhoneNUmber({super.key});

  @override
  State<LoginWithPhoneNUmber> createState() => _LoginWithPhoneNUmberState();
}

class _LoginWithPhoneNUmberState extends State<LoginWithPhoneNUmber> {
  final phoneNumberController = TextEditingController();
  bool loading = false;
  final formKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: phoneNumberController,
                decoration: const InputDecoration(
                    hintText: '+1 234 555 234'
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Mobile Number';
                  }else{

                  }
                },
              ),
            ),
            const SizedBox(height: 80,),
            RoundButton(loading: loading,ontap: (){
              setState(() {
                loading=true;
              });
              auth.verifyPhoneNumber(
                  phoneNumber: phoneNumberController.text.toString(),
                  verificationCompleted: (_){
                    setState(() {
                      loading=false;
                    });
                  },
                  verificationFailed: (e){
                    Fluttertoast.showToast(msg: e.toString());
                    setState(() {
                      loading=false;
                    });
                  },
                  codeSent: (String verificationId, int? token){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyCodeScreen(verificationId: verificationId,)));
                    setState(() {
                      loading=false;
                    });
                  },
                  codeAutoRetrievalTimeout: (e){
                    Fluttertoast.showToast(msg: e.toString());
                    setState(() {
                      loading=false;
                    });
                  });
            }, text: 'Login'),
          ],
        ),
      ),
    );
  }
}
