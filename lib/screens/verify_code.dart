

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../widgets/RoundButton.dart';
import 'bottom_navigation_bar.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key,required this.verificationId});
  final String verificationId;

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final verificationCodeController = TextEditingController();
  bool loading = false;
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
            TextFormField(
              keyboardType: TextInputType.number,
              controller: verificationCodeController,
              decoration: const InputDecoration(
                hintText: '6 digit code',
              ),
            ),
            const SizedBox(height: 80,),
            RoundButton(loading: loading,ontap: ()async{
              setState(() {
                loading = true;
              });
              final credential = PhoneAuthProvider.credential(verificationId: widget.verificationId, smsCode: verificationCodeController.text.toString());
              try{
                await auth.signInWithCredential(credential);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationBarWidget()));
                setState(() {
                  loading = true;
                });
              }catch(e){
                setState(() {
                  loading = false;
                });
                Fluttertoast.showToast(msg: e.toString());
              }
            }, text: 'Verify'),
          ],
        ),
      ),
    );
  }
}
