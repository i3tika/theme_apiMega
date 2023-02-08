import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theme_api/app_images/app_images.dart';
import 'package:theme_api/core/login_in/widget/container_widget.dart';
import 'package:theme_api/core/login_in/widget/custom_text_field.dart';
import 'package:theme_api/theme/app_colors.dart';
import 'package:theme_api/theme/app_fonts.dart';

class LoginInPage extends StatefulWidget {
  const LoginInPage({super.key});

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

TextEditingController phonecontroller = TextEditingController();

class _LoginInPageState extends State<LoginInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // backgroundColor: Gradient(colors: []),
        body: Stack(
          children: [
            
            RotatedBox(
              quarterTurns: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.gradient, AppColors.gradientberz],
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(AppImages.ellipseOne,width: 215,height: 215,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 525,left: 180),
              child: RotatedBox(quarterTurns: 4,
              child: Image.asset(AppImages.ellipseOne,width: 287,height: 287,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ContainerWidget(
                widget: Column(
                  children: [
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      'Welcome',
                      style: AppFonts.w600s25.copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: 139,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 69, right: 49),
                      child: CustomtextField(
                        lableText: 'Phone',
                        controller: phonecontroller,
                      ),
                    ),
                    SizedBox(
                      height: 102,
                    ),
                    SizedBox(
                        width: 121,
                        height: 57,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white.withOpacity(0.11)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Sign In',style: AppFonts.w600s15.copyWith(color: AppColors.white),),
                        )),
                    // TextButton(
                    //   style: ButtonStyle(backgroundColor: ),
                    //   onPressed: () {},
                    //   child: Text('Sign In'),
                    // ),
                    const SizedBox(height: 107,),
                    RichText(
                      text: TextSpan(
                        text: 'Are you a new user?',
                        style: AppFonts.w600s15,
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign Up',
                              style: AppFonts.w600s15
                                  .copyWith(color: AppColors.bers),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginInPage()));
                                }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
