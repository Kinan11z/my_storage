import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_bar_event.dart';
part 'search_bar_state.dart';

class SearchBarBloc extends Bloc<SearchBarEvent, SearchBarState> {
  SearchBarBloc() : super(SearchBarInitial()) {
    on<SearchOpenBarEvent>(
      (event, emit) {
        emit(SearchOpenBarState());
      },
    );
    on<SearchIconEvent>(
      (event, emit) {
        emit(SearchIconState());
      },
    );
  }
}
