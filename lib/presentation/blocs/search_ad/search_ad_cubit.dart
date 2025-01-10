import 'package:assoshare/core/utils/text_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_ad_cubit.freezed.dart';
part 'search_ad_state.dart';

@injectable
class SearchAdCubit extends Cubit<SearchAdState> {
  SearchAdCubit() : super(const SearchAdState.none());

  void onSearchClicked() {
    emit(const SearchAdState.searching(query: empty));
  }

  void onSearchCancel() {
    emit(const SearchAdState.none());
  }
}
