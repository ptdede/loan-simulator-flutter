import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loan_simulator/screens/auth/login_screen.dart';
import 'package:loan_simulator/screens/auth/register_screen.dart';
import 'package:loan_simulator/screens/simulation_detail_screen.dart';
import 'package:loan_simulator/screens/simulation/simulation_screen.dart';
import 'package:loan_simulator/screens/splash_screen.dart';
import 'package:loan_simulator/widgets/top_level_bottombar.dart';

class AppRouter {
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const homepage = '/homepage';
  static const simulation = '/simulation';
  static const simulationDetail = '/simulation/detail/:id';
  static const profile = '/profile';

  static final provider = Provider((ref) => AppRouter());

  final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        name: splash,
        path: splash,
        builder: (context, state) {
          return SplashScreen(
            onRedirect: () => context.pushReplacementNamed(login),
          );
        },
      ),
      GoRoute(
        name: login,
        path: login,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: LoginScreen(
            onLoginSucceed: () => context.pushReplacementNamed(homepage),
            onRedirectToSignup: () => context.pushReplacementNamed(register),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        name: register,
        path: register,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: RegisterScreen(
            onRegisterSucceed: () => context.pushReplacementNamed(homepage),
            onRedirectToSignin: () => context.pushReplacementNamed(login),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        name: homepage,
        path: homepage,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const GenerateBottombar(
            currentTab: TopLevelBottombarTab.home,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        name: simulation,
        path: simulation,
        builder: (context, state) => const SimulationScreen(),
      ),
      GoRoute(
        name: simulationDetail,
        path: simulationDetail,
        builder: (context, state) => const SimulationDetailScreen(),
      ),
      GoRoute(
        name: profile,
        path: profile,
        builder: (context, state) => const GenerateBottombar(
          currentTab: TopLevelBottombarTab.profile,
        ),
      ),
    ],
  );
}
