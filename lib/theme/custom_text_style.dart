import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get eudoxusSans {
    return copyWith(
      fontFamily: 'Eudoxus Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get renner {
    return copyWith(
      fontFamily: 'Renner*',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get spartan {
    return copyWith(
      fontFamily: 'Spartan',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get iBMPlexSans {
    return copyWith(
      fontFamily: 'IBM Plex Sans',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static var bodySmallRobotoGray200;

  // Body text style
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.87),
      );
  static TextStyle get bodyLargeInterBluegray300 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static TextStyle get bodyLargeInterGray50003 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get bodyLargeInterGray600 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
      );
  static TextStyle get bodyLargeInterGray90003 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray90003,
      );
  static TextStyle get bodyLargeRobotoBluegray30001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray30001,
      );
  static TextStyle get bodyMediumBluegray30002 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30002,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumEudoxusSansGray90005 =>
      theme.textTheme.bodyMedium!.eudoxusSans.copyWith(
        color: appTheme.gray90005,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumGray70001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumLatoBluegray600 =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumOnErrorContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRennerBluegray30002 =>
      theme.textTheme.bodyMedium!.renner.copyWith(
        color: appTheme.blueGray30002,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRobotoGray400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray400,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRobotoGray70003 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray70003,
      );
  static TextStyle get bodyMediumTeal900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal900,
        fontSize: 14.fSize,
      );
  static TextStyle get bodySmallGray40003 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static TextStyle get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterBluegray300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static TextStyle get bodySmallInterBluegray80003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray80003,
      );
  static TextStyle get bodySmallInterGray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
      );
  static TextStyle get bodySmallInterGray50001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50001,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterGray50003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get bodySmallInterOnSecondaryContainer11 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 11.fSize,
      );
  static TextStyle get bodySmallInterPrimaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallInter_1 => theme.textTheme.bodySmall!.inter;
  static TextStyle get bodySmallLatoBlack900 =>
      theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.black900.withOpacity(0.87),
      );
  static TextStyle get bodySmallOpenSansGray50002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray50002,
      );
  static TextStyle get bodySmallOpenSansOnErrorContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get bodySmallRalewayIndigo200 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.indigo200,
      );
  static TextStyle get bodySmallRobotoBluegray30001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray30001,
      );
  static TextStyle get bodySmallRobotoGray60002 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray60002,
      );
// Display text style
  static TextStyle get displayMediumOnSecondaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get displayMediumSFProTextBlack900 =>
      theme.textTheme.displayMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
// Headline text style
  static TextStyle get headlineMediumBluegray80001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineMediumInterGray90003 =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        color: appTheme.gray90003,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineMediumMedium =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineMediumOnSecondaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get headlineMediumRaleway =>
      theme.textTheme.headlineMedium!.raleway.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineSmallInterGray90003 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineSmallRobotoPrimary =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
// Label text style
  static TextStyle get labelLargeBlack900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelLargeBlack900SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeBlack900_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelLargeBlack900_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelLargeBluegray90002 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90002,
      );
  static TextStyle get labelLargeBluegray90005 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90005,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeBluegray90005_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90005,
      );
  static TextStyle get labelLargeBluegray90006 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90006,
      );
  static TextStyle get labelLargeGray50003 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get labelLargeGray70002 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70002,
      );
  static TextStyle get labelLargeOnErrorContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get labelLargeOpenSansGreen600 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.green600,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeOpenSansOnErrorContainer =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargePrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get labelLargePrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargePrimarySemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargePrimary_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get labelLargeRalewayBlack900 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRoboto => theme.textTheme.labelLarge!.roboto;
  static TextStyle get labelLargeRobotoOnErrorContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeRobotoSemiBold =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRoboto_1 => theme.textTheme.labelLarge!.roboto;
  static TextStyle get labelMediumBlack900 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelMediumBlack900Bold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumDMSansIndigo500 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.indigo500,
      );
  static TextStyle get labelMediumGray50004 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50004,
        fontSize: 11.fSize,
      );
  static TextStyle get labelMediumIBMPlexSansBluegray90005 =>
      theme.textTheme.labelMedium!.iBMPlexSans.copyWith(
        color: appTheme.blueGray90005,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumOnSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get labelMediumPoppinsBluegray90001 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumRalewayOnErrorContainer =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get labelMediumRennerGreen400 =>
      theme.textTheme.labelMedium!.renner.copyWith(
        color: appTheme.green400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumRennerRed30001 =>
      theme.textTheme.labelMedium!.renner.copyWith(
        color: appTheme.red30001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelSmallRalewayGray500 =>
      theme.textTheme.labelSmall!.raleway.copyWith(
        color: appTheme.gray500,
      );
// Title text style
  static TextStyle get titleLargeIndigo90001 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo90001,
      );
  static TextStyle get titleLargeInterGray90003 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleLargeInterOnErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeInterOnErrorContainerMedium =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeInterOnPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeInterPrimaryMedium =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleLargeLatoBlack900Regular =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleLargeOnErrorContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get titleLargePrimary =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeSpartan => theme.textTheme.titleLarge!.spartan;
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static TextStyle get titleMediumInterBluegray10005 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray10005,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumInterGray90003 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumInterGray90003_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90003,
      );
  static TextStyle get titleMediumInterIndigo90003 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigo90003,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumInterOnErrorContainerBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumInterOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumInterPrimaryMedium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumOpenSansOnErrorContainer =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumPoppinsBluegray800 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumRalewayOnErrorContainer =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRalewayOnErrorContainerBold =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRalewayOnErrorContainerBold18 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRobotoGray90006 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray90006,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRobotoIndigo90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.indigo90001,
      );
  static TextStyle get titleSmallDeeporangeA100 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA100,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallDeeppurpleA10001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA10001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallGray50003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get titleSmallGray70002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70002,
      );
  static TextStyle get titleSmallGray70002_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70002,
      );
  static TextStyle get titleSmallGray90003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallIndigoA100 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA100,
      );
  static TextStyle get titleSmallLightgreenA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreenA700,
      );
  static TextStyle get titleSmallLime500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime500,
      );
  static TextStyle get titleSmallOnErrorContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get titleSmallOnErrorContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallOnErrorContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallOnErrorContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get titleSmallOnSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static TextStyle get titleSmallOpenSansOnErrorContainer =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallOrange500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange500,
      );
  static TextStyle get titleSmallPoppinsBluegray800 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray800,
      );
  static TextStyle get titleSmallPoppinsGray40002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray40002,
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallPrimary15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallRed300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red300,
      );
  static TextStyle get titleSmallRedA200 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA200,
      );
  static TextStyle get titleSmallRedA20001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA20001,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallRoboto =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallRobotoBold =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallRobotoBold_1 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallRobotoGray60002 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray60002,
      );
  static TextStyle get titleSmallRobotoGray60002_1 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray60002,
      );
  static TextStyle get titleSmallRobotoIndigo90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.indigo90001,
      );
  static TextStyle get titleSmallRobotoIndigo90001_1 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.indigo90001,
      );
  static TextStyle get titleSmallRobotoOnErrorContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallRobotoPrimarySemiBold =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallRobotoPrimary_1 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallSemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}
