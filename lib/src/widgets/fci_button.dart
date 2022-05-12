import 'package:fci_ui/fci_ui.dart';
import 'package:fci_ui/src/shared/styles.dart';
import 'package:flutter/material.dart';

/**
 * Created by Trinh Kim Tuan.
 * Date:  5/12/2022
 * Time: 2:04 PM
 */

enum ButtonSize { small, medium, large }

enum ButtonType { primary, normal, ghost, text }

class FCIButton extends StatefulWidget {
  final String title;
  final bool disabled;
  final bool loading;
  final void Function()? onTap;
  final IconData? icon;
  final ButtonSize? buttonSize;
  final ButtonType? buttonType;

  const FCIButton(
      {Key? key,
      required this.title,
      required this.disabled,
      required this.loading,
      this.onTap,
      this.icon,
      this.buttonSize,
      this.buttonType})
      : super(key: key);

  @override
  State<FCIButton> createState() => _FCIButtonState();
}

class _FCIButtonState extends State<FCIButton> {
  var _isHighlight = false;
  var _isHover = false;

  Color get _titleColor {
    switch (widget.buttonType) {
      case ButtonType.primary:
        if (widget.disabled) {
          return gray6;
        }
        return gray1;
      case ButtonType.normal:
        if (widget.disabled) {
          return gray6;
        }
        if (_isHighlight || _isHover) {
          return blueSky6;
        }
        if (widget.loading) {
          return gray7;
        }
        return gray10;
      case ButtonType.ghost:
        if (widget.disabled) {
          return gray6;
        }
        if (_isHighlight || _isHover) {
          return blueSky6;
        }
        if (widget.loading) {
          return gray7;
        }
        return gray1;
      case ButtonType.text:
        if(widget.loading) {
          return gray7;
        }
        if(widget.disabled) {
          return gray6;
        }
        return blueSky6;
      default:
        return gray1;
    }
  }

  TextStyle get _titleStyle {
    switch (widget.buttonSize) {
      case ButtonSize.small:
        return regular8.copyWith(color: _titleColor, height: 1.0);
      case ButtonSize.medium:
        return regular8.copyWith(color: _titleColor, height: 1.0);
      case ButtonSize.large:
        return regular7.copyWith(color: _titleColor, height: 1.0);
      default:
        return regular8.copyWith(color: _titleColor, height: 1.0);
    }
  }

  double get _titleHeight {
    switch (widget.buttonSize) {
      case ButtonSize.small:
        return regular8.height! * regular8.fontSize!;
      case ButtonSize.medium:
        return regular8.height! * regular8.fontSize!;
      case ButtonSize.large:
        return regular7.height! * regular7.fontSize!;
      default:
        return regular8.height! * regular8.fontSize!;
    }
  }

  EdgeInsets get _btnPadding {
    switch (widget.buttonSize) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(
            horizontal: paddingRegular, vertical: 0.0);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(
            horizontal: paddingRegular, vertical: paddingTiny);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(
            horizontal: paddingRegular, vertical: paddingSmall);
      default:
        return const EdgeInsets.symmetric(
            horizontal: paddingRegular, vertical: paddingTiny);
    }
  }

  Color get _btnColor {
    switch (widget.buttonType) {
      case ButtonType.primary:
        if (widget.disabled) {
          return gray4;
        }
        if (widget.loading) {
          return blueSky4;
        }
        return blueSky6;
      case ButtonType.normal:
        return gray1;
      case ButtonType.ghost:
        if (widget.loading) {
          return gray1;
        }
        if (widget.disabled) {
          return gray4;
        }
        return Colors.transparent;
      case ButtonType.text:
        return Colors.transparent;
      default:
        return blueSky6;
    }
  }

  Color get _hoverColor {
    switch (widget.buttonType) {
      case ButtonType.primary:
        return blueSky5;
      case ButtonType.normal:
        return gray1;
      case ButtonType.ghost:
        return gray1;
      case ButtonType.text:
        return gray4;
      default:
        return blueSky6;
    }
  }

  Color get _splashColor {
    switch (widget.buttonType) {
      case ButtonType.primary:
        return blueSky4;
      case ButtonType.normal:
        return Colors.transparent;
      case ButtonType.ghost:
        return gray1;
      case ButtonType.text:
        return gray4;
      default:
        return blueSky6;
    }
  }

  BorderSide get _btnBorderSide {
    switch (widget.buttonType) {
      case ButtonType.primary:
        return const BorderSide(style: BorderStyle.none);
      case ButtonType.normal:
        if (_isHighlight) {
          return const BorderSide(width: 1.0, color: blueSky6);
        }
        return const BorderSide(width: 1.0, color: gray5);
      case ButtonType.ghost:
        if(_isHighlight) {
          return const BorderSide(width: 1.0, color: blueSky6);
        }
        if(!widget.loading && !_isHover && !widget.disabled) {
          return const BorderSide(width: 1.0, color: gray1);
        }
        return const BorderSide(style: BorderStyle.none);
      case ButtonType.text:
        if(_isHighlight) {
          return const BorderSide(width: 1.0, color: blueSky6);
        }
        return const BorderSide(style: BorderStyle.none);
      default:
        return const BorderSide(width: 1.0, color: gray5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _btnColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), side: _btnBorderSide),
      child: InkWell(
          splashColor: _splashColor,
          onHighlightChanged: (isHighlight) {
            setState(() {
              _isHighlight = isHighlight;
            });
          },
          onHover: (isHover) {
            setState(() {
              _isHover = isHover;
            });
          },
          hoverColor: _hoverColor,
          borderRadius: BorderRadius.circular(5),
          onTap: widget.disabled || widget.loading ? null : widget.onTap,
          child: Align(
            child: Container(
              padding: _btnPadding,
              alignment: Alignment.center,
              child: Row(
                children: [
                  if (!widget.loading && widget.icon != null)
                    Icon(
                      widget.icon,
                      color: _titleColor,
                      size: _titleStyle.fontSize,
                    ),
                  if (!widget.loading && widget.icon != null)
                    horizontalSpaceTiny,
                  if (widget.loading)
                    Container(
                      width: _titleStyle.fontSize,
                      height: _titleStyle.fontSize,
                      margin: const EdgeInsets.all(paddingTiny),
                      child: CircularProgressIndicator(
                        color: _titleColor,
                        strokeWidth: 3.0,
                      ),
                    ),
                  Container(
                    height: _titleHeight,
                    alignment: Alignment.center,
                    child: Text(
                      widget.title,
                      style: _titleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
