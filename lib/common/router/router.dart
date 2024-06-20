import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../view/root_tab.dart';

final routerProvider = Provider<GoRouter>((ref) {
  Page<dynamic> platformPage(Widget child, String key) {
    return Platform.isIOS
        ? CupertinoPage<void>(key: ValueKey(key), child: child)
        : MaterialPage<void>(key: ValueKey(key), child: child);
  }

  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => platformPage(const RootTab(), '/'),
        routes: [
          // GoRoute(
          //   path: 'detail',
          //   pageBuilder: (context, state) => platformPage(),
          // ),
        ],
      ),
    ],
  );
});
