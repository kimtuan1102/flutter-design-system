import 'dart:ui';

import 'package:fci_ui/src/shared/color_palette.dart';
import 'package:flutter/rendering.dart';

/**
 * Created by Trinh Kim Tuan.
 * Date:  5/12/2022
 * Time: 11:02 AM
 */
//Brand Color
const brandDefault = blueSky6;
const brandHover = blueSky5;
const brandClick = blueSky4;

//Function Color
const functionLink = blueSky6;
const functionInfo = blueSky5;
const functionSuccess = Color(0xFF35994B);
const functionWarning = Color(0xFFE7A600);
const functionError = Color(0xFFDB4646);

//Neutral Color
//Light Theme
const lightTitle = gray10;
const lightPrimaryText = gray10;
const lightSecondaryText = gray7;
const lightDisable = gray4;
const lightTableHeader = gray4;
const lightBorder = gray5;
const lightDivider = gray4;
const lightBackground = gray3;

//Dark Theme
const darkTitle = gray1;
const darkPrimaryText = gray3;
const darkSecondaryText = gray7;
const darkDisable = gray8;
const darkTableHeader = gray10;
const darkBorder = gray10;
const darkDivider = gray10;
const darkBackground = gray12;

//Gradient Color
const Gradient gradientBlue = LinearGradient(colors: [Color(0xFF0052CC), Color(0xFF74B3F2)]);
const Gradient gradientYellow = LinearGradient(colors: [Color(0xFFE7A600), Color(0xFFFFE77A)]);
const Gradient gradientRed = LinearGradient(colors: [Color(0xFFDB4646), Color(0xFFF5A39D)]);
const Gradient gradientGreen = LinearGradient(colors: [Color(0xFF35994B), Color(0xFF9FBFA3)]);