import 'package:flutter/material.dart';
// import 'package:chewie/chewie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:o2live/extensions/extension.dart';
// import 'package:video_player/video_player.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  // final VideoPlayerController videoPlayerCtrl = VideoPlayerController.asset(
  //   'assets/videos/mbappe.mp4',
  // );

  // ChewieController? chewieController;

  // @override
  // void initState() {
  //   chewieController = ChewieController(
  //     aspectRatio: 9 / 20,
  //     autoPlay: true,
  //     draggableProgressBar: false,
  //     fullScreenByDefault: true,
  //     showControls: false,
  //     autoInitialize: true,
  //     looping: true,
  //     // overlay: Container(color: Colors.black54, width: 300, height: 400,),
  //     videoPlayerController: videoPlayerCtrl,
  //   );

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   videoPlayerCtrl.dispose();
  //   chewieController!.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          // Chewie(controller: chewieController!),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white.withAlpha(120), Colors.white],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/animes/rollingball.json',
                        width: 48,
                        height: 48,
                      ),
                      Text(
                        '2 Live ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Live Action, Instantly!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.hp(3)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 25,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        backgroundColor: const Color(0xff7d34eb),
                      ),
                      child: Center(
                        child: Text(
                          'Sign up with email',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: context.hp(1.5)),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: OutlinedButton(
                      onPressed: () {},

                      style: OutlinedButton.styleFrom(
                        overlayColor: Color(0xff7d34eb),

                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 25,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: const Color(0xff7d34eb),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 15,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.google,
                              size: 24,
                              color: Colors.black,
                            ),
                            Text(
                              'Sign in with Google',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: context.hp(1.5)),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: OutlinedButton(
                      onPressed: () {},

                      style: OutlinedButton.styleFrom(
                        overlayColor: Color(0xff7d34eb),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 25,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: const Color(0xff7d34eb),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 15,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.apple,
                              size: 24,
                              color: Colors.black,
                            ),
                            Text(
                              'Sign in with Apple',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: context.hp(10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an Account?',
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/loginPage'),
                          child: Text(
                            ' Sign In',
                            style: GoogleFonts.poppins(
                              color: const Color(0xff7d34eb),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.hp(3)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
