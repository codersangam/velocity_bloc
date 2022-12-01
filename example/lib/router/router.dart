part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: IncrementDecrement),
    AutoRoute(page: MyCheckbox),
    AutoRoute(page: ShowHideData),
    AutoRoute(page: ApiCall),
  ],
)
class $AppRouter {}
