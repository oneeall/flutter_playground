import 'package:flutter/material.dart';

/// color mw
const kBlack = Color(0xff000000);
const kGrey = Color(0xff595959);
const kCommonColor = MaterialColor(0xffF1AF3F, <int, Color>{});
const kAccentRed = Color(0xffF44336);

/// semantic color
const kSemanticWarningHeavy = Color(0xffEF6C00);
const kSemanticWarningHigh = Color(0xffFFD54F);
const kSemanticWarningMedium = Color(0xffFFE082);
const kSemanticWarningLow = Color(0xffFFECB3);
const kSemanticWarningHeavyOpacity = Color(0x1AEF6C00);

const kSemanticInformationHeavy = Color(0xff1565C0);
const kSemanticInformationHigh = Color(0xff2196F3);
const kSemanticInformationMedium = Color(0xff64B5F6);
const kSemanticInformationLow = Color(0xffBBDEFB);

const kSemanticSuccessHeavy = Color(0xff2E7D32);
const kSemanticSuccessHigh = Color(0xff4CAF50);
const kSemanticSuccessMedium = Color(0xff81C784);
const kSemanticSuccessLow = Color(0xffC8E6C9);

const kSemanticErrorHeavy = Color(0xffB71C1C);
const kSemanticErrorHigh = Color(0xffF44336);
const kSemanticErrorMedium = Color(0xffE57373);
const kSemanticErrorLow = Color(0xffFFCDD2);

const kSemanticBrokenHeavy = Color(0xff6A1B9A);
const kSemanticBrokenHigh = Color(0xffAB47BC);
const kSemanticBrokenMedium = Color(0xffCE93D8);
const kSemanticBrokenLow = Color(0xffE1BEE7);

///natural color
const kNeutral1000 = Color(0xff000000);
const kNeutral900 = Color(0xff181818);
const kNeutral800 = Color(0xff424242);
const kNeutral700 = Color(0xff616161);
const kNeutral600 = Color(0xff757575);
const kNeutral500 = Color(0xff9E9E9E);
const kNeutral400 = Color(0xffBDBDBD);
const kNeutral300 = Color(0xffE0E0E0);
const kNeutral200 = Color(0xffEEEEEE);
const kNeutral100 = Color(0xffF5F5F5);
const kNeutral50 = Color(0xffFAFAFA);
const kNeutral0 = Color(0xffffffff);

const kNeutral200Opacity = Color(0x1AEEEEEE);

const kNeutral20Primary = Color(0x33F68522);

/// color for theme
const kLightPrimary = Color(0xff000000);
const kLightPrimaryVariant = Color(0xff181818);
const kLightAccent = Color(0xffF68522);
const kLightAccentVariant = Color(0xffF6BA22);
const kLightBackground = Color(0xff000000);
const kLightSurface = Color(0xff181818);
const kLightError = Color(0xff181818);
const kLightOnPrimary = Color(0xffE0E0E0);
const kLightOnSecondary = Color(0xff000000);
const kLightOnBackground = kLightPrimary;
const kLightOnSurface = kLightPrimary;
const kLightOnError = Color(0xffffffff);

/// color gradient
const kOrangeGradient = [Color(0xffF6BA22), Color(0xffF68522)];
const kGreenGradient = [Color(0xffFFD54F), Color(0xff4CAF50)];
const kRedGradient = [Color(0xffAB47BC), Color(0xffF44336)];
const kBlueGradient = [Color(0xff4DB6AC), Color(0xff3949AB)];

/// color for opacity label
const kOpacityBronze = Color(0x4DF68522);
const kOpacitySilver = Color(0x4DEEEEEE);
const kOpacityGold = Color(0x99DF9816);
const kOpacityPlatinum = Color(0x4D2196F3);
const kOpacityCenturion = Color(0xE6313030);

class AppColors {
  const AppColors({
    required this.background,
    required this.accent,
    required this.disabled,
    required this.error,
    required this.divider,
    required this.signIn,
    required this.signOut,
  });

  factory AppColors.light() {
    return const AppColors(
      background: Colors.white,
      accent: Color(0xff17c063),
      disabled: Colors.black12,
      error: Color(0xffff7466),
      divider: Colors.black54,
      signIn: Color(0xff4285f4),
      signOut: Color(0xffc53829),
    );
  }

  factory AppColors.dark() {
    return const AppColors(
      background: Color(0xff121212),
      accent: Color(0xff17c063),
      disabled: Colors.white12,
      error: Color(0xffff5544),
      divider: Colors.white54,
      signIn: Color(0xff4285f4),
      signOut: Color(0xffc53829),
    );
  }

  final Color background;
  final Color accent;
  final Color disabled;
  final Color error;
  final Color divider;

  final Color signIn;
  final Color signOut;
}