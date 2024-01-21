import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ind_records/LogIn/presentations/widgets/singin_btn.dart';
import 'package:ind_records/OnBoard/pages/first_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  bool stateVal = false;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) async {
      if (event != null) {
        print(event);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const FirstOnboardingPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToFirstOnboardingPage() {
      Navigator.push(context,
          CupertinoPageRoute(builder: (_) => const FirstOnboardingPage()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('IndRecord'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginPageBtn(
              icon: SvgPicture.asset('assets/svgs/google_icon_dark.svg'),
              title: 'Google Auth',
              onClickFunction: () async {
                UserCredential userCredential = await signInWithGoogle();
                _user = userCredential.user;
                if (userCredential != Null) {
                  // ignore: avoid_print
                  print('result: $userCredential\nuser: $_user');
                  navigateToFirstOnboardingPage();
                } else {
                  debugPrint(
                      "error: There is no Google Account logged in on your device.");
                }
              },
            ),
            const Gap(30),
            LoginPageBtn(
              icon: SvgPicture.asset('assets/svgs/apple_icon_light.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white),
              title: 'Apple Auth',
              onClickFunction: navigateToFirstOnboardingPage,
            ),
          ],
        ),
      ),
    );
  }

  // void _handleGoogleSingIn() {
  //   try {
  //     GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
  //     _auth.signInWithProvider(googleAuthProvider);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await _auth.signInWithCredential(credential);
    } on Exception catch (e) {
      print('exception->$e');
    }
  }
}
