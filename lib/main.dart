import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/router/router.dart';

void main() async {

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: ScreenUtilInit(
          designSize: const Size(360, 812),
          child: child,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        canvasColor: Colors.white,
      ),
    );
  }
}

