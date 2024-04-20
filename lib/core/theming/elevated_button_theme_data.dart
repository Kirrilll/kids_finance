part of 'theme.dart';

ElevatedButtonThemeData _lightElevatedButtonTheme = const ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(blue),
      textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontFamily: fontNameDefault,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          )
      ),
      fixedSize: MaterialStatePropertyAll(Size.fromHeight(70)),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      alignment: Alignment.center,
      // padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(24)
              )
          )
      )
  )
);