import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension NavigationExtension on material.BuildContext {
  /// Push a new page using a Widget
  Future<T?> push<T>(material.Widget page) {
    return material.Navigator.push<T>(
      this,
      material.MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Replace current page using a Widget
  Future<T?> pushReplacement<T, TO>(material.Widget page) {
    return material.Navigator.pushReplacement<T, TO>(
      this,
      material.MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Push and remove all previous routes using a Widget
  Future<T?> pushAndRemoveAll<T>(material.Widget page) {
    return material.Navigator.pushAndRemoveUntil<T>(
      this,
      material.MaterialPageRoute(builder: (_) => page),
      (_) => false,
    );
  }

  /// Pop current screen
  void pop<T extends Object?>([T? result]) {
    material.Navigator.pop(this, result);
  }

  /// Push a named route
  Future<T?> pushNamed<T extends Object?>(String routeName, {Object? arguments}) {
    return material.Navigator.pushNamed<T>(
      this,
      routeName,
      arguments: arguments,
    );
  }

  /// Replace current route with named route
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return material.Navigator.pushReplacementNamed<T, TO>(
      this,
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// Push a named route and remove all previous routes
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String newRouteName,
    material.RoutePredicate predicate, {
    Object? arguments,
  }) {
    return material.Navigator.pushNamedAndRemoveUntil<T>(
      this,
      newRouteName,
      predicate,
      arguments: arguments,
    );
  }

  Future<T?> pushWithAnimation<T>(
    material.Widget page, {
    Duration duration = const Duration(milliseconds: 300),
    material.Curve curve = material.Curves.easeInOut,
  }) {
    return material.Navigator.push<T>(
      this,
      material.PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, animation, __, child) {
          final offsetAnimation = animation.drive(
            material.Tween(begin: const material.Offset(1.0, 0.0), end: material.Offset.zero).chain(material.CurveTween(curve: curve)),
          );
          return material.SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: duration,
      ),
    );
  }

  Future<T?> pushReplacementWithAnimation<T, TO>(
    material.Widget page, {
    Duration duration = const Duration(milliseconds: 300),
    material.Curve curve = material.Curves.easeInOut,
  }) {
    return material.Navigator.pushReplacement<T, TO>(
      this,
      material.PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, animation, __, child) {
          final offsetAnimation = animation.drive(
            material.Tween(begin: const material.Offset(1.0, 0.0), end: material.Offset.zero).chain(material.CurveTween(curve: curve)),
          );
          return material.SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: duration,
      ),
    );
  }

  Future<T?> pushAndRemoveAllWithAnimation<T>(
    material.Widget page, {
    Duration duration = const Duration(milliseconds: 300),
    material.Curve curve = material.Curves.easeInOut,
  }) {
    return material.Navigator.pushAndRemoveUntil<T>(
      this,
      material.PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, animation, __, child) {
          final offsetAnimation = animation.drive(
            material.Tween(begin: const material.Offset(1.0, 0.0), end: material.Offset.zero).chain(material.CurveTween(curve: curve)),
          );
          return material.SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: duration,
      ),
      (_) => false,
    );
  }
}

extension ShimmerExtension on Widget {
  Widget withShimmer({
    bool isShow = true,
    Color? color,
    Key? key,
  }) {
    return _ShimmerWrapper(
      key: key,
      isShow: isShow,
      color: color,
      child: this,
    );
  }
}

class _ShimmerWrapper extends StatelessWidget {
  final Widget child;
  final bool isShow;
  final Color? color;

  const _ShimmerWrapper({
    super.key,
    required this.child,
    required this.isShow,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (!isShow) return child;

    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.onSurface.withOpacity(.05),
      highlightColor: Theme.of(context).colorScheme.onSurface.withOpacity(.1),
      child: Container(
        color: color ?? Theme.of(context).colorScheme.surface,
        child: child,
      ),
    );
  }
}

extension PopupExtension on BuildContext {
  // Show an AlertDialog
  Future<void> showAlertDialog({
    required String title,
    required String content,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showDialog<void>(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            if (cancelText != null)
              TextButton(
                onPressed: () {
                  if (onCancel != null) onCancel();
                  Navigator.of(context).pop();
                },
                child: Text(cancelText),
              ),
            if (confirmText != null)
              TextButton(
                onPressed: () {
                  if (onConfirm != null) {
                    onConfirm();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                child: Text(confirmText),
              ),
          ],
        );
      },
    );
  }

  // Show a BottomSheet
  Future<void> showCustomBottomSheet({
    required Widget child,
    bool isDismissible = true,
    ShapeBorder? shape,
    Color? backgroundColor,
  }) {
    return showModalBottomSheet<void>(
      context: this,
      isDismissible: isDismissible,
      shape: shape,
      backgroundColor: backgroundColor,
      builder: (BuildContext context) => child,
    );
  }

  // Show a SnackBar
  void showSnackBar({
    required String message,
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 4),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        action: action,
        duration: duration,
      ),
    );
  }

  // Show a simple dialog
  Future<void> showSimpleDialog({
    required String title,
    required String content,
    String? buttonText,
    VoidCallback? onButtonPressed,
  }) {
    return showDialog<void>(
      context: this,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(content),
            ),
            if (buttonText != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (onButtonPressed != null) onButtonPressed();
                    Navigator.of(context).pop();
                  },
                  child: Text(buttonText),
                ),
              ),
          ],
        );
      },
    );
  }

  // Show a loading dialog
  Future<void> showLoadingDialog({
    String message = 'Loading...',
  }) {
    return showDialog<void>(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(width: 20),
              Text(message),
            ],
          ),
        );
      },
    );
  }

  // Show a confirmation dialog
  Future<bool> showConfirmationDialog({
    required String title,
    required String content,
    String confirmText = 'Yes',
    String cancelText = 'No',
  }) {
    return showDialog<bool>(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text(cancelText),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text(confirmText),
            ),
          ],
        );
      },
    ).then((value) => value ?? false);
  }
}
