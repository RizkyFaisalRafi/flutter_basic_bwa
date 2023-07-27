import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/primary.png',
                  width: 140,
                  height: 140,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Anne Margaritha',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'UX Designer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/item1.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item2.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item3.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item4.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item5.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item6.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 274,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: ((context) {
                          return ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            child: Container(
                              height: 290,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 50,
                              ),
                              color: whiteColor,
                              child: Column(
                                children: [
                                  const Text(
                                    'Update Photo',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'You are only able to change\nthe picture profile once',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: greyColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 224,
                                    height: 55,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        backgroundColor: orangeColor,
                                      ),
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      side: BorderSide(color: greyColor),
                    ),
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
