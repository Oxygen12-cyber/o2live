import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/extensions/extension.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Welcome Back!',
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: context.hp(1)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Enter your credentials to continue',
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: context.hp(10)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),

              child: CustomTextField(
                controller: emailController,
                hinttext: 'Email',
                prefixIcon: Icon(Iconsax.message),
              ),
            ),
            SizedBox(height: context.hp(4)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),

              child: CustomTextField(
                controller: passwordController,
                hinttext: 'Password',
                prefixIcon: Icon(Iconsax.password_check),
              ),
            ),
            SizedBox(height: context.hp(1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint('forgot password');
                    },
                    child: Text(
                      'forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.hp(3)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homePage');
                },

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  backgroundColor: const Color(0xff7d34eb),
                ),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: context.hp(8)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? Sign Up",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: context.hp(2)),
          ],
        ),
      ),
    );
  }
}
