import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loan_simulator/screens/login_screen.dart';
import 'package:loan_simulator/screens/register_screen.dart';
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
  static const simulationDetail = '/simulation/detail';
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
            onRedirect: () => context.replaceNamed(homepage),
          );
        },
      ),
      GoRoute(
        name: login,
        path: login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: register,
        path: register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        name: homepage,
        path: homepage,
        builder: (context, state) => const GenerateBottombar(
          currentTab: TopLevelBottombarTab.home,
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
