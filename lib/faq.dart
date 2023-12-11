import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class faq extends StatefulWidget {
  const faq({super.key});

  @override
  State<faq> createState() => _faqState();
}

class _faqState extends State<faq> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var b = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "FAQ",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpansionTileCard(
                  title: const Text(
                    "General Purposes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    Column(
                      children: [
                        ExpansionTileCard(
                          title: const Text("What is Udemy?"),
                          children: [
                            const Text(
                                "Udemy is an online learning platform that offers a wide range of courses on various topics."),
                            SizedBox(
                              height: 0.02 * h,
                            )
                          ],
                        ),
                        ExpansionTileCard(
                          title: const Text("How do I download the Udemy app?"),
                          children: [
                            const Text(
                                "You can download the Udemy app from the App Store (for iOS) or Google Play Store (for Android)."),
                            SizedBox(
                              height: 0.02 * h,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                ExpansionTileCard(
                  title: const Text(
                    "Account and Registration",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    ExpansionTileCard(
                      title: const Text("How do I create a Udemy account?"),
                      children: [
                        const Text(
                            "You can sign up for a Udemy account by providing your email address and creating a password."),
                        SizedBox(
                          height: 0.02 * h,
                        )
                      ],
                    ),
                    ExpansionTileCard(
                      title: const Text(
                          "Can I access my Udemy account on multiple devices?"),
                      children: [
                        const Text(
                            "Yes, you can access your Udemy account on different devices, and your progress will sync across them."),
                        SizedBox(
                          height: 0.02 * h,
                        )
                      ],
                    ),
                  ],
                ),
                ExpansionTileCard(
                  title: const Text(
                    "Payments and Refunds",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    ExpansionTileCard(
                      title: const Text("What payment methods are accepted?"),
                      children: [
                        const Text(
                            "Udemy accepts various payment methods, including credit/debit cards and PayPal."),
                        SizedBox(
                          height: 0.02 * h,
                        )
                      ],
                    ),
                  ],
                ),
                const ExpansionTileCard(
                  title: Text(
                    "Technical Issues",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    ExpansionTileCard(
                      title: Text("Why can't I log in to my account?"),
                      children: [
                        Text(
                            "Ensure you're using the correct email and password. If issues persist, use the password recovery option or contact Udemy support.")
                      ],
                    ),
                  ],
                ),
                ExpansionTileCard(
                  title: const Text(
                    "Certificates and Course Completion",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    ExpansionTileCard(
                      title: const Text("How do I get a certificate of completion?"),
                      children: [
                        const Text(
                            "Once you finish a course, you can download a certificate of completion from the course dashboard."),
                        SizedBox(
                          height: 0.02 * h,
                        )
                      ],
                    ),
                  ],
                ),
                ExpansionTileCard(
                  title: const Text(
                    "Support",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    ExpansionTileCard(
                      title: const Text("How do I contact Udemy support?"),
                      children: [
                        const Text(
                            "You can contact Udemy support through the Help and Support section in the app or on the website."),
                        SizedBox(
                          height: 0.02 * h,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
