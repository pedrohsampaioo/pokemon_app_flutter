import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf1fe),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 32),
                Text(
                  "Bookmark Pokemon",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xFF2c3956),
                  ),
                ),
                Text(
                  "keep your favorite Pokémon",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF2c3956),
                  ),
                ),
                const SizedBox(height: 32),
                Flexible(
                  child: Center(
                    child: Image.asset(
                      "assets/images/wrapper.gif",
                      height: 300,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                InkWell(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(64),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 58,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF2c3956),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(64),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onTap: () => Modular.to.pushNamed("sign_in"),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      topLeft: Radius.circular(64),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 54,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFd684a6),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(64),
                        ),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () => Modular.to.pushNamed("sign_up"),
                  ),
                ),
                const SizedBox(height: 64),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
