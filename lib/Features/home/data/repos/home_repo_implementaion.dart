import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        urlEndPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &Projection=full&q=subject:Programming',
      );
      BookModel.fromJson(data);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(bookModelFromJson(item));
      }
      return Right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
