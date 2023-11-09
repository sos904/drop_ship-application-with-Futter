import 'package:drop_ship/common/widgets/custom_button.dart';
import 'package:drop_ship/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void navigateToAuthScreen(int sum) {
      Navigator.pushNamed(
        context,
        AuthScreen.routeName,
        // arguments: sum.toString(),
      );
    }

    return Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            /* const Text(
              'Welcome to Drop_Ship',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ), */
            const Material(
                color: Colors.transparent,
                child: Text("Welcome to Drop_Ship",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ))),
            /*   SizedBox(
              height: 90,
            ), */

            /* const SizedBox(
              height: 300,
            ), */
            // Expanded(
            //   child: Align(
            // alignment: Alignment.bottomCenter,
            // child:

            // )
            //),

            Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 30, left: 30),
              child: CustomButton(
                  text: 'Click here to continue',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AuthScreen()),
                    );
                    //navigateToAuthScreen;
                  }),
            ),

            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
          ],
        ));
  }
}
