import 'package:algolia/algolia.dart';
import 'package:assoshare/data/models/ad/sought_ad_model.dart';
import 'package:assoshare/data/models/ad/suggestion_model.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SearchAdService {
  SearchAdService({required Algolia algolia}) : _algolia = algolia;

  final Algolia _algolia;

  static const _adsIndex = 'ads_index';
  static const _adsAutoCompleteIndex = 'ads_autocomplete_index';
  static const _hitsPerPage = 10;
  static const _noRadius = 'all';

  Future<List<SuggestionModel>> getSuggestions(String query) async {
    AlgoliaQuery algoliaQuery = _algolia.index(_adsAutoCompleteIndex).query(query).setHitsPerPage(_hitsPerPage);
    AlgoliaQuerySnapshot snap = await algoliaQuery.getObjects();
    return snap.hits.map((snapshot) => SuggestionModel.fromJson(snapshot.data)).toList();
  }

  Future<List<SoughtAdModel>> searchAd(String query, int page, FilterEntity filter) async {
    final location = filter.city?.latLong;
    AlgoliaQuery algoliaQuery = _algolia.index(_adsIndex).query(query).setHitsPerPage(_hitsPerPage).setPage(page);

    if (location != null) {
      // Radius has to be in meters for Algolia.
      final radiusInMeters = filter.locationRadius != null ? filter.locationRadius! * 1000 : null;

      algoliaQuery = algoliaQuery
          .setAroundLatLng('${location.lat}, ${location.long}')
          .setAroundRadius(radiusInMeters ?? _noRadius);
    }
    AlgoliaQuerySnapshot snap = await algoliaQuery.getObjects();
    return snap.hits.map((snapshot) => SoughtAdModel.fromJson(snapshot.data)).toList();
  }
}
