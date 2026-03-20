import 'package:bloc_demo/bloc/login/login_bloc.dart';
import 'package:bloc_demo/bloc/user_details/user_bloc.dart';
import 'package:bloc_demo/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

final theme = ThemeData().copyWith(
  textTheme: GoogleFonts.ubuntuTextTheme().copyWith(
    bodySmall: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, color: Color(0xffaaaaaa)),
    bodyMedium: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, color: Color(0xffffffff)),
    bodyLarge: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, color: Color(0xffffffff)),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => UserBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: theme,
          home: const LoginScreen(),
        ),
      ),
    );
  }
}
