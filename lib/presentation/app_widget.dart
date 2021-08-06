import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/application/bloc/places_bloc.dart';
import 'package:travel_app/injection.dart';
import 'package:travel_app/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light),
    );
    return BlocProvider(
        create: (context) =>
            getIt<PlacesBloc>()..add(const PlacesEvent.getAllPlaces()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.latoTextTheme(),
            splashFactory: InkRipple.splashFactory,
            // color
            colorScheme: const ColorScheme.light(secondary: Colors.white),
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: ZoomPageTransitionsBuilder(),
              },
            ),
          ),
          home: HomePage(),
        ));
  }
}
