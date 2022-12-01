// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:example/screens/api_call/api_call_imports.dart' as _i5;
import 'package:example/screens/home/home_imports.dart' as _i1;
import 'package:example/screens/increment_decrement/increment_decrement_imports.dart'
    as _i2;
import 'package:example/screens/my_checkbox/my_checkbox_imports.dart' as _i3;
import 'package:example/screens/show_hide_data/show_hide_data_imports.dart'
    as _i4;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    IncrementDecrementRoute.name: (routeData) {
      final args = routeData.argsAs<IncrementDecrementRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.IncrementDecrement(
          key: args.key,
          title: args.title,
        ),
      );
    },
    MyCheckboxRoute.name: (routeData) {
      final args = routeData.argsAs<MyCheckboxRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.MyCheckbox(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ShowHideDataRoute.name: (routeData) {
      final args = routeData.argsAs<ShowHideDataRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ShowHideData(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ApiCallRoute.name: (routeData) {
      final args = routeData.argsAs<ApiCallRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.ApiCall(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          IncrementDecrementRoute.name,
          path: '/increment-decrement',
        ),
        _i6.RouteConfig(
          MyCheckboxRoute.name,
          path: '/my-checkbox',
        ),
        _i6.RouteConfig(
          ShowHideDataRoute.name,
          path: '/show-hide-data',
        ),
        _i6.RouteConfig(
          ApiCallRoute.name,
          path: '/api-call',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.IncrementDecrement]
class IncrementDecrementRoute
    extends _i6.PageRouteInfo<IncrementDecrementRouteArgs> {
  IncrementDecrementRoute({
    _i7.Key? key,
    required String title,
  }) : super(
          IncrementDecrementRoute.name,
          path: '/increment-decrement',
          args: IncrementDecrementRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'IncrementDecrementRoute';
}

class IncrementDecrementRouteArgs {
  const IncrementDecrementRouteArgs({
    this.key,
    required this.title,
  });

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'IncrementDecrementRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.MyCheckbox]
class MyCheckboxRoute extends _i6.PageRouteInfo<MyCheckboxRouteArgs> {
  MyCheckboxRoute({
    _i7.Key? key,
    required String title,
  }) : super(
          MyCheckboxRoute.name,
          path: '/my-checkbox',
          args: MyCheckboxRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'MyCheckboxRoute';
}

class MyCheckboxRouteArgs {
  const MyCheckboxRouteArgs({
    this.key,
    required this.title,
  });

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyCheckboxRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i4.ShowHideData]
class ShowHideDataRoute extends _i6.PageRouteInfo<ShowHideDataRouteArgs> {
  ShowHideDataRoute({
    _i7.Key? key,
    required String title,
  }) : super(
          ShowHideDataRoute.name,
          path: '/show-hide-data',
          args: ShowHideDataRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'ShowHideDataRoute';
}

class ShowHideDataRouteArgs {
  const ShowHideDataRouteArgs({
    this.key,
    required this.title,
  });

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'ShowHideDataRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i5.ApiCall]
class ApiCallRoute extends _i6.PageRouteInfo<ApiCallRouteArgs> {
  ApiCallRoute({
    _i7.Key? key,
    required String title,
  }) : super(
          ApiCallRoute.name,
          path: '/api-call',
          args: ApiCallRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'ApiCallRoute';
}

class ApiCallRouteArgs {
  const ApiCallRouteArgs({
    this.key,
    required this.title,
  });

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'ApiCallRouteArgs{key: $key, title: $title}';
  }
}
