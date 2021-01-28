import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/application/bloc/places_bloc.dart';
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
            PlacesBloc()..add(const PlacesEvent.getAllPlaces()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light()
              .copyWith(textTheme: GoogleFonts.latoTextTheme()),
          home: HomePage(),
        ));
  }
}
