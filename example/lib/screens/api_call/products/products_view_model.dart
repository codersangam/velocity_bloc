part of 'products_imports.dart';

class ProductsViewModel {
  ProductsViewModel(this.repository);
  final Repository repository;

  final VelocityBloc<ProductsModel?> productsBloc =
      VelocityBloc<ProductsModel?>(null);

  fetchProducts() async {
    var data = await repository.othersApi.getProducts();
    if (data != null) {
      productsBloc.onUpdateData(data);
    }
  }
}
