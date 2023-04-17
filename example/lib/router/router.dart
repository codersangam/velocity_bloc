part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: "/"),
        AutoRoute(page: IncrementDecrementRoute.page),
        AutoRoute(page: MyCheckboxRoute.page),
        AutoRoute(page: ShowHideDataRoute.page),
        AutoRoute(page: ApiCallRoute.page),
        AutoRoute(page: ProductsRoute.page)
      ];
}
