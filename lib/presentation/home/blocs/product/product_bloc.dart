import 'package:bloc/bloc.dart';
import 'package:canteen_app/data/dataresource/product_remote_datasource.dart';
import 'package:canteen_app/data/model/response/product_response_model.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  ProductBloc(this.productRemoteDatasource) : super(ProductInitial()){
    on<ProductFetched>((event, emit) async{
      emit(ProductLoading());
      final response = await productRemoteDatasource.getAllProducts();
      response.fold(
          (l) => emit(ProductFailure(message: (l))),
          (r) => emit(ProductSuccees(r.products))
      );
    });
  }
}
