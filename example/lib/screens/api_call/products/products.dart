part of 'products_imports.dart';

@RoutePage()
class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  /// Creating an Instance of controller or view_model and calling the fetchProducts() in initState().
  late ProductsViewModel productsViewModel;

  @override
  void initState() {
    productsViewModel = ProductsViewModel(context.read<Repository>());
    productsViewModel.fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: BlocBuilder<VelocityBloc<ProductsModel?>,
          VelocityState<ProductsModel?>>(
        bloc: productsViewModel.productsBloc,
        builder: (context, state) {
          /// state is velocityinitialstate then show circular progress indicator.
          if (state is VelocityInitialState) {
            return const Center(child: CircularProgressIndicator.adaptive());

            /// state is velocityupdatestate then display data.
          } else if (state is VelocityUpdateState) {
            /// state has data then show below UI.
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10),

              ///state.data holds current state data of products
              itemCount: state.data!.products!.length,
              itemBuilder: (context, index) {
                var data = state.data!.products![index];
                return Container(
                  width: 100,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: data.thumbnail!,
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              data.brand ?? "",
                              maxLines: 1,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.deepPurple,
                              ),
                            ),
                            Text(
                              data.title!,
                              maxLines: 1,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "\$${data.price}",
                              maxLines: 1,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );

            /// state is error/exception state then show error/exception message.
          } else if (state is VelocityFailedState) {
            return Center(
              child: Text(state.error),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
