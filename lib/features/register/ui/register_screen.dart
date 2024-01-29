import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/register/ui/widgets/form_of_register.dart';
import 'widgets/create_account_text.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints:  const BoxConstraints.expand(),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.00, 2),
              end: Alignment(0, -1),
              colors: [Color(0xFF5E35E8), Color(0x00D9D9D9)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child:   const SingleChildScrollView(
              child: Column(
                children: [
                  CreateAccountText(),
                  FormOfRegister(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
