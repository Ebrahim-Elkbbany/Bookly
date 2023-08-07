import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static const kHomeViewPath ='/homeView';
  static const kBookDetailsViewPath ='/bookDetailsView';
  static const kSearchViewBodyPath ='/searchViewBody';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchViewBodyPath,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );

}

