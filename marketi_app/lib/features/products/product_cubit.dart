// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'product_repo.dart';
// import 'product_states.dart';

// ////! pagination + saved_local
// class ProductCubit extends Cubit<ProductStates> {
//   final ProductsRepo productsRepo;
//   ProductCubit(this.productsRepo) : super(InitState());
//   static ProductCubit get(context) => BlocProvider.of(context);
//   getAllProducts() async {
//     emit(FetchingProductsLoading());
//     // if (!await ConnectionManager.checkConnection()) {emit(NoInternetConnectionState());return;}
//     final response = await productsRepo.getAllProducts();
//     response.fold(
//       (errMessage) => emit(FetchingProductsFailure(errMessage: errMessage.errorModel.errorMessage)),
//       (products) => emit(FetchingProductsSuccess(products: products)),
//     );
//   }
// }
