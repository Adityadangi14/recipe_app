import 'package:recipe_app/core/utils/constants/api_constants.dart'
    as constants;

class RecipeSearchRequest {
  final String appId;
  final String appKey;
  final String query;
  final String type;

  const RecipeSearchRequest({
    required this.query,
    this.appId = constants.appId,
    this.appKey = constants.appKey,
    this.type = constants.requestType,
  });
}
