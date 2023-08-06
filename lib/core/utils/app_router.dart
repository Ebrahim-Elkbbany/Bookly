import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static const kHomeViewPath ='/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );

}
