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
        title: "Products".text.make(),
      ),
      body: BlocBuilder<VelocityBloc<ProductsModel?>,
          VelocityState<ProductsModel?>>(
        bloc: productsViewModel.productsBloc,
        builder: (context, state) {
          /// state is velocityinitialstate then show circular progress indicator.
          if (state is VelocityInitialState) {
            return const CircularProgressIndicator.adaptive().centered();

            /// state is velocityupdatestate then display data.
          } else if (state is VelocityUpdateState) {
            /// state has data then show below UI.
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
              ),

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: data.thumbnail!,
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ).cornerRadius(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.heightBox,
                          data.brand!.text
                              .color(Colors.deepPurple)
                              .maxLines(1)
                              .ellipsis
                              .make(),
                          data.title!.text.bold.maxLines(1).ellipsis.lg.make(),
                          "\$${data.price}".text.bold.xl3.make(),
                        ],
                      ).pSymmetric(h: 10),
                    ],
                  ),
                ).pSymmetric(h: 10);
              },
            ).pOnly(top: 10);

            /// state is error/exception state then show error/exception message.
          } else if (state is VelocityFailedState) {
            return state.error.text.makeCentered();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
