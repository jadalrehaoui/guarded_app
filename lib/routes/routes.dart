import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guarded/Pages/auth/LoginPage.dart';
import 'package:guarded/Pages/auth/RecorveryPage.dart';
import 'package:guarded/Pages/auth/RegisterPage.dart';
import 'package:guarded/Pages/dashboard/DashboardPage.dart';
import 'package:guarded/Pages/dashboard/HomePage.dart';
import 'package:guarded/Pages/dashboard/SectionsPage.dart';

part 'routes.gr.dart';


@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: 'dashboard',
      page: DashboardPage, 
      children: [
        RedirectRoute(redirectTo: 'home', path: ''),
        AutoRoute(path: 'home', page: HomePage),
        AutoRoute(path: 'sections', page: SectionsPage),
      ]
    ),
    AutoRoute(path:'login', page: LoginPage, initial: true),
    AutoRoute(path:'register', page: RegisterPage),
    AutoRoute(path:'recover', page: RecoveryPage),
    
  ]
)
class $RootRouter extends _$$RootRouter{}
