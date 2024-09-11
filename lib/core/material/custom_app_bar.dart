import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onTap;
  final List<Widget>? actions;
  final Color iconColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onTap,
    this.actions,
    this.iconColor = Colors.white,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -10,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      leading: IconButton(
        onPressed: onTap,
        icon: Icon(
          Icons.arrow_back_rounded,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
      ),
      actions: actions,
    );
  }
}
