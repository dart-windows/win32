"use strict";(self.webpackChunkwebsite=self.webpackChunkwebsite||[]).push([[4324],{5500:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>a,default:()=>p,frontMatter:()=>s,metadata:()=>o,toc:()=>c});var i=n(4848),r=n(8453);const s={title:"Quick Start"},a=void 0,o={id:"getting-started/quick-start",title:"Quick Start",description:"\ud83e\udde9 Calling Native Libraries with FFI",source:"@site/docs/getting-started/quick-start.md",sourceDirName:"getting-started",slug:"/getting-started/quick-start",permalink:"/docs/getting-started/quick-start",draft:!1,unlisted:!1,editUrl:"https://github.com/halildurmus/win32/tree/main/website/docs/getting-started/quick-start.md",tags:[],version:"current",lastUpdatedBy:"Halil Durmus",lastUpdatedAt:1722077956e3,frontMatter:{title:"Quick Start"},sidebar:"mainSidebar",previous:{title:"Overview",permalink:"/docs/"},next:{title:"Functions",permalink:"/docs/guides-concepts/functions"}},l={},c=[{value:"\ud83e\udde9 Calling Native Libraries with FFI",id:"-calling-native-libraries-with-ffi",level:2},{value:"\ud83d\ude80 Calling Your First Win32 API",id:"-calling-your-first-win32-api",level:2},{value:"\ud83d\udcda Next Steps",id:"-next-steps",level:2}];function d(e){const t={a:"a",code:"code",h2:"h2",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components},{InstallPackagesCommand:n}=t;return n||function(e,t){throw new Error("Expected "+(t?"component":"object")+" `"+e+"` to be defined: you likely forgot to import, pass, or provide it.")}("InstallPackagesCommand",!0),(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.h2,{id:"-calling-native-libraries-with-ffi",children:"\ud83e\udde9 Calling Native Libraries with FFI"}),"\n",(0,i.jsxs)(t.p,{children:["The ",(0,i.jsx)(t.strong,{children:"Windows API"})," was originally written with ",(0,i.jsx)(t.strong,{children:"C"})," developers in mind. As a\nresult, many of the conventions are designed around the characteristics and\ncapabilities of the C runtime. Fortunately, the wide popularity of C means that\nmany languages, including Dart, have good support for calling C code and\nhandling C coding conventions."]}),"\n",(0,i.jsxs)(t.p,{children:["In Dart, the primary means for calling C code is through ",(0,i.jsx)(t.strong,{children:"FFI"}),"\n(Foreign Function Interface). Dart provides both a library,\n",(0,i.jsx)(t.a,{href:"https://api.dart.dev/stable/dart-ffi/dart-ffi-library.html",children:(0,i.jsx)(t.code,{children:"dart:ffi"})}),", and a package, ",(0,i.jsx)(t.a,{href:"https://pub.dev/packages/ffi",children:(0,i.jsx)(t.code,{children:"package:ffi"})}),", which\ntogether offer useful ",(0,i.jsx)(t.strong,{children:"low-level"})," functions and helpers."]}),"\n",(0,i.jsxs)(t.p,{children:["To add ",(0,i.jsx)(t.strong,{children:"ffi"})," and ",(0,i.jsx)(t.strong,{children:"win32"})," packages to your project, use the appropriate\ncommand below based on your project type (",(0,i.jsx)(t.strong,{children:"Flutter"})," or ",(0,i.jsx)(t.strong,{children:"Dart-only"}),"):"]}),"\n",(0,i.jsx)(n,{args:"ffi win32"}),"\n",(0,i.jsxs)(t.p,{children:["To utilize ",(0,i.jsx)(t.strong,{children:"FFI"})," features, you typically import both the library and the\npackage, along with the ",(0,i.jsx)(t.strong,{children:"win32"})," package, as follows:"]}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-dart",children:"import 'dart:ffi';\n\nimport 'package:ffi/ffi.dart';\nimport 'package:win32/win32.dart';\n"})}),"\n",(0,i.jsx)(t.h2,{id:"-calling-your-first-win32-api",children:"\ud83d\ude80 Calling Your First Win32 API"}),"\n",(0,i.jsxs)(t.p,{children:["Here's a simple example of how to call the ",(0,i.jsx)(t.a,{href:"https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep",children:(0,i.jsx)(t.code,{children:"Beep"})})," function to play an\nA",(0,i.jsx)("sub",{children:"4"})," note for \xbd second:"]}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-dart",metastring:'title="beep.dart"',children:"import 'package:win32/win32.dart';\n\nvoid main() {\n  Beep(440 /* Hz */, 500 /* ms */);\n}\n"})}),"\n",(0,i.jsx)(t.h2,{id:"-next-steps",children:"\ud83d\udcda Next Steps"}),"\n",(0,i.jsxs)(t.p,{children:["\ud83d\udd0d Explore ",(0,i.jsx)(t.a,{href:"https://win32.pub/examples",children:"real-life examples"})," built using ",(0,i.jsx)(t.strong,{children:"win32"})," to see what you can\nachieve."]}),"\n",(0,i.jsxs)(t.p,{children:["\ud83d\udce6 Discover ",(0,i.jsx)(t.a,{href:"/packages",children:"packages"})," built on top of ",(0,i.jsx)(t.strong,{children:"win32"})," to find the ones\nthat best suit your needs."]}),"\n",(0,i.jsxs)(t.p,{children:["\ud83d\udcd8 Dive into the ",(0,i.jsx)(t.a,{href:"/docs/guides-concepts/functions",children:"Functions"})," guide to deepen your understanding of Win32\nfunctions."]})]})}function p(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(d,{...e})}):d(e)}},8453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>o});var i=n(6540);const r={},s=i.createContext(r);function a(e){const t=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),i.createElement(s.Provider,{value:t},e.children)}}}]);