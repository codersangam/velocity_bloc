part of 'products_imports.dart';

class ProductsViewModel {
  ProductsViewModel(this.repository);
  final Repository repository;

  ///initialising the products model as null
  final VelocityBloc<ProductsModel?> productsBloc =
      VelocityBloc<ProductsModel?>(null);

  /// Function to fetch all the products
  fetchProducts() async {
    ///getProducts() to fetch all the products
    try {
      var data = await repository.othersApi.getProducts();

      ///After fetching all the products, the productsBloc is updated with all the products which is to be shown in UI.
      productsBloc.onUpdateData(data);
    } catch (e) {
      productsBloc.onFailedResponse(error: e.toString());
    }
  }
}
