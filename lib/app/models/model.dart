part of "models.dart";

abstract class Model {
  Map<String, dynamic> toRequestBody({Map<String, dynamic>? attributes});
  Map<String, dynamic> toJson();
  Model copyWith();
}
