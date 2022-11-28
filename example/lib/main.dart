import 'package:device_preview/device_preview.dart';
import 'package:example/data/others_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'bloc/lang_cubit/lang_cubit.dart';
import 'repo/repository.dart';
import 'router/router_imports.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(
    RepositoryProvider(
      create: (context) => Repository(
        othersApi: OthersApi(),
      ),
      child: BlocProvider(
        create: (context) => LangCubit(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LangCubit>(
          create: (BuildContext context) => LangCubit(),
        ),
      ],
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          return DevicePreview(
            builder: (context) => MaterialApp.router(
              title: 'Velocity Bloc',
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ),
          );
        },
      ),
    );
  }
}
