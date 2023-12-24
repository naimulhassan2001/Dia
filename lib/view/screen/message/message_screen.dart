import 'package:dia/utils/app_image.dart';
import 'package:dia/utils/app_string.dart';
import 'package:dia/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

import 'widget/messaging.dart';
import 'widget/survey_button.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                title: AppString.jane,
                fontSize: 40,
                fontWeight: FontWeight.w800),
            const SizedBox(height: 16),
            Image.asset(AppImage.jane),
            const SizedBox(
              height: 16,
            ),
            CustomText(
              title: AppString.smokeThereFire,
              fontWeight: FontWeight.w800,
              fontSize: 32,
              isItalic: true,
            ),
            const SizedBox(
              height: 16,
            ),
            const SurveyButton(),
            const SizedBox(
              height: 16,
            ),
            const Messaging(),
          ],
        ),
      ),
    );
  }
}
