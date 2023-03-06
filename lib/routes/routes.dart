import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guarded/Pages/auth/LoginPage.dart';
import 'package:guarded/Pages/auth/RecorveryPage.dart';
import 'package:guarded/Pages/auth/RegisterPage.dart';

part 'routes.gr.dart';


@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: RecoveryPage),
  ]
)
class $RootRouter extends _$$RootRouter{}
