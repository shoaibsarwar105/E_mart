import 'package:flutter/material.dart';

import 'curved_edges1.dart';

class BCurvedEdgeWidget extends StatelessWidget {
  const BCurvedEdgeWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: BCustomCurvedEdges(),
      child:child,
    );
  }
}