// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:example/screens/api_call/api_call_imports.dart' as _i3;
import 'package:example/screens/api_call/products/products_imports.dart' as _i2;
import 'package:example/screens/home/home_imports.dart' as _i1;
import 'package:example/screens/increment_decrement/increment_decrement_imports.dart'
    as _i5;
import 'package:example/screens/my_checkbox/my_checkbox_imports.dart' as _i4;
import 'package:example/screens/show_hide_data/show_hide_data_imports.dart'
    as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Products(),
      );
    },
    ApiCallRoute.name: (routeData) {
      final args = routeData.argsAs<ApiCallRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ApiCall(
          key: args.key,
          title: args.title,
        ),
      );
    },
    MyCheckboxRoute.name: (routeData) {
      final args = routeData.argsAs<MyCheckboxRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MyCheckbox(
          key: args.key,
          title: args.title,
        ),
      );
    },
    IncrementDecrementRoute.name: (routeData) {
      final args = routeData.argsAs<IncrementDecrementRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.IncrementDecrement(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ShowHideDataRoute.name: (routeData) {
      final args = routeData.argsAs<ShowHideDataRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ShowHideData(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.Home]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Products]
class ProductsRoute extends _i7.PageRouteInfo<void> {
  const ProductsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ApiCall]
class ApiCallRoute extends _i7.PageRouteInfo<ApiCallRouteArgs> {
  ApiCallRoute({
    _i8.Key? key,
    required String title,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ApiCallRoute.name,
          args: ApiCallRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ApiCallRoute';

  static const _i7.PageInfo<ApiCallRouteArgs> page =
      _i7.PageInfo<ApiCallRouteArgs>(name);
}

class ApiCallRouteArgs {
  const ApiCallRouteArgs({
    this.key,
    required this.title,
  });

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'ApiCallRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i4.MyCheckbox]
class MyCheckboxRoute extends _i7.PageRouteInfo<MyCheckboxRouteArgs> {
  MyCheckboxRoute({
    _i8.Key? key,
    required String title,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          MyCheckboxRoute.name,
          args: MyCheckboxRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MyCheckboxRoute';

  static const _i7.PageInfo<MyCheckboxRouteArgs> page =
      _i7.PageInfo<MyCheckboxRouteArgs>(name);
}

class MyCheckboxRouteArgs {
  const MyCheckboxRouteArgs({
    this.key,
    required this.title,
  });

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyCheckboxRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i5.IncrementDecrement]
class IncrementDecrementRoute
    extends _i7.PageRouteInfo<IncrementDecrementRouteArgs> {
  IncrementDecrementRoute({
    _i8.Key? key,
    required String title,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          IncrementDecrementRoute.name,
          args: IncrementDecrementRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'IncrementDecrementRoute';

  static const _i7.PageInfo<IncrementDecrementRouteArgs> page =
      _i7.PageInfo<IncrementDecrementRouteArgs>(name);
}

class IncrementDecrementRouteArgs {
  const IncrementDecrementRouteArgs({
    this.key,
    required this.title,
  });

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'IncrementDecrementRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i6.ShowHideData]
class ShowHideDataRoute extends _i7.PageRouteInfo<ShowHideDataRouteArgs> {
  ShowHideDataRoute({
    _i8.Key? key,
    required String title,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ShowHideDataRoute.name,
          args: ShowHideDataRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ShowHideDataRoute';

  static const _i7.PageInfo<ShowHideDataRouteArgs> page =
      _i7.PageInfo<ShowHideDataRouteArgs>(name);
}

class ShowHideDataRouteArgs {
  const ShowHideDataRouteArgs({
    this.key,
    required this.title,
  });

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'ShowHideDataRouteArgs{key: $key, title: $title}';
  }
}
