// Copyright 2017 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

class DefaultScrollConfiguration extends StatelessWidget {
  final Widget child;

  DefaultScrollConfiguration({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => new ScrollConfiguration2(
        behavior: const _BouncingScrollBehavior(),
        child: child,
      );
}

class _BouncingScrollBehavior extends ScrollBehavior2 {
  const _BouncingScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics();
}