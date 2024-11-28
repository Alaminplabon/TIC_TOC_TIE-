import 'package:flutter/material.dart';

import '../enums/box_state.dart';

class BoxStateIcon extends StatelessWidget {
  final boxicon;
  const BoxStateIcon({super.key, required this.boxicon});

  @override
  Widget build(BuildContext context) {
    return boxicon == BoxState.cross
        ? const Icon(Icons.close, color: Colors.white, size: 110.0)
        : boxicon == BoxState.circle
            ? const Icon(
                Icons.lens_outlined,
                color: Colors.white,
                size: 110.0,
              )
            : Container();
  }
}