"use strict";(self.webpackChunkwebsite=self.webpackChunkwebsite||[]).push([[96],{3573:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>d,default:()=>x,frontMatter:()=>r,metadata:()=>l,toc:()=>o});var s=n(4848),i=n(8453);const r={title:"Integer Types"},d=void 0,l={id:"guides-concepts/integer-types",title:"Integer Types",description:"Unlike Dart, which has a single integer type for storing values between",source:"@site/docs/guides-concepts/integer-types.md",sourceDirName:"guides-concepts",slug:"/guides-concepts/integer-types",permalink:"/docs/guides-concepts/integer-types",draft:!1,unlisted:!1,editUrl:"https://github.com/halildurmus/win32/tree/main/website/docs/guides-concepts/integer-types.md",tags:[],version:"current",lastUpdatedBy:"Halil Durmus",lastUpdatedAt:1722074681e3,frontMatter:{title:"Integer Types"},sidebar:"mainSidebar",previous:{title:"Functions",permalink:"/docs/guides-concepts/functions"},next:{title:"Memory Allocation",permalink:"/docs/guides-concepts/memory-allocation"}},c={},o=[];function h(e){const t={a:"a",admonition:"admonition",blockquote:"blockquote",code:"code",em:"em",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsxs)(t.p,{children:["Unlike Dart, which has a single integer type for storing values between\n",(0,s.jsxs)(t.strong,{children:["-2",(0,s.jsx)("sup",{children:"63"}),"-1"]})," and ",(0,s.jsxs)(t.strong,{children:["2",(0,s.jsx)("sup",{children:"63"})]}),", the Win32 API utilizes various\ninteger types in both ",(0,s.jsx)(t.strong,{children:"signed"})," and ",(0,s.jsx)(t.strong,{children:"unsigned"})," forms."]}),"\n",(0,s.jsx)(t.p,{children:"The following table lists the common integer types encountered when working with\nWin32 APIs:"}),"\n",(0,s.jsxs)(t.table,{children:[(0,s.jsx)(t.thead,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.th,{children:"Common Win32 Names"}),(0,s.jsxs)(t.th,{style:{textAlign:"center"},children:[(0,s.jsx)(t.code,{children:"dart:ffi"})," Type"]}),(0,s.jsx)(t.th,{style:{textAlign:"center"},children:"Size"}),(0,s.jsx)(t.th,{style:{textAlign:"center"},children:"Signed"}),(0,s.jsx)(t.th,{style:{textAlign:"right"},children:"Range"})]})}),(0,s.jsxs)(t.tbody,{children:[(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"BYTE"}),", ",(0,s.jsx)(t.code,{children:"UINT8"}),", ",(0,s.jsx)(t.code,{children:"CHAR"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Uint8"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"8 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"No"}),(0,s.jsx)(t.td,{style:{textAlign:"right"},children:"0 to 255"})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:(0,s.jsx)(t.code,{children:"INT8"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Int8"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"8 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"Yes"}),(0,s.jsx)(t.td,{style:{textAlign:"right"},children:"-127 to 128"})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"WORD"}),", ",(0,s.jsx)(t.code,{children:"ATOM"}),", ",(0,s.jsx)(t.code,{children:"UINT16"}),", ",(0,s.jsx)(t.code,{children:"USHORT"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Uint16"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"16 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"No"}),(0,s.jsx)(t.td,{style:{textAlign:"right"},children:"0 to 65535"})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"INT16"}),", ",(0,s.jsx)(t.code,{children:"SHORT"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Int16"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"16 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"Yes"}),(0,s.jsx)(t.td,{style:{textAlign:"right"},children:"-32767 to 32768"})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"DWORD"}),", ",(0,s.jsx)(t.code,{children:"UINT"}),", ",(0,s.jsx)(t.code,{children:"UINT32"}),", ",(0,s.jsx)(t.code,{children:"ULONG"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Uint32"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"32 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"No"}),(0,s.jsxs)(t.td,{style:{textAlign:"right"},children:["0 to 2",(0,s.jsx)("sup",{children:"32"})]})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"INT"}),", ",(0,s.jsx)(t.code,{children:"INT32"}),", ",(0,s.jsx)(t.code,{children:"LONG"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Int32"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"32 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"Yes"}),(0,s.jsxs)(t.td,{style:{textAlign:"right"},children:["-2",(0,s.jsx)("sup",{children:"31"}),"-1 to 2",(0,s.jsx)("sup",{children:"31"})]})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"DWORDLONG"}),", ",(0,s.jsx)(t.code,{children:"ULONGLONG"}),", ",(0,s.jsx)(t.code,{children:"UINT64"}),", ",(0,s.jsx)(t.code,{children:"ULONG64"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Uint64"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"64 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"No"}),(0,s.jsxs)(t.td,{style:{textAlign:"right"},children:["0 to 2",(0,s.jsx)("sup",{children:"64"})]})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"LONGLONG"}),", ",(0,s.jsx)(t.code,{children:"INT64"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"Int64"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"64 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"Yes"}),(0,s.jsxs)(t.td,{style:{textAlign:"right"},children:["-2",(0,s.jsx)("sup",{children:"63"}),"-1 to 2",(0,s.jsx)("sup",{children:"63"})]})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:[(0,s.jsx)(t.code,{children:"HANDLE"}),", ",(0,s.jsx)(t.code,{children:"LONG_PTR"}),", ",(0,s.jsx)(t.code,{children:"UINT_PTR"}),", ",(0,s.jsx)(t.code,{children:"ULONG_PTR"})]}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:(0,s.jsx)(t.code,{children:"IntPtr"})}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"32/64 bits"}),(0,s.jsx)(t.td,{style:{textAlign:"center"},children:"No"}),(0,s.jsx)(t.td,{style:{textAlign:"right"},children:"Matches pointer length"})]})]})]}),"\n",(0,s.jsxs)(t.p,{children:["When calling a function and passing a value, you don't need to worry about\nconverting from a Dart ",(0,s.jsx)(t.code,{children:"int"})," type to the appropriate native representation:\n",(0,s.jsx)(t.strong,{children:"win32"})," includes all the metadata to handle this conversion for you."]}),"\n",(0,s.jsx)(t.admonition,{type:"note",children:(0,s.jsxs)(t.p,{children:["However, understanding the type of data becomes crucial when a function\n",(0,s.jsx)(t.em,{children:"returns"})," a value. In Win32, functions often use a ",(0,s.jsx)(t.a,{href:"https://api.dart.dev/stable/dart-ffi/Pointer-class.html",children:(0,s.jsx)(t.code,{children:"Pointer"})})," argument\nthat they fill with the relevant data, making it important to know the expected\ndata type."]})}),"\n",(0,s.jsxs)(t.blockquote,{children:["\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"win32"})," provides ",(0,s.jsx)(t.a,{href:"https://dart.dev/language/typedefs",children:(0,s.jsx)(t.code,{children:"typedefs"})})," for all common Win32 integer types,\nso you don't need to remember the size and sign of types like ",(0,s.jsx)(t.code,{children:"DWORD"}),"."]}),"\n"]}),"\n",(0,s.jsxs)(t.p,{children:["Here\u2019s an example demonstrating how to retrieve the size of system memory using\n",(0,s.jsx)(t.strong,{children:"win32"}),":"]}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-dart",metastring:'title="memory.dart"',children:"import 'dart:ffi';\n\nimport 'package:ffi/ffi.dart';\nimport 'package:win32/win32.dart';\n\nvoid main() {\n  final lpMemorySize = calloc<ULONGLONG>();\n  GetPhysicallyInstalledSystemMemory(lpMemorySize);\n  final memorySizeMB = lpMemorySize.value ~/ 1024;\n  print('System has ${memorySizeMB}MB of RAM installed.');\n  free(lpMemorySize);\n}\n"})}),"\n",(0,s.jsx)(t.admonition,{type:"simple",children:(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.code,{children:"lpMemorySize"})," could also be allocated as ",(0,s.jsx)(t.code,{children:"calloc<ULONG64>()"})," or\n",(0,s.jsx)(t.code,{children:"calloc<Uint64>()"})," \u2014 they all refer to the ",(0,s.jsx)(t.em,{children:"same"})," type."]})}),"\n",(0,s.jsxs)(t.blockquote,{children:["\n",(0,s.jsxs)(t.p,{children:["For a more detailed demonstration of retrieving system information, see the\n",(0,s.jsx)(t.a,{href:"https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart",children:(0,s.jsx)(t.code,{children:"sysinfo.dart"})})," example."]}),"\n"]})]})}function x(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(h,{...e})}):h(e)}},8453:(e,t,n)=>{n.d(t,{R:()=>d,x:()=>l});var s=n(6540);const i={},r=s.createContext(i);function d(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:d(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);