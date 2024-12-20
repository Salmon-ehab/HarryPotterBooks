import 'package:bloc/bloc.dart';
import 'package:harrypoterbooks/feature/home/data/repo/book_repo_implementation.dart';
import 'package:harrypoterbooks/feature/home/presentation/manager/book_state.dart';

class BookCubit extends Cubit<BookState> {
  final BookRepoImplementation bookRepoImplementation;
  BookCubit(this.bookRepoImplementation) : super(BookInitialState());

  fetchBooks() async {
    emit(BookLoadingState());
    var result = await bookRepoImplementation.getBooks();
    result.fold((ifLeft) {
      emit(BookFailureState(ifLeft.error));
    }, (ifRight) {
      emit(BookSuccessState(ifRight));
    });
  }
}
