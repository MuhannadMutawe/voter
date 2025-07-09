import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/routing/app_router.dart';
import 'package:voter/core/routing/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:voter/core/theming/text_styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.ensureScreenSize();
  runApp(
    Voter(
      appRouter: AppRouter(),
    ),
  );
}

class Voter extends StatelessWidget {
  const Voter({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder:(context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'voter',
        locale: Locale('ar'),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('ar')],
        theme: ThemeData(
          fontFamily: 'Cairo',
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyles.font20BlackSemiBold
          ),
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
