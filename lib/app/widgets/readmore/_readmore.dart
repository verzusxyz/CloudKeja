import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReadMore2 extends StatelessWidget {
  const ReadMore2(
    this.data, {
    super.key,
    this.maxCharacters = 100,
    this.maxLines,
    this.textAlign,
    this.overflow,
    this.textStyle,
    this.handleStyle,
  });

  final String data;
  final int maxCharacters;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextStyle? textStyle;
  final TextStyle? handleStyle;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> showAllNotifier = ValueNotifier(false);

    String getDisplayText(bool showAll) {
      return showAll
          ? data
          : (data.length > maxCharacters
              ? data.substring(0, maxCharacters)
              : data);
    }

    return ValueListenableBuilder<bool>(
      valueListenable: showAllNotifier,
      builder: (context, showAll, child) {
        return Text.rich(
          TextSpan(
            text: getDisplayText(showAll),
            children: [
              if (data.length > maxCharacters)
                TextSpan(
                  text: showAll ? ' Show Less' : '... Read More',
                  style: handleStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      showAllNotifier.value = !showAll;
                    },
                ),
            ],
          ),
          style: textStyle,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
        );
      },
    );
  }
}
