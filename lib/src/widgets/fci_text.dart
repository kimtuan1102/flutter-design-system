import 'package:fci_ui/src/shared/color_palette.dart';
import 'package:fci_ui/src/shared/styles.dart';
import 'package:flutter/material.dart';

/**
 * Created by Trinh Kim Tuan.
 * Date:  5/12/2022
 * Time: 12:27 PM
 */
class FCIText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;

  FCIText.headingOne(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = heading1.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.headingTwo(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = heading2.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.headingThree(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = heading3.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.headingFour(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = heading4.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.headingFive(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = heading5.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.textDefault(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = textDefault.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.textStrong(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = textStrong.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.textUnderline(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = textUnderline.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.textDelete(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = textDelete.copyWith(color: color),
        alignment = align,
        super(key: key);

  FCIText.textItalic(this.text,
      {Key? key, Color color = gray10, TextAlign align = TextAlign.start})
      : style = textItalic.copyWith(color: color),
        alignment = align,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
