import '../../../../core/errors/error_marketi_model.dart';
import '../../data/models/product_response.dart';

abstract class HomeStates {}

class InitState extends HomeStates {}

class ProductsSuccess extends HomeStates {
  final List<ProductResponse> products;
  ProductsSuccess(this.products);
}

class ProductsLoading extends HomeStates {}

class ProductsFailure extends HomeStates {
  final ErrorMarketiModel errorModel;
  ProductsFailure(this.errorModel);
}
