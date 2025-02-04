import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/ad/post_ad_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';

abstract class AdRepository {
  /// Post ad.
  Future<Result<void>> postAd(PostAdEntity ad);

  /// Get list of ads posted by a user.
  Future<Result<List<AdEntity>>> fetchAdsByUserId(String uid);

  /// Delete an Ad.
  Future<Result<void>> deleteAd(String adId);

  /// Search an Ad with a query Return list of relevant ads corresponding to the query.
  Future<Result<List<AdEntity>>> searchAd(String query, int page, FilterEntity filter);

  /// Return list of string from ads title.
  Future<Result<List<String>>> getAdSuggestions(String query);
}
