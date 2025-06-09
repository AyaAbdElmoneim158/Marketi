import 'product_response.dart';

abstract class ProductStates {}

class InitState extends ProductStates {}

class NoInternetConnectionState extends ProductStates {}

final class FetchingProductsSuccess extends ProductStates {
  final List<ProductResponse> products;
  FetchingProductsSuccess({required this.products});
}

final class FetchingProductsLoading extends ProductStates {}

final class FetchingProductsFailure extends ProductStates {
  final String errMessage;

  FetchingProductsFailure({required this.errMessage});
}
