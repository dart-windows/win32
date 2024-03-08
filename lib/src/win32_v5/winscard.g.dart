// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _winscard = DynamicLibrary.open('winscard.dll');

/// Returns an event handle when an event signals that the smart card resource
/// manager is started.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaccessstartedevent>.
///
/// {@category winscard}
int SCardAccessStartedEvent() => _SCardAccessStartedEvent();

final _SCardAccessStartedEvent =
    _winscard.lookupFunction<HANDLE Function(), int Function()>(
        'SCardAccessStartedEvent');

/// Adds a reader to a reader group.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaddreadertogroupw>.
///
/// {@category winscard}
int SCardAddReaderToGroup(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName) =>
    _SCardAddReaderToGroup(hContext, szReaderName, szGroupName);

final _SCardAddReaderToGroup = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName),
    int Function(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName)>('SCardAddReaderToGroupW');

/// Writes event messages to the Windows application log
/// Microsoft-Windows-SmartCard-Audit/Authentication.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaudit>.
///
/// {@category winscard}
int SCardAudit(int hContext, int dwEvent) => _SCardAudit(hContext, dwEvent);

final _SCardAudit = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Uint32 dwEvent),
    int Function(int hContext, int dwEvent)>('SCardAudit');

/// Starts a transaction.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardbegintransaction>.
///
/// {@category winscard}
int SCardBeginTransaction(int hCard) => _SCardBeginTransaction(hCard);

final _SCardBeginTransaction = _winscard.lookupFunction<
    Int32 Function(IntPtr hCard),
    int Function(int hCard)>('SCardBeginTransaction');

/// Terminates all outstanding actions within a specific resource manager
/// context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardcancel>.
///
/// {@category winscard}
int SCardCancel(int hContext) => _SCardCancel(hContext);

final _SCardCancel = _winscard.lookupFunction<Int32 Function(IntPtr hContext),
    int Function(int hContext)>('SCardCancel');

/// Establishes a connection (using a specific resource manager context) between
/// the calling application and a smart card contained by a specific reader.
///
/// If no card exists in the specified reader, an error is returned.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardconnectw>.
///
/// {@category winscard}
int SCardConnect(
        int hContext,
        Pointer<Utf16> szReader,
        int dwShareMode,
        int dwPreferredProtocols,
        Pointer<IntPtr> phCard,
        Pointer<Uint32> pdwActiveProtocol) =>
    _SCardConnect(hContext, szReader, dwShareMode, dwPreferredProtocols, phCard,
        pdwActiveProtocol);

final _SCardConnect = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<Utf16> szReader,
        Uint32 dwShareMode,
        Uint32 dwPreferredProtocols,
        Pointer<IntPtr> phCard,
        Pointer<Uint32> pdwActiveProtocol),
    int Function(
        int hContext,
        Pointer<Utf16> szReader,
        int dwShareMode,
        int dwPreferredProtocols,
        Pointer<IntPtr> phCard,
        Pointer<Uint32> pdwActiveProtocol)>('SCardConnectW');

/// Gives you direct control of the reader.
///
/// You can call it any time after a successful call to SCardConnect and before
/// a successful call to SCardDisconnect.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardcontrol>.
///
/// {@category winscard}
int SCardControl(
        int hCard,
        int dwControlCode,
        Pointer lpInBuffer,
        int cbInBufferSize,
        Pointer lpOutBuffer,
        int cbOutBufferSize,
        Pointer<Uint32> lpBytesReturned) =>
    _SCardControl(hCard, dwControlCode, lpInBuffer, cbInBufferSize, lpOutBuffer,
        cbOutBufferSize, lpBytesReturned);

final _SCardControl = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hCard,
        Uint32 dwControlCode,
        Pointer lpInBuffer,
        Uint32 cbInBufferSize,
        Pointer lpOutBuffer,
        Uint32 cbOutBufferSize,
        Pointer<Uint32> lpBytesReturned),
    int Function(
        int hCard,
        int dwControlCode,
        Pointer lpInBuffer,
        int cbInBufferSize,
        Pointer lpOutBuffer,
        int cbOutBufferSize,
        Pointer<Uint32> lpBytesReturned)>('SCardControl');

/// Terminates a connection previously opened between the calling application
/// and a smart card in the target reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scarddisconnect>.
///
/// {@category winscard}
int SCardDisconnect(int hCard, int dwDisposition) =>
    _SCardDisconnect(hCard, dwDisposition);

final _SCardDisconnect = _winscard.lookupFunction<
    Int32 Function(IntPtr hCard, Uint32 dwDisposition),
    int Function(int hCard, int dwDisposition)>('SCardDisconnect');

/// Completes a previously declared transaction, allowing other applications to
/// resume interactions with the card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardendtransaction>.
///
/// {@category winscard}
int SCardEndTransaction(int hCard, int dwDisposition) =>
    _SCardEndTransaction(hCard, dwDisposition);

final _SCardEndTransaction = _winscard.lookupFunction<
    Int32 Function(IntPtr hCard, Uint32 dwDisposition),
    int Function(int hCard, int dwDisposition)>('SCardEndTransaction');

/// Establishes the resource manager context (the scope) within which database
/// operations are performed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardestablishcontext>.
///
/// {@category winscard}
int SCardEstablishContext(int dwScope, Pointer<IntPtr> phContext) =>
    _SCardEstablishContext(dwScope, nullptr, nullptr, phContext);

final _SCardEstablishContext = _winscard.lookupFunction<
    Int32 Function(Uint32 dwScope, Pointer pvReserved1, Pointer pvReserved2,
        Pointer<IntPtr> phContext),
    int Function(int dwScope, Pointer pvReserved1, Pointer pvReserved2,
        Pointer<IntPtr> phContext)>('SCardEstablishContext');

/// Removes an introduced smart card from the smart card subsystem.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetcardtypew>.
///
/// {@category winscard}
int SCardForgetCardType(int hContext, Pointer<Utf16> szCardName) =>
    _SCardForgetCardType(hContext, szCardName);

final _SCardForgetCardType = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szCardName),
    int Function(
        int hContext, Pointer<Utf16> szCardName)>('SCardForgetCardTypeW');

/// Removes a previously introduced reader from control by the smart card
/// subsystem.
///
/// It is removed from the smart card database, including from any reader group
/// that it may have been added to.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetreaderw>.
///
/// {@category winscard}
int SCardForgetReader(int hContext, Pointer<Utf16> szReaderName) =>
    _SCardForgetReader(hContext, szReaderName);

final _SCardForgetReader = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName),
    int Function(
        int hContext, Pointer<Utf16> szReaderName)>('SCardForgetReaderW');

/// Removes a previously introduced smart card reader group from the smart card
/// subsystem.
///
/// Although this function automatically clears all readers from the group, it
/// does not affect the existence of the individual readers in the database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetreadergroupw>.
///
/// {@category winscard}
int SCardForgetReaderGroup(int hContext, Pointer<Utf16> szGroupName) =>
    _SCardForgetReaderGroup(hContext, szGroupName);

final _SCardForgetReaderGroup = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szGroupName),
    int Function(
        int hContext, Pointer<Utf16> szGroupName)>('SCardForgetReaderGroupW');

/// Releases memory that has been returned from the resource manager using the
/// SCARD_AUTOALLOCATE length designator.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardfreememory>.
///
/// {@category winscard}
int SCardFreeMemory(int hContext, Pointer pvMem) =>
    _SCardFreeMemory(hContext, pvMem);

final _SCardFreeMemory = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer pvMem),
    int Function(int hContext, Pointer pvMem)>('SCardFreeMemory');

/// Retrieves the current reader attributes for the given handle.
///
/// It does not affect the state of the reader, driver, or card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetattrib>.
///
/// {@category winscard}
int SCardGetAttrib(int hCard, int dwAttrId, Pointer<Uint8>? pbAttr,
        Pointer<Uint32> pcbAttrLen) =>
    _SCardGetAttrib(hCard, dwAttrId, pbAttr ?? nullptr, pcbAttrLen);

final _SCardGetAttrib = _winscard.lookupFunction<
    Int32 Function(IntPtr hCard, Uint32 dwAttrId, Pointer<Uint8> pbAttr,
        Pointer<Uint32> pcbAttrLen),
    int Function(int hCard, int dwAttrId, Pointer<Uint8> pbAttr,
        Pointer<Uint32> pcbAttrLen)>('SCardGetAttrib');

/// Returns the name of the module (dynamic link library) that contains the
/// provider for a given card name and provider type.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetcardtypeprovidernamew>.
///
/// {@category winscard}
int SCardGetCardTypeProviderName(
        int hContext,
        Pointer<Utf16> szCardName,
        int dwProviderId,
        Pointer<Utf16> szProvider,
        Pointer<Uint32> pcchProvider) =>
    _SCardGetCardTypeProviderName(
        hContext, szCardName, dwProviderId, szProvider, pcchProvider);

final _SCardGetCardTypeProviderName = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<Utf16> szCardName,
        Uint32 dwProviderId,
        Pointer<Utf16> szProvider,
        Pointer<Uint32> pcchProvider),
    int Function(
        int hContext,
        Pointer<Utf16> szCardName,
        int dwProviderId,
        Pointer<Utf16> szProvider,
        Pointer<Uint32> pcchProvider)>('SCardGetCardTypeProviderNameW');

/// Gets the device type identifier of the card reader for the given reader
/// name.
///
/// This function does not affect the state of the reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetdevicetypeidw>.
///
/// {@category winscard}
int SCardGetDeviceTypeId(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint32> pdwDeviceTypeId) =>
    _SCardGetDeviceTypeId(hContext, szReaderName, pdwDeviceTypeId);

final _SCardGetDeviceTypeId = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint32> pdwDeviceTypeId),
    int Function(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint32> pdwDeviceTypeId)>('SCardGetDeviceTypeIdW');

/// Returns the identifier (GUID) of the primary service provider for a given
/// card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetprovideridw>.
///
/// {@category winscard}
int SCardGetProviderId(
        int hContext, Pointer<Utf16> szCard, Pointer<GUID> pguidProviderId) =>
    _SCardGetProviderId(hContext, szCard, pguidProviderId);

final _SCardGetProviderId = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext, Pointer<Utf16> szCard, Pointer<GUID> pguidProviderId),
    int Function(int hContext, Pointer<Utf16> szCard,
        Pointer<GUID> pguidProviderId)>('SCardGetProviderIdW');

/// Gets the device instance identifier of the card reader for the given reader
/// name.
///
/// This function does not affect the state of the reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetreaderdeviceinstanceidw>.
///
/// {@category winscard}
int SCardGetReaderDeviceInstanceId(
        int hContext,
        Pointer<Utf16> szReaderName,
        Pointer<Utf16>? szDeviceInstanceId,
        Pointer<Uint32> pcchDeviceInstanceId) =>
    _SCardGetReaderDeviceInstanceId(hContext, szReaderName,
        szDeviceInstanceId ?? nullptr, pcchDeviceInstanceId);

final _SCardGetReaderDeviceInstanceId = _winscard.lookupFunction<
        Int32 Function(
            IntPtr hContext,
            Pointer<Utf16> szReaderName,
            Pointer<Utf16> szDeviceInstanceId,
            Pointer<Uint32> pcchDeviceInstanceId),
        int Function(
            int hContext,
            Pointer<Utf16> szReaderName,
            Pointer<Utf16> szDeviceInstanceId,
            Pointer<Uint32> pcchDeviceInstanceId)>(
    'SCardGetReaderDeviceInstanceIdW');

/// Gets an icon of the smart card reader for a given reader's name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetreadericonw>.
///
/// {@category winscard}
int SCardGetReaderIcon(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint8> pbIcon, Pointer<Uint32> pcbIcon) =>
    _SCardGetReaderIcon(hContext, szReaderName, pbIcon, pcbIcon);

final _SCardGetReaderIcon = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint8> pbIcon, Pointer<Uint32> pcbIcon),
    int Function(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Uint8> pbIcon, Pointer<Uint32> pcbIcon)>('SCardGetReaderIconW');

/// Blocks execution until the current availability of the cards in a specific
/// set of readers changes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetstatuschangew>.
///
/// {@category winscard}
int SCardGetStatusChange(int hContext, int dwTimeout,
        Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) =>
    _SCardGetStatusChange(hContext, dwTimeout, rgReaderStates, cReaders);

final _SCardGetStatusChange = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Uint32 dwTimeout,
        Pointer<SCARD_READERSTATE> rgReaderStates, Uint32 cReaders),
    int Function(
        int hContext,
        int dwTimeout,
        Pointer<SCARD_READERSTATE> rgReaderStates,
        int cReaders)>('SCardGetStatusChangeW');

/// Retrieves the number of transmit operations that have completed since the
/// specified card reader was inserted.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgettransmitcount>.
///
/// {@category winscard}
int SCardGetTransmitCount(int hCard, Pointer<Uint32> pcTransmitCount) =>
    _SCardGetTransmitCount(hCard, pcTransmitCount);

final _SCardGetTransmitCount = _winscard.lookupFunction<
    Int32 Function(IntPtr hCard, Pointer<Uint32> pcTransmitCount),
    int Function(
        int hCard, Pointer<Uint32> pcTransmitCount)>('SCardGetTransmitCount');

/// Introduces a smart card to the smart card subsystem (for the active user) by
/// adding it to the smart card database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducecardtypew>.
///
/// {@category winscard}
int SCardIntroduceCardType(
        int hContext,
        Pointer<Utf16> szCardName,
        Pointer<GUID>? pguidPrimaryProvider,
        Pointer<GUID>? rgguidInterfaces,
        int dwInterfaceCount,
        Pointer<Uint8> pbAtr,
        Pointer<Uint8> pbAtrMask,
        int cbAtrLen) =>
    _SCardIntroduceCardType(
        hContext,
        szCardName,
        pguidPrimaryProvider ?? nullptr,
        rgguidInterfaces ?? nullptr,
        dwInterfaceCount,
        pbAtr,
        pbAtrMask,
        cbAtrLen);

final _SCardIntroduceCardType = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<Utf16> szCardName,
        Pointer<GUID> pguidPrimaryProvider,
        Pointer<GUID> rgguidInterfaces,
        Uint32 dwInterfaceCount,
        Pointer<Uint8> pbAtr,
        Pointer<Uint8> pbAtrMask,
        Uint32 cbAtrLen),
    int Function(
        int hContext,
        Pointer<Utf16> szCardName,
        Pointer<GUID> pguidPrimaryProvider,
        Pointer<GUID> rgguidInterfaces,
        int dwInterfaceCount,
        Pointer<Uint8> pbAtr,
        Pointer<Uint8> pbAtrMask,
        int cbAtrLen)>('SCardIntroduceCardTypeW');

/// Introduces a new name for an existing smart card reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducereaderw>.
///
/// {@category winscard}
int SCardIntroduceReader(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szDeviceName) =>
    _SCardIntroduceReader(hContext, szReaderName, szDeviceName);

final _SCardIntroduceReader = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szDeviceName),
    int Function(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szDeviceName)>('SCardIntroduceReaderW');

/// Introduces a reader group to the smart card subsystem.
///
/// However, the reader group is not created until the group is specified when
/// adding a reader to the smart card database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducereadergroupw>.
///
/// {@category winscard}
int SCardIntroduceReaderGroup(int hContext, Pointer<Utf16> szGroupName) =>
    _SCardIntroduceReaderGroup(hContext, szGroupName);

final _SCardIntroduceReaderGroup = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szGroupName),
    int Function(int hContext,
        Pointer<Utf16> szGroupName)>('SCardIntroduceReaderGroupW');

/// Determines whether a smart card context handle is valid.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardisvalidcontext>.
///
/// {@category winscard}
int SCardIsValidContext(int hContext) => _SCardIsValidContext(hContext);

final _SCardIsValidContext = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext),
    int Function(int hContext)>('SCardIsValidContext');

/// Searches the smart card database and provides a list of named cards
/// previously introduced to the system by the user.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistcardsw>.
///
/// {@category winscard}
int SCardListCards(
        int hContext,
        Pointer<Uint8>? pbAtr,
        Pointer<GUID>? rgquidInterfaces,
        int cguidInterfaceCount,
        Pointer<Utf16>? mszCards,
        Pointer<Uint32> pcchCards) =>
    _SCardListCards(hContext, pbAtr ?? nullptr, rgquidInterfaces ?? nullptr,
        cguidInterfaceCount, mszCards ?? nullptr, pcchCards);

final _SCardListCards = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<Uint8> pbAtr,
        Pointer<GUID> rgquidInterfaces,
        Uint32 cguidInterfaceCount,
        Pointer<Utf16> mszCards,
        Pointer<Uint32> pcchCards),
    int Function(
        int hContext,
        Pointer<Uint8> pbAtr,
        Pointer<GUID> rgquidInterfaces,
        int cguidInterfaceCount,
        Pointer<Utf16> mszCards,
        Pointer<Uint32> pcchCards)>('SCardListCardsW');

/// Provides a list of interfaces supplied by a given card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistinterfacesw>.
///
/// {@category winscard}
int SCardListInterfaces(int hContext, Pointer<Utf16> szCard,
        Pointer<GUID> pguidInterfaces, Pointer<Uint32> pcguidInterfaces) =>
    _SCardListInterfaces(hContext, szCard, pguidInterfaces, pcguidInterfaces);

final _SCardListInterfaces = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szCard,
        Pointer<GUID> pguidInterfaces, Pointer<Uint32> pcguidInterfaces),
    int Function(
        int hContext,
        Pointer<Utf16> szCard,
        Pointer<GUID> pguidInterfaces,
        Pointer<Uint32> pcguidInterfaces)>('SCardListInterfacesW');

/// Provides the list of reader groups that have previously been introduced to
/// the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreadergroupsw>.
///
/// {@category winscard}
int SCardListReaderGroups(
        int hContext, Pointer<Utf16>? mszGroups, Pointer<Uint32> pcchGroups) =>
    _SCardListReaderGroups(hContext, mszGroups ?? nullptr, pcchGroups);

final _SCardListReaderGroups = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext, Pointer<Utf16> mszGroups, Pointer<Uint32> pcchGroups),
    int Function(int hContext, Pointer<Utf16> mszGroups,
        Pointer<Uint32> pcchGroups)>('SCardListReaderGroupsW');

/// Provides the list of readers within a set of named reader groups,
/// eliminating duplicates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreadersw>.
///
/// {@category winscard}
int SCardListReaders(int hContext, Pointer<Utf16>? mszGroups,
        Pointer<Utf16>? mszReaders, Pointer<Uint32> pcchReaders) =>
    _SCardListReaders(
        hContext, mszGroups ?? nullptr, mszReaders ?? nullptr, pcchReaders);

final _SCardListReaders = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> mszGroups,
        Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders),
    int Function(
        int hContext,
        Pointer<Utf16> mszGroups,
        Pointer<Utf16> mszReaders,
        Pointer<Uint32> pcchReaders)>('SCardListReadersW');

/// Gets the list of readers that have provided a device instance identifier.
///
/// This function does not affect the state of the reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreaderswithdeviceinstanceidw>.
///
/// {@category winscard}
int SCardListReadersWithDeviceInstanceId(
        int hContext,
        Pointer<Utf16> szDeviceInstanceId,
        Pointer<Utf16>? mszReaders,
        Pointer<Uint32> pcchReaders) =>
    _SCardListReadersWithDeviceInstanceId(
        hContext, szDeviceInstanceId, mszReaders ?? nullptr, pcchReaders);

final _SCardListReadersWithDeviceInstanceId = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szDeviceInstanceId,
        Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders),
    int Function(
        int hContext,
        Pointer<Utf16> szDeviceInstanceId,
        Pointer<Utf16> mszReaders,
        Pointer<Uint32> pcchReaders)>('SCardListReadersWithDeviceInstanceIdW');

/// Searches the readers listed in the rgReaderStates parameter for a card with
/// an ATR string that matches one of the card names specified in mszCards,
/// returning immediately with the result.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlocatecardsw>.
///
/// {@category winscard}
int SCardLocateCards(int hContext, Pointer<Utf16> mszCards,
        Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) =>
    _SCardLocateCards(hContext, mszCards, rgReaderStates, cReaders);

final _SCardLocateCards = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> mszCards,
        Pointer<SCARD_READERSTATE> rgReaderStates, Uint32 cReaders),
    int Function(
        int hContext,
        Pointer<Utf16> mszCards,
        Pointer<SCARD_READERSTATE> rgReaderStates,
        int cReaders)>('SCardLocateCardsW');

/// Searches the readers listed in the rgReaderStates parameter for a card with
/// a name that matches one of the card names contained in one of the
/// SCARD_ATRMASK structures specified by the rgAtrMasks parameter.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlocatecardsbyatrw>.
///
/// {@category winscard}
int SCardLocateCardsByATR(int hContext, Pointer<SCARD_ATRMASK> rgAtrMasks,
        int cAtrs, Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) =>
    _SCardLocateCardsByATR(
        hContext, rgAtrMasks, cAtrs, rgReaderStates, cReaders);

final _SCardLocateCardsByATR = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<SCARD_ATRMASK> rgAtrMasks,
        Uint32 cAtrs,
        Pointer<SCARD_READERSTATE> rgReaderStates,
        Uint32 cReaders),
    int Function(
        int hContext,
        Pointer<SCARD_ATRMASK> rgAtrMasks,
        int cAtrs,
        Pointer<SCARD_READERSTATE> rgReaderStates,
        int cReaders)>('SCardLocateCardsByATRW');

/// Retrieves the value portion of a name-value pair from the global cache
/// maintained by the Smart Card Resource Manager.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreadcachew>.
///
/// {@category winscard}
int SCardReadCache(
        int hContext,
        Pointer<GUID> cardIdentifier,
        int freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        Pointer<Uint32> dataLen) =>
    _SCardReadCache(
        hContext, cardIdentifier, freshnessCounter, lookupName, data, dataLen);

final _SCardReadCache = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<GUID> cardIdentifier,
        Uint32 freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        Pointer<Uint32> dataLen),
    int Function(
        int hContext,
        Pointer<GUID> cardIdentifier,
        int freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        Pointer<Uint32> dataLen)>('SCardReadCacheW');

/// Reestablishes an existing connection between the calling application and a
/// smart card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreconnect>.
///
/// {@category winscard}
int SCardReconnect(int hCard, int dwShareMode, int dwPreferredProtocols,
        int dwInitialization, Pointer<Uint32>? pdwActiveProtocol) =>
    _SCardReconnect(hCard, dwShareMode, dwPreferredProtocols, dwInitialization,
        pdwActiveProtocol ?? nullptr);

final _SCardReconnect = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hCard,
        Uint32 dwShareMode,
        Uint32 dwPreferredProtocols,
        Uint32 dwInitialization,
        Pointer<Uint32> pdwActiveProtocol),
    int Function(
        int hCard,
        int dwShareMode,
        int dwPreferredProtocols,
        int dwInitialization,
        Pointer<Uint32> pdwActiveProtocol)>('SCardReconnect');

/// Closes an established resource manager context, freeing any resources
/// allocated under that context, including SCARDHANDLE objects and memory
/// allocated using the SCARD_AUTOALLOCATE length designator.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreleasecontext>.
///
/// {@category winscard}
int SCardReleaseContext(int hContext) => _SCardReleaseContext(hContext);

final _SCardReleaseContext = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext),
    int Function(int hContext)>('SCardReleaseContext');

/// Decrements the reference count for a handle acquired by a previous call to
/// the SCardAccessStartedEvent function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreleasestartedevent>.
///
/// {@category winscard}
void SCardReleaseStartedEvent() => _SCardReleaseStartedEvent();

final _SCardReleaseStartedEvent =
    _winscard.lookupFunction<Void Function(), void Function()>(
        'SCardReleaseStartedEvent');

/// Removes a reader from an existing reader group.
///
/// This function has no effect on the reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardremovereaderfromgroupw>.
///
/// {@category winscard}
int SCardRemoveReaderFromGroup(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName) =>
    _SCardRemoveReaderFromGroup(hContext, szReaderName, szGroupName);

final _SCardRemoveReaderFromGroup = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName),
    int Function(int hContext, Pointer<Utf16> szReaderName,
        Pointer<Utf16> szGroupName)>('SCardRemoveReaderFromGroupW');

/// Sets the given reader attribute for the given handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardsetattrib>.
///
/// {@category winscard}
int SCardSetAttrib(
        int hCard, int dwAttrId, Pointer<Uint8> pbAttr, int cbAttrLen) =>
    _SCardSetAttrib(hCard, dwAttrId, pbAttr, cbAttrLen);

final _SCardSetAttrib = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hCard, Uint32 dwAttrId, Pointer<Uint8> pbAttr, Uint32 cbAttrLen),
    int Function(int hCard, int dwAttrId, Pointer<Uint8> pbAttr,
        int cbAttrLen)>('SCardSetAttrib');

/// Specifies the name of the module (dynamic link library) containing the
/// provider for a given card name and provider type.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardsetcardtypeprovidernamew>.
///
/// {@category winscard}
int SCardSetCardTypeProviderName(int hContext, Pointer<Utf16> szCardName,
        int dwProviderId, Pointer<Utf16> szProvider) =>
    _SCardSetCardTypeProviderName(
        hContext, szCardName, dwProviderId, szProvider);

final _SCardSetCardTypeProviderName = _winscard.lookupFunction<
    Int32 Function(IntPtr hContext, Pointer<Utf16> szCardName,
        Uint32 dwProviderId, Pointer<Utf16> szProvider),
    int Function(int hContext, Pointer<Utf16> szCardName, int dwProviderId,
        Pointer<Utf16> szProvider)>('SCardSetCardTypeProviderNameW');

/// Provides the current status of a smart card in a reader.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardstatusw>.
///
/// {@category winscard}
int SCardStatus(
        int hCard,
        Pointer<Utf16>? mszReaderNames,
        Pointer<Uint32>? pcchReaderLen,
        Pointer<Uint32>? pdwState,
        Pointer<Uint32>? pdwProtocol,
        Pointer<Uint8>? pbAtr,
        Pointer<Uint32>? pcbAtrLen) =>
    _SCardStatus(
        hCard,
        mszReaderNames ?? nullptr,
        pcchReaderLen ?? nullptr,
        pdwState ?? nullptr,
        pdwProtocol ?? nullptr,
        pbAtr ?? nullptr,
        pcbAtrLen ?? nullptr);

final _SCardStatus = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hCard,
        Pointer<Utf16> mszReaderNames,
        Pointer<Uint32> pcchReaderLen,
        Pointer<Uint32> pdwState,
        Pointer<Uint32> pdwProtocol,
        Pointer<Uint8> pbAtr,
        Pointer<Uint32> pcbAtrLen),
    int Function(
        int hCard,
        Pointer<Utf16> mszReaderNames,
        Pointer<Uint32> pcchReaderLen,
        Pointer<Uint32> pdwState,
        Pointer<Uint32> pdwProtocol,
        Pointer<Uint8> pbAtr,
        Pointer<Uint32> pcbAtrLen)>('SCardStatusW');

/// Sends a service request to the smart card and expects to receive data back
/// from the card.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardtransmit>.
///
/// {@category winscard}
int SCardTransmit(
        int hCard,
        Pointer<SCARD_IO_REQUEST> pioSendPci,
        Pointer<Uint8> pbSendBuffer,
        int cbSendLength,
        Pointer<SCARD_IO_REQUEST>? pioRecvPci,
        Pointer<Uint8> pbRecvBuffer,
        Pointer<Uint32> pcbRecvLength) =>
    _SCardTransmit(hCard, pioSendPci, pbSendBuffer, cbSendLength,
        pioRecvPci ?? nullptr, pbRecvBuffer, pcbRecvLength);

final _SCardTransmit = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hCard,
        Pointer<SCARD_IO_REQUEST> pioSendPci,
        Pointer<Uint8> pbSendBuffer,
        Uint32 cbSendLength,
        Pointer<SCARD_IO_REQUEST> pioRecvPci,
        Pointer<Uint8> pbRecvBuffer,
        Pointer<Uint32> pcbRecvLength),
    int Function(
        int hCard,
        Pointer<SCARD_IO_REQUEST> pioSendPci,
        Pointer<Uint8> pbSendBuffer,
        int cbSendLength,
        Pointer<SCARD_IO_REQUEST> pioRecvPci,
        Pointer<Uint8> pbRecvBuffer,
        Pointer<Uint32> pcbRecvLength)>('SCardTransmit');

/// Writes a name-value pair from a smart card to the global cache maintained by
/// the Smart Card Resource Manager.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardwritecachew>.
///
/// {@category winscard}
int SCardWriteCache(
        int hContext,
        Pointer<GUID> cardIdentifier,
        int freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        int dataLen) =>
    _SCardWriteCache(
        hContext, cardIdentifier, freshnessCounter, lookupName, data, dataLen);

final _SCardWriteCache = _winscard.lookupFunction<
    Int32 Function(
        IntPtr hContext,
        Pointer<GUID> cardIdentifier,
        Uint32 freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        Uint32 dataLen),
    int Function(
        int hContext,
        Pointer<GUID> cardIdentifier,
        int freshnessCounter,
        Pointer<Utf16> lookupName,
        Pointer<Uint8> data,
        int dataLen)>('SCardWriteCacheW');
