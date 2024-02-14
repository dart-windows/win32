// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: directives_ordering

/// Support for programming against the Win32 API on Windows operating systems.
///
/// This library provides a wrapper around many useful functions from the API,
/// along with the necessary constants and structs that are supplied. With
/// thousands of APIs and interfaces in the Win32 API, many of which cover areas
/// that would be unlikely to be useful to a Dart or Flutter developer, this
/// library is not intended to be exhaustive. Instead, we focus on the core
/// Win32 APIs that are typically used for Windows development, along with Win32
/// and COM APIs that are likely to be wrapped by a Flutter plugin author.
///
/// Win32 is at its heart a C-based API, and accordingly adopts the style and
/// idioms of that language, including heavy usage of pointers, structs
/// allocated on the heap, and null-terminated strings. As a result, you may
/// choose to wrap the exposed APIs in your application to make their invocation
/// more idiomatic for a Dart consumer.
///
/// For more conceptual material about programming Win32 apps with Dart, consult
/// the [Dart | Windows documentation](
/// https://win32.pub/docs/category/win32-programming).
library;

// COM interfaces
export 'src/com/iagileobject.g.dart';
export 'src/com/iapplicationactivationmanager.g.dart';
export 'src/com/iappxfactory.g.dart';
export 'src/com/iappxfile.g.dart';
export 'src/com/iappxfilesenumerator.g.dart';
export 'src/com/iappxmanifestapplication.g.dart';
export 'src/com/iappxmanifestapplicationsenumerator.g.dart';
export 'src/com/iappxmanifestospackagedependency.g.dart';
export 'src/com/iappxmanifestpackagedependenciesenumerator.g.dart';
export 'src/com/iappxmanifestpackagedependency.g.dart';
export 'src/com/iappxmanifestpackageid.g.dart';
export 'src/com/iappxmanifestproperties.g.dart';
export 'src/com/iappxmanifestreader.g.dart';
export 'src/com/iappxmanifestreader2.g.dart';
export 'src/com/iappxmanifestreader3.g.dart';
export 'src/com/iappxmanifestreader4.g.dart';
export 'src/com/iappxmanifestreader5.g.dart';
export 'src/com/iappxmanifestreader6.g.dart';
export 'src/com/iappxmanifestreader7.g.dart';
export 'src/com/iappxpackagereader.g.dart';
export 'src/com/iaudiocaptureclient.g.dart';
export 'src/com/iaudioclient.g.dart';
export 'src/com/iaudioclient2.g.dart';
export 'src/com/iaudioclient3.g.dart';
export 'src/com/iaudioclientduckingcontrol.g.dart';
export 'src/com/iaudioclock.g.dart';
export 'src/com/iaudioclock2.g.dart';
export 'src/com/iaudioclockadjustment.g.dart';
export 'src/com/iaudiorenderclient.g.dart';
export 'src/com/iaudiosessioncontrol.g.dart';
export 'src/com/iaudiosessionmanager.g.dart';
export 'src/com/iaudiostreamvolume.g.dart';
export 'src/com/ibindctx.g.dart';
export 'src/com/ichannelaudiovolume.g.dart';
export 'src/com/iclassfactory.g.dart';
export 'src/com/iconnectionpoint.g.dart';
export 'src/com/iconnectionpointcontainer.g.dart';
export 'src/com/idesktopwallpaper.g.dart';
export 'src/com/idispatch.g.dart';
export 'src/com/ienumidlist.g.dart';
export 'src/com/ienummoniker.g.dart';
export 'src/com/ienumnetworkconnections.g.dart';
export 'src/com/ienumnetworks.g.dart';
export 'src/com/ienumresources.g.dart';
export 'src/com/ienumspellingerror.g.dart';
export 'src/com/ienumstring.g.dart';
export 'src/com/ienumvariant.g.dart';
export 'src/com/ienumwbemclassobject.g.dart';
export 'src/com/ierrorinfo.g.dart';
export 'src/com/ifiledialog.g.dart';
export 'src/com/ifiledialog2.g.dart';
export 'src/com/ifiledialogcustomize.g.dart';
export 'src/com/ifileisinuse.g.dart';
export 'src/com/ifileopendialog.g.dart';
export 'src/com/ifilesavedialog.g.dart';
export 'src/com/iinitializewithwindow.g.dart';
export 'src/com/iinspectable.g.dart';
export 'src/com/iknownfolder.g.dart';
export 'src/com/iknownfoldermanager.g.dart';
export 'src/com/imetadataassemblyimport.g.dart';
export 'src/com/imetadatadispenser.g.dart';
export 'src/com/imetadatadispenserex.g.dart';
export 'src/com/imetadataimport.g.dart';
export 'src/com/imetadataimport2.g.dart';
export 'src/com/imetadatatables.g.dart';
export 'src/com/imetadatatables2.g.dart';
export 'src/com/immdevice.g.dart';
export 'src/com/immdevicecollection.g.dart';
export 'src/com/immdeviceenumerator.g.dart';
export 'src/com/immendpoint.g.dart';
export 'src/com/immnotificationclient.g.dart';
export 'src/com/imodalwindow.g.dart';
export 'src/com/imoniker.g.dart';
export 'src/com/inetwork.g.dart';
export 'src/com/inetworkconnection.g.dart';
export 'src/com/inetworklistmanager.g.dart';
export 'src/com/inetworklistmanagerevents.g.dart';
export 'src/com/ipersist.g.dart';
export 'src/com/ipersistfile.g.dart';
export 'src/com/ipersistmemory.g.dart';
export 'src/com/ipersiststream.g.dart';
export 'src/com/ipropertystore.g.dart';
export 'src/com/iprovideclassinfo.g.dart';
export 'src/com/irestrictederrorinfo.g.dart';
export 'src/com/irunningobjecttable.g.dart';
export 'src/com/isensor.g.dart';
export 'src/com/isensorcollection.g.dart';
export 'src/com/isensordatareport.g.dart';
export 'src/com/isensormanager.g.dart';
export 'src/com/isequentialstream.g.dart';
export 'src/com/ishellfolder.g.dart';
export 'src/com/ishellitem.g.dart';
export 'src/com/ishellitem2.g.dart';
export 'src/com/ishellitemarray.g.dart';
export 'src/com/ishellitemfilter.g.dart';
export 'src/com/ishellitemimagefactory.g.dart';
export 'src/com/ishellitemresources.g.dart';
export 'src/com/ishelllink.g.dart';
export 'src/com/ishelllinkdatalist.g.dart';
export 'src/com/ishelllinkdual.g.dart';
export 'src/com/ishellservice.g.dart';
export 'src/com/isimpleaudiovolume.g.dart';
export 'src/com/ispeechaudioformat.g.dart';
export 'src/com/ispeechbasestream.g.dart';
export 'src/com/ispeechobjecttoken.g.dart';
export 'src/com/ispeechobjecttokens.g.dart';
export 'src/com/ispeechvoice.g.dart';
export 'src/com/ispeechvoicestatus.g.dart';
export 'src/com/ispeechwaveformatex.g.dart';
export 'src/com/ispellchecker.g.dart';
export 'src/com/ispellchecker2.g.dart';
export 'src/com/ispellcheckerchangedeventhandler.g.dart';
export 'src/com/ispellcheckerfactory.g.dart';
export 'src/com/ispellingerror.g.dart';
export 'src/com/ispeventsource.g.dart';
export 'src/com/ispnotifysource.g.dart';
export 'src/com/ispvoice.g.dart';
export 'src/com/istream.g.dart';
export 'src/com/isupporterrorinfo.g.dart';
export 'src/com/itypeinfo.g.dart';
export 'src/com/iuiautomation.g.dart';
export 'src/com/iuiautomation2.g.dart';
export 'src/com/iuiautomation3.g.dart';
export 'src/com/iuiautomation4.g.dart';
export 'src/com/iuiautomation5.g.dart';
export 'src/com/iuiautomation6.g.dart';
export 'src/com/iuiautomationandcondition.g.dart';
export 'src/com/iuiautomationannotationpattern.g.dart';
export 'src/com/iuiautomationboolcondition.g.dart';
export 'src/com/iuiautomationcacherequest.g.dart';
export 'src/com/iuiautomationcondition.g.dart';
export 'src/com/iuiautomationcustomnavigationpattern.g.dart';
export 'src/com/iuiautomationdockpattern.g.dart';
export 'src/com/iuiautomationdragpattern.g.dart';
export 'src/com/iuiautomationdroptargetpattern.g.dart';
export 'src/com/iuiautomationelement.g.dart';
export 'src/com/iuiautomationelement2.g.dart';
export 'src/com/iuiautomationelement3.g.dart';
export 'src/com/iuiautomationelement4.g.dart';
export 'src/com/iuiautomationelement5.g.dart';
export 'src/com/iuiautomationelement6.g.dart';
export 'src/com/iuiautomationelement7.g.dart';
export 'src/com/iuiautomationelement8.g.dart';
export 'src/com/iuiautomationelement9.g.dart';
export 'src/com/iuiautomationelementarray.g.dart';
export 'src/com/iuiautomationexpandcollapsepattern.g.dart';
export 'src/com/iuiautomationgriditempattern.g.dart';
export 'src/com/iuiautomationgridpattern.g.dart';
export 'src/com/iuiautomationinvokepattern.g.dart';
export 'src/com/iuiautomationitemcontainerpattern.g.dart';
export 'src/com/iuiautomationlegacyiaccessiblepattern.g.dart';
export 'src/com/iuiautomationmultipleviewpattern.g.dart';
export 'src/com/iuiautomationnotcondition.g.dart';
export 'src/com/iuiautomationobjectmodelpattern.g.dart';
export 'src/com/iuiautomationorcondition.g.dart';
export 'src/com/iuiautomationpropertycondition.g.dart';
export 'src/com/iuiautomationproxyfactory.g.dart';
export 'src/com/iuiautomationproxyfactoryentry.g.dart';
export 'src/com/iuiautomationproxyfactorymapping.g.dart';
export 'src/com/iuiautomationrangevaluepattern.g.dart';
export 'src/com/iuiautomationscrollitempattern.g.dart';
export 'src/com/iuiautomationscrollpattern.g.dart';
export 'src/com/iuiautomationselectionitempattern.g.dart';
export 'src/com/iuiautomationselectionpattern.g.dart';
export 'src/com/iuiautomationselectionpattern2.g.dart';
export 'src/com/iuiautomationspreadsheetitempattern.g.dart';
export 'src/com/iuiautomationspreadsheetpattern.g.dart';
export 'src/com/iuiautomationstylespattern.g.dart';
export 'src/com/iuiautomationsynchronizedinputpattern.g.dart';
export 'src/com/iuiautomationtableitempattern.g.dart';
export 'src/com/iuiautomationtablepattern.g.dart';
export 'src/com/iuiautomationtextchildpattern.g.dart';
export 'src/com/iuiautomationtexteditpattern.g.dart';
export 'src/com/iuiautomationtextpattern.g.dart';
export 'src/com/iuiautomationtextpattern2.g.dart';
export 'src/com/iuiautomationtextrange.g.dart';
export 'src/com/iuiautomationtextrange2.g.dart';
export 'src/com/iuiautomationtextrange3.g.dart';
export 'src/com/iuiautomationtextrangearray.g.dart';
export 'src/com/iuiautomationtogglepattern.g.dart';
export 'src/com/iuiautomationtransformpattern.g.dart';
export 'src/com/iuiautomationtransformpattern2.g.dart';
export 'src/com/iuiautomationtreewalker.g.dart';
export 'src/com/iuiautomationvaluepattern.g.dart';
export 'src/com/iuiautomationvirtualizeditempattern.g.dart';
export 'src/com/iuiautomationwindowpattern.g.dart';
export 'src/com/iunknown.g.dart';
export 'src/com/iuri.g.dart';
export 'src/com/ivirtualdesktopmanager.g.dart';
export 'src/com/iwbemclassobject.g.dart';
export 'src/com/iwbemconfigurerefresher.g.dart';
export 'src/com/iwbemcontext.g.dart';
export 'src/com/iwbemhiperfenum.g.dart';
export 'src/com/iwbemlocator.g.dart';
export 'src/com/iwbemobjectaccess.g.dart';
export 'src/com/iwbemrefresher.g.dart';
export 'src/com/iwbemservices.g.dart';
export 'src/com/iwebauthenticationcoremanagerinterop.g.dart';
export 'src/com/iwinhttprequest.g.dart';
export 'src/constants.dart';
export 'src/constants_metadata.dart';
export 'src/constants_nodoc.dart';
export 'src/exceptions.dart';

// Useful extension methods
export 'src/extensions/dialogs.dart';
export 'src/extensions/int_to_hexstring.dart';
export 'src/extensions/iunknown.dart';
export 'src/extensions/list_to_blob.dart';
export 'src/extensions/set_ansi.dart';
export 'src/extensions/set_string.dart';
export 'src/extensions/set_string_array.dart';
export 'src/extensions/unpack_utf16.dart';

// Core Win32 APIs, constants and macros
export 'src/bstr.dart';
export 'src/callbacks.dart';
export 'src/dispatcher.dart';
export 'src/guid.dart';
export 'src/inline.dart';
export 'src/macros.dart';
export 'src/structs.g.dart'
    hide
        ADDRINFO,
        FD_SET,
        IN_ADDR,
        SOCKADDR,
        TIMEVAL,
        HOSTENT,
        PROTOENT,
        SERVENT;
export 'src/types.dart';
export 'src/utils.dart';

// Traditional C-style Windows APIs
export 'src/win32_v5/advapi32.g.dart';

// API sets are used to export recent C-style APIs
export 'src/win32_v5/api_ms_win_core_apiquery_l2_1_0.g.dart';
export 'src/win32_v5/api_ms_win_core_comm_l1_1_1.g.dart';
export 'src/win32_v5/api_ms_win_core_comm_l1_1_2.g.dart';
export 'src/win32_v5/api_ms_win_core_handle_l1_1_0.g.dart';
export 'src/win32_v5/api_ms_win_core_sysinfo_l1_2_3.g.dart';
export 'src/win32_v5/api_ms_win_core_winrt_error_l1_1_0.g.dart';
export 'src/win32_v5/api_ms_win_core_winrt_l1_1_0.g.dart';
export 'src/win32_v5/api_ms_win_core_winrt_string_l1_1_0.g.dart';
export 'src/win32_v5/api_ms_win_ro_typeresolution_l1_1_0.g.dart';
export 'src/win32_v5/api_ms_win_ro_typeresolution_l1_1_1.g.dart';
export 'src/win32_v5/api_ms_win_shcore_scaling_l1_1_1.g.dart';
export 'src/win32_v5/api_ms_win_wsl_api_l1_1_0.g.dart';
export 'src/win32_v5/bluetoothapis.g.dart';
export 'src/win32_v5/bthprops.g.dart';
export 'src/win32_v5/comctl32.g.dart';
export 'src/win32_v5/comdlg32.g.dart';
export 'src/win32_v5/crypt32.g.dart';
export 'src/win32_v5/dbghelp.g.dart';
export 'src/win32_v5/dwmapi.g.dart';
export 'src/win32_v5/dxva2.g.dart';
export 'src/win32_v5/gdi32.g.dart';
export 'src/win32_v5/iphlpapi.g.dart';
export 'src/win32_v5/kernel32.g.dart';
export 'src/win32_v5/magnification.g.dart';
export 'src/win32_v5/netapi32.g.dart';
export 'src/win32_v5/ntdll.g.dart';
export 'src/win32_v5/ole32.g.dart';
export 'src/win32_v5/oleaut32.g.dart';
export 'src/win32_v5/powrprof.g.dart';
export 'src/win32_v5/psapi.g.dart';
export 'src/win32_v5/rometadata.g.dart';
export 'src/win32_v5/scarddlg.g.dart';
export 'src/win32_v5/setupapi.g.dart';
export 'src/win32_v5/shell32.g.dart';
export 'src/win32_v5/shlwapi.g.dart';
export 'src/win32_v5/user32.g.dart';
export 'src/win32_v5/uxtheme.g.dart';
export 'src/win32_v5/version.g.dart';
export 'src/win32_v5/winmm.g.dart';
export 'src/win32_v5/winscard.g.dart';
export 'src/win32_v5/winspool.g.dart';
export 'src/win32_v5/wlanapi.g.dart';
export 'src/win32_v5/xinput1_4.g.dart';

// Windows Runtime helpers
export 'src/winrt_helpers.dart';
