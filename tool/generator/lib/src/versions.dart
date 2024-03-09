// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// The version of the [WDK metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.WDK.Win32Metadata/) used
/// for generating projections and running tests.
///
/// This version should only be updated when preparing for a major release of
/// the `win32` package, as it may introduce breaking changes in the generated
/// code.
const wdkMetadataVersion = '0.10.7-experimental';

/// The version of the [Win32 metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Metadata/) used
/// for generating projections and running tests.
///
/// This version should only be updated when preparing for a major release of
/// the `win32` package, as it may introduce breaking changes in the generated
/// code.
const win32MetadataVersion = '58.0.18-preview';

/// The version of the [WinRT metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Contracts/) used for
/// generating projections and running tests.
///
/// This version should only be updated when preparing for a major release of
/// the `win32` package, as it may introduce breaking changes in the generated
/// code.
const winrtMetadataVersion = '10.0.22621.2428';

/// The version of the Win32Docs package used for generating documentation for
/// Win32 APIs.
const win32DocsVersion = '0.1.42-alpha';