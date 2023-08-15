import 'package:bloc/bloc.dart';

import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/model_test.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var fetchNewestBooksResult = await homeRepo.fetchNewestBooks();
    fetchNewestBooksResult.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errorMessage));
      },
      (newestBooks) {
        emit(NewestBooksSuccess(newestBooks));
      },
    );
  }
}
