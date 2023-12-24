import 'package:dia/utils/app_icons.dart';
import 'package:dia/view/screen/message/widget/one_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/app_string.dart';
import '../../../widget/custom_text.dart';

class Messaging extends StatelessWidget {
  const Messaging({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AppImage.james,
              height: 50,
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CustomText(
                    title: AppString.james,
                    fontWeight: FontWeight.w800,
                    isItalic: true,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: OneMessage(title: AppString.howDidMakeIt),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.replay),
                    const SizedBox(
                      width: 8,
                    ),
                    OneMessage(
                        title: AppString.writeYourCommentsHere,
                        fontWeight: FontWeight.w400),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        Row(
          children: [
            Image.asset(
              AppImage.jonathan,
              height: 50,
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CustomText(
                    title: AppString.jonathan,
                    fontWeight: FontWeight.w800,
                    isItalic: true,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      OneMessage(title: AppString.shouldGoForAward),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(AppIcons.union),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
