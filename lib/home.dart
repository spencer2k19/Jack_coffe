import 'package:coffee_jack/shared/colors.dart';
import 'package:coffee_jack/shared/title_style.dart';
import 'package:coffee_jack/widgets/hint_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InsetBox;
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget buildContainerCoffee() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 119,
        height: 119,
        decoration: InsetBox.BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(colors: [
              Color(0xFF404026),
              Color(0xFF262617),
            ]),
            boxShadow: [
              InsetBox.BoxShadow(
                color: const Color(0xFF2F2F1B).withOpacity(0.3),
                offset: const Offset(0, 8),
                blurRadius: 16,
                spreadRadius: -8,
              ),
              const InsetBox.BoxShadow(
                  color: Color(0xFF242415),
                  offset: Offset(-4, -4),
                  blurRadius: 8,
                  spreadRadius: 0,
                  inset: true),
              const InsetBox.BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.15),
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 0,
                  inset: true),
            ]),
        child: Center(
          child: Image.asset("assets/images/coffee.png",fit: BoxFit.cover,),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  children: [

                    Center(child: buildContainerCoffee()),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset(
                          "assets/images/top_left.png",
                          fit: BoxFit.cover,
                        ),
                          Center(
                            child: Text(
                              "Jack’s Coffee",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF202013),
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        Image.asset(
                          "assets/images/top_right.png",
                          fit: BoxFit.cover,
                        ),
                      ],),
                    ),



                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Enter your email",
                    style: titleStyleNormal,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: HintInputWidget(
                      label: "",
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Enter your password",
                    style: titleStyleNormal,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: HintInputWidget(
                      label: "",
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.visiblePassword),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot your password ?",
                        style: titleStyleNormal.copyWith(fontSize: 12.3),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: double.infinity,
                      height: 62,
                      decoration: InsetBox.BoxDecoration(
                          gradient: normalGradient,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            InsetBox.BoxShadow(
                                offset: const Offset(0, 16),
                                blurRadius: 32,
                                spreadRadius: -8,
                                color:
                                    const Color(0xFF2F2F1C).withOpacity(0.3)),
                            const InsetBox.BoxShadow(
                                offset: Offset(-8, -8),
                                blurRadius: 16,
                                inset: true,
                                spreadRadius: 0,
                                color: Color(0xFF242415)),
                          ]),
                      child: Center(
                          child: GradientText(
                        "Log in",
                        style: titleStyleWhite, colors: const [
                            Color(0xFFEDEBC7),
                            Color(0xFFEDEA98)
                          ],
                      )),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Don't have an account ?",
                    style: titleStyleNormal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    color: const Color(0xFFDBDDC6),
                    height: 62,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "Register",
                      style: titleStyleBlack,
                    )),
                    onPressed: () {},
                  ),

                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/bottom_left.png",fit: BoxFit.cover,),
                    Image.asset("assets/images/bottom_right.png",fit: BoxFit.cover,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
