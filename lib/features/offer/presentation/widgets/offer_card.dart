import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final Widget child;
  final bool selected;

  const OfferCard({
    super.key,
    this.selected = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: selected ? Theme.of(context).colorScheme.primary : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: const BorderSide(
          color: Color(0xFF707070),
          width: 0.3,
        ),
      ),
      child: InkWell(
        onTap: () {
          // Add your navigation logic here
        },
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: child,
        ),
      ),
    );
  }
}
