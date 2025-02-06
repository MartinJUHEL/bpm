import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_ads_cubit.freezed.dart';
part 'profile_ads_state.dart';

@injectable
class ProfileAdsCubit extends Cubit<ProfileAdsState> {
  final AdRepository _adRepository;

  ProfileAdsCubit(this._adRepository) : super(const ProfileAdsState.initial());

  Future<void> fetchAds(String uid) async {
    final result = await _adRepository.fetchAdsByUserId(uid);
    result.when(success: (ads) {
      if (ads.isEmpty) {
        emit(const ProfileAdsState.empty());
      } else {
        emit(ProfileAdsState.data(ads..sort((a, b) => b.creationDate.compareTo(a.creationDate))));
      }
    }, failure: (error) {
      emit(const ProfileAdsState.error());
    });
    return;
  }

  Future<void> deleteAd(String adId) async {
    if (state is ProfileAdsData) {
      final result = await _adRepository.deleteAd(adId);
      result.when(success: (_) {
        final List<AdEntity> updatedList = List.from((state as ProfileAdsData).ads)..removeWhere((ad) => ad.id == adId);
        emit(ProfileAdsState.data(updatedList));
      }, failure: (error) {
        // Error is catch on genericErrorTrigger.
      });
    }
  }
}
