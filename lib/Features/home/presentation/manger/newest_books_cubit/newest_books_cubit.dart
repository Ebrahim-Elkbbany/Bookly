import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';


import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';



part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var fetchNewestBooksResult = await homeRepo.fetchNewestBooks();
    fetchNewestBooksResult.fold(
      (failure) {
        print(failure.errorMessage);
        emit(NewestBooksFailure(failure.errorMessage));
      },
      (newestBooks) {
        emit(NewestBooksSuccess(newestBooks));
      },
    );
  }
}
