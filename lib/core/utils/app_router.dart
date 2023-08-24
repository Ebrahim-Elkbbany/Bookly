
import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookly/Features/home/presentation/manger/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/data/repos/search_repo_implementation.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomeViewPath = '/homeView';
  static const kBookDetailsViewPath = '/bookDetailsView';
  static const kSearchViewBodyPath = '/searchViewBody';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchViewBodyPath,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SearchCubit(
              getIt.get<SearchRepoImpl>(),
            ),
            child: const SearchView(),
          );
        },
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => RelevanceBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
            child: BookDetailsView(bookModel: state.extra as BookModel ),
          );
        },
      ),
    ],
  );
}
