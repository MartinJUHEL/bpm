import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_ads_cubit.freezed.dart';
part 'list_ads_state.dart';

@injectable
class ListAdsCubit extends Cubit<ListAdsState> {
  final AdRepository adRepository;

  ListAdsCubit(this.adRepository) : super(const ListAdsState.initial());

  Future<void> fetchAds(String uid) async {
    final result = await adRepository.fetchAdsByUserId(uid);
    result.when(success: (ads) {
      if (ads.isEmpty) {
        emit(const ListAdsState.empty());
      } else {
        emit(ListAdsState.data(ads..sort((a, b) => b.creationDate.compareTo(a.creationDate))));
      }
    }, failure: (error) {
      emit(const ListAdsState.error());
    });
    return;
  }

  Future<void> deleteAd(String adId) async {
    if (state is ListAdsData) {
      final result = await adRepository.deleteAd(adId);
      result.when(success: (_) {
        final List<AdEntity> updatedList = List.from((state as ListAdsData).ads)..removeWhere((ad) => ad.id == adId);
        emit(ListAdsState.data(updatedList));
      }, failure: (error) {
        // Error is catch on genericErrorTrigger.
      });
    }
  }
}
