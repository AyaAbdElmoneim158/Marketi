import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/product_response.dart';
import '../../data/repo/home_repo.dart';
import 'home_states.dart'; ////! part of

////! Septate ProductsCubit/SignUpCubit at modules
class ProductsCubit extends Cubit<HomeStates> {
  final HomeRepo homeRepo;
  ProductsCubit(this.homeRepo) : super(InitState());
  static ProductsCubit get(context) => BlocProvider.of(context);
  List<ProductResponse> products = [];

  void getProducts() async {
    emit(ProductsLoading());
    final response = await homeRepo.getProducts();

    response.fold(
      (failure) => emit(ProductsFailure(failure.errorModel)),
      (products) {
        products = products;
        emit(ProductsSuccess(products));
      },
    );
  }
}

class SignUpCubit {}
