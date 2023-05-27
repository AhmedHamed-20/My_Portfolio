import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/Home/view_model/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/routes/app_router.dart';
import 'core/services/service_locator.dart';
import 'core/theme/app_theme.dart';

void main() {
  ServiceLocator.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => serviceLocator<HomeCubit>(),
          ),
        ],
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => MaterialApp.router(
            title: 'my_portfolio',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            //0 for light mode and 1 for dark mode
            themeMode: state.appThemeModeStatus.index == 0
                ? ThemeMode.light
                : ThemeMode.dark,
            routerConfig: AppRouter().router,
          ),
        ),
      ),
    );
  }
}
