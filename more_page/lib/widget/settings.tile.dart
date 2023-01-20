import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SettingsTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool endIcon;
  final Color? textColor;
  const SettingsTile({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.onTap,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.labelLarge?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Ionicons.chevron_forward_outline),
            )
          : null,
    );
  }
}
