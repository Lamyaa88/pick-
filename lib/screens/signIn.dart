import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pick/customWidgets/customWidgets.dart';
import 'package:pick/constants/colors.dart';
import 'package:pick/screens/signUp.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              topPart(),
              Container(
                padding: EdgeInsets.only(right: width * .05, left: width * .05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * .03,
                    ),
                    textSignIn(),
                    SizedBox(
                      height: height * .04,
                    ),
                    emailTextField(),
                    SizedBox(
                      height: height * .02,
                    ),
                    passwordTextField(),
                    SizedBox(
                      height: height * .02,
                    ),
                    textForgetPassword(),
                    SizedBox(
                      height: height * .02,
                    ),
                    signInButton(),
                    SizedBox(
                      height: height * .01,
                    ),
                    textDontHaveAnAccount(),
                    SizedBox(
                      height: height * .01,
                    ),
                    textOr(),
                    SizedBox(
                      height: height * .03,
                    ),
                    facebookSignInContainer(),
                    SizedBox(
                      height: height * .02,
                    ),
                    googleSignInContainer()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget topPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: height * .05),
      width: width,
      height: height * .14,
      color: mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(onTap: (){},
            child: Image.asset(
              "assets/icons/previous.png",
              height: height * .08,
            ),
          )
        ],
      ),
    );
  }

  Widget textSignIn() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: MyText(
      text: "SIGN IN ",
      color: redColor,
      size: height * .05,
      weight: FontWeight.bold,
    ));
  }

  Widget emailTextField() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: CustomTextField(
      hint: "Email",
      inputType: TextInputType.emailAddress,
    ));
  }

  Widget passwordTextField() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: CustomTextField(
      hint: "Password",
      secure: true,
    ));
  }

  Widget textForgetPassword() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width * .85,
        child: InkWell(
//          --------------------------------------------------------------------- on tap forget password
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyText(
                text: "Forget Password ?",
                color: redColor,
                size: height * .015,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ));
  }

  Widget signInButton() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: InkWell(
//          ----------------------------------------------------------------------------------------------- on tap forget password
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            givenHeight: height * .085,
            givenWidth: width * .9,
            text: "SIGN IN",fontWieght: FontWeight.bold,
            fontSize: height * .03,
          )
        ],
      ),
    ));
  }

  Widget textDontHaveAnAccount() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            text: "Don\'t have an account?       ",
            color: textGreyColor,
            size: height * .015,
            weight: FontWeight.normal,
          ),
          InkWell(onTap: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) {
                  return SignUp();
                },
                transitionsBuilder:
                    (context, animation8, animation15, child) {
                  return FadeTransition(
                    opacity: animation8,
                    child: child,
                  );
                },
                transitionDuration: Duration(milliseconds: 100),
              ),
            );

          },
            child: MyText(
              text: "Sign Up ",
              color: redColor,
              weight: FontWeight.bold,
              size: height * .017,
            ),
          )
        ],
      ),
    );
  }

  Widget textOr() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            text: "OR",
            color: blackColor,
            size: height * .017,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget facebookSignInContainer() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * .065,
            width: width * .8,
            color: offWhiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                  //          --------------------------------------------------------------- on tap sign in with facebook

                    onTap: () {},
                    child: Image.asset(
                      "assets/icons/facebook.png",
                      height: height * .035,
                    )),

                MyText(
                  text: "Sign In With Facebook ",
                  size: height * .015,
                  weight: FontWeight.bold,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget googleSignInContainer() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * .065,
            width: width * .8,
            color: offWhiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                  //          --------------------------------------------------------------- on tap sign in with google

                    onTap: () {},
                    child: Image.asset(
                      "assets/icons/google.png",
                      height: height * .08,
                    )),

                Container(
                  child: MyText(
                    text: "Sign In With Google                   ",
                    size: height * .015,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
