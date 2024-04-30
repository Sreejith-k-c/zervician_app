import 'package:flutter/material.dart';

class GLAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final TextStyle? titleTextStyle;

  const GLAppBar({super.key, 
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = true,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}