// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import '../command.dart';
import '../oauth2.dart' as oauth2;

/// Handles the `logout` pub command.
class LogoutCommand extends PubCommand {
  String get name => "logout";
  String get description => 'Log out of pub.dartlang.org.';
  String get invocation => 'pub logout';

  LogoutCommand();

  Future run() async {
    oauth2.logout(cache);
  }
}
