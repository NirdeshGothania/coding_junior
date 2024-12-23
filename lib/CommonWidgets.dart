import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.actions,
    this.automaticallyImplyLeading = true,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize; // default is 56.0
  final Widget title;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: const Color(0xff006ef5),
      foregroundColor: Colors.white,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
    );
  }
}
