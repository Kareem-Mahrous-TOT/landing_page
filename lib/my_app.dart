import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot_landing_page_widgets/view/blocs/bloc/markdown_bloc.dart';

import 'core/di/injection_container.dart';
import 'core/routes/app_router.dart';
import 'core/theme/pallete.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<MarkdownBloc>(),
          ),
        ],
        child: MaterialApp.router(
          title: 'TOT Landing Pages',
          theme: ThemeData(
            elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
                iconColor: MaterialStatePropertyAll(
                  primary,
                ),
              ),
            ),
            useMaterial3: true,
          ),
          routerConfig: allRoutes,
        ),
      ),
    );
  }
}
