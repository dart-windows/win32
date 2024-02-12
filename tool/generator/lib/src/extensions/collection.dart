// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

extension IterableExtension<E> on Iterable<E> {
  /// Returns the fixed-length [List] with elements of `this`.
  List<E> toFixedList() => toList(growable: false);
}
