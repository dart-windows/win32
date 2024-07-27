"use strict";(self.webpackChunkwebsite=self.webpackChunkwebsite||[]).push([[203],{3847:(e,n,t)=>{t.r(n),t.d(n,{assets:()=>l,contentTitle:()=>s,default:()=>h,frontMatter:()=>i,metadata:()=>a,toc:()=>c});var r=t(4848),o=t(8453);const i={title:"Memory Allocation"},s=void 0,a={id:"guides-concepts/memory-allocation",title:"Memory Allocation",description:"Dart is a garbage-collected language. When you create objects (e.g.,",source:"@site/docs/guides-concepts/memory-allocation.md",sourceDirName:"guides-concepts",slug:"/guides-concepts/memory-allocation",permalink:"/docs/guides-concepts/memory-allocation",draft:!1,unlisted:!1,editUrl:"https://github.com/halildurmus/win32/tree/main/website/docs/guides-concepts/memory-allocation.md",tags:[],version:"current",lastUpdatedBy:"Halil Durmus",lastUpdatedAt:1722074681e3,frontMatter:{title:"Memory Allocation"},sidebar:"mainSidebar",previous:{title:"Integer Types",permalink:"/docs/guides-concepts/integer-types"},next:{title:"Structs",permalink:"/docs/guides-concepts/structs"}},l={},c=[{value:"Allocating Memory with Dart",id:"allocating-memory-with-dart",level:2},{value:"Freeing Memory",id:"freeing-memory",level:2},{value:"Allocating Strings",id:"allocating-strings",level:2}];function d(e){const n={a:"a",admonition:"admonition",blockquote:"blockquote",code:"code",em:"em",h2:"h2",p:"p",pre:"pre",strong:"strong",...(0,o.R)(),...e.components},{Details:t}=n;return t||function(e,n){throw new Error("Expected "+(n?"component":"object")+" `"+e+"` to be defined: you likely forgot to import, pass, or provide it.")}("Details",!0),(0,r.jsxs)(r.Fragment,{children:[(0,r.jsxs)(n.p,{children:["Dart is a ",(0,r.jsx)(n.strong,{children:"garbage-collected"})," language. When you create objects (e.g.,\nallocating a string to a variable or instantiating a class), Dart is responsible\nfor ",(0,r.jsx)(n.strong,{children:"allocating"})," memory for them and ensuring that the memory used is\n",(0,r.jsx)(n.strong,{children:"freed"})," when those objects are no longer in use."]}),"\n",(0,r.jsxs)(n.p,{children:["However, when working with libraries through ",(0,r.jsx)(n.strong,{children:"FFI"}),", only primitive values\n(such as integers) can be passed directly to the native code being called. For\nother types, such as ",(0,r.jsx)(n.strong,{children:"strings"})," and ",(0,r.jsx)(n.strong,{children:"data structures"}),", you must ",(0,r.jsx)(n.strong,{children:"manage"}),"\nmemory allocation from the ",(0,r.jsx)(n.strong,{children:"heap"})," and ensure it is ",(0,r.jsx)(n.strong,{children:"freed"})," when no longer\nneeded."]}),"\n",(0,r.jsx)(n.h2,{id:"allocating-memory-with-dart",children:"Allocating Memory with Dart"}),"\n",(0,r.jsxs)(n.p,{children:["Allocating a block of memory for use with Windows in Dart can be easily achieved\nusing the ",(0,r.jsx)(n.a,{href:"https://pub.dev/documentation/ffi/latest/ffi/calloc-constant.html",children:(0,r.jsx)(n.code,{children:"calloc()"})})," function from the ",(0,r.jsx)(n.code,{children:"package:ffi"}),". This function\ncalls the underlying Windows API to ",(0,r.jsx)(n.strong,{children:"allocate"})," and ",(0,r.jsx)(n.strong,{children:"zero out"})," memory from\nthe heap."]}),"\n",(0,r.jsx)(n.p,{children:"Here's a simple example:"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-dart",children:"final pBuffer = calloc<Uint8>(256);\n"})}),"\n",(0,r.jsxs)(n.p,{children:["This snippet allocates ",(0,r.jsx)(n.strong,{children:"256 bytes"})," and returns a ",(0,r.jsx)(n.code,{children:"Pointer<Uint8>"})," object,\nwhich can be used to manage the memory. You can access the allocated memory\nusing ",(0,r.jsx)(n.code,{children:"pBuffer"})," with an indexed array operator."]}),"\n",(0,r.jsxs)(n.p,{children:["For instance, to fill the allocated memory with a repeated range of ",(0,r.jsx)(n.code,{children:"[0..7]"}),",\nyou can do the following:"]}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-dart",children:"for (var i = 0; i < 256; i++) {\n  pBuffer[i] = i % 8;\n}\n"})}),"\n",(0,r.jsxs)(n.p,{children:["This code will fill the allocated memory with the sequence\n",(0,r.jsx)(n.code,{children:"[0, 1, 2, 3, 4, 5, 6, 7]"})," repeated throughout the block."]}),"\n",(0,r.jsx)(n.admonition,{type:"danger",children:(0,r.jsxs)(n.p,{children:["Be careful to only ",(0,r.jsx)(n.strong,{children:"access memory"})," that you have ",(0,r.jsx)(n.strong,{children:"allocated"}),". Reading or\nwriting to ",(0,r.jsx)(n.strong,{children:"unallocated memory"})," can result in ",(0,r.jsx)(n.strong,{children:"non-deterministic behavior"}),",\nwhich may include ",(0,r.jsx)(n.strong,{children:"immediate crashes"})," of your application or even\n",(0,r.jsx)(n.strong,{children:"data corruption"}),"."]})}),"\n",(0,r.jsx)(n.h2,{id:"freeing-memory",children:"Freeing Memory"}),"\n",(0,r.jsxs)(n.p,{children:["When you have completed the operation for which the allocated memory was needed,\nyou should ",(0,r.jsx)(n.strong,{children:"release"})," it so that it can be reused. The ",(0,r.jsx)(n.code,{children:"dart:ffi"})," library\nprovides a ",(0,r.jsx)(n.a,{href:"https://api.dart.dev/stable/dart-ffi/Allocator/free.html",children:(0,r.jsx)(n.code,{children:"calloc.free()"})})," method. However, for convenience, the\n",(0,r.jsx)(n.strong,{children:"win32"})," provides a simple ",(0,r.jsx)(n.a,{href:"https://pub.dev/documentation/win32/latest/win32/free.html",children:(0,r.jsx)(n.code,{children:"free()"})})," global function, which you can use\nas follows:"]}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-dart",children:"free(pBuffer);\n"})}),"\n",(0,r.jsxs)(n.admonition,{type:"info",children:[(0,r.jsxs)(n.p,{children:["When your Dart program ",(0,r.jsx)(n.em,{children:"exits"}),", Windows will automatically free all allocated\n",(0,r.jsx)(n.strong,{children:"memory"})," that hasn't previously been released, but you shouldn't depend on\nthat."]}),(0,r.jsxs)(n.p,{children:["In the absence of any other ",(0,r.jsx)(n.strong,{children:"garbage collection"})," for ",(0,r.jsx)(n.strong,{children:"native memory"}),",\nlong-running applications that don't release ",(0,r.jsx)(n.em,{children:"manually-allocated"})," memory will\ngradually exhaust the available ",(0,r.jsx)(n.strong,{children:"heap space"}),' (this is known as "',(0,r.jsx)(n.strong,{children:"leaking"}),'"\nmemory).']})]}),"\n",(0,r.jsx)(n.h2,{id:"allocating-strings",children:"Allocating Strings"}),"\n",(0,r.jsxs)(n.p,{children:["Win32 APIs, as projected by Dart, typically assume a\n",(0,r.jsx)(n.strong,{children:"16-bit Unicode encoding"}),", where each character is represented by ",(0,r.jsx)(n.strong,{children:"2 bytes"}),".\nThe ",(0,r.jsx)(n.code,{children:"dart:ffi"})," library provides a convenient method\n",(0,r.jsx)(n.a,{href:"https://pub.dev/documentation/ffi/latest/ffi/StringUtf16Pointer/toNativeUtf16.html",children:(0,r.jsx)(n.code,{children:".toNativeUtf16()"})})," that copies a Dart string to\n",(0,r.jsx)(n.strong,{children:"native memory"}),", returning a ",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"})," object that can be passed to\nWin32 APIs."]}),"\n",(0,r.jsx)(n.p,{children:"Here's an example:"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-dart",children:"import 'dart:ffi';\n\nimport 'package:ffi/ffi.dart';\nimport 'package:win32/win32.dart';\n\nvoid main() {\n  // highlight-start\n  final verb = 'open'.toNativeUtf16();\n  final process = 'notepad.exe'.toNativeUtf16();\n  // highlight-end\n  ShellExecute(0, verb, process, nullptr, nullptr, SHOW_WINDOW_CMD.SW_SHOW);\n\n  // Do something...\n\n  free(verb);\n  free(process);\n}\n\n"})}),"\n",(0,r.jsxs)(n.p,{children:["In this example, ",(0,r.jsx)(n.code,{children:"verb"})," and ",(0,r.jsx)(n.code,{children:"process"})," are of type ",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"}),", representing\npointers to native memory. The allocated memory includes ",(0,r.jsx)(n.strong,{children:"2 bytes for each\ncharacter"})," in the Dart string, plus a final ",(0,r.jsx)(n.strong,{children:"null-terminating character"}),"\n(",(0,r.jsx)(n.code,{children:"\\x00"}),")."]}),"\n",(0,r.jsx)(n.admonition,{type:"note",children:(0,r.jsxs)(n.p,{children:["Behind the scenes, the ",(0,r.jsx)(n.code,{children:".toNativeUtf16()"})," method ",(0,r.jsx)(n.strong,{children:"allocates"})," memory using the\nsame underlying functions as the ",(0,r.jsx)(n.code,{children:"calloc()"})," method above, so you are still\nresponsible for ",(0,r.jsx)(n.strong,{children:"freeing"})," its memory."]})}),"\n",(0,r.jsxs)(n.p,{children:["If you need to create a new string, ",(0,r.jsx)(n.strong,{children:"win32"})," provides a straightforward\nfunction ",(0,r.jsx)(n.a,{href:"https://pub.dev/documentation/win32/latest/win32/wsalloc.html",children:(0,r.jsx)(n.code,{children:"wsalloc"})})," to ",(0,r.jsx)(n.strong,{children:"allocate"})," the necessary storage. This is\nespecially useful when you need to ",(0,r.jsx)(n.em,{children:"receive"})," a string from Windows."]}),"\n",(0,r.jsxs)(n.p,{children:["The following example calls the ",(0,r.jsx)(n.a,{href:"https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw",children:(0,r.jsx)(n.code,{children:"SHGetFolderPath"})})," API to\nretrieve the directory of the ",(0,r.jsx)(n.strong,{children:"Desktop"})," folder:"]}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-dart",metastring:'title="desktop.dart"',children:"import 'package:ffi/ffi.dart';\nimport 'package:win32/win32.dart';\n\nvoid main() {\n  // highlight-next-line\n  final path = wsalloc(MAX_PATH);\n\n  try {\n    final result = SHGetFolderPath(NULL, CSIDL_DESKTOP, NULL, 0, path);\n    if (SUCCEEDED(result)) {\n      print('The Windows desktop folder is at ${path.toDartString()}');\n    } else {\n      print('Failed to get the desktop folder path.');\n    }\n  } finally {\n    free(path);\n  }\n}\n"})}),"\n",(0,r.jsxs)(n.p,{children:["In the example above, the returned value is converted back to a Dart string\nusing the ",(0,r.jsx)(n.a,{href:"https://pub.dev/documentation/ffi/latest/ffi/Utf16Pointer/toDartString.html",children:(0,r.jsx)(n.code,{children:".toDartString()"})})," extension method on\n",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"}),"."]}),"\n",(0,r.jsxs)(t,{children:[(0,r.jsxs)("summary",{children:["Why doesn't calling ",(0,r.jsx)(n.code,{children:".toString()"})," on a ",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"})," work as\nexpected?"]}),(0,r.jsxs)(n.p,{children:["Since ",(0,r.jsx)(n.code,{children:"path"})," is a ",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"}),", calling ",(0,r.jsx)(n.code,{children:".toString()"})," on it will simply\nprint the ",(0,r.jsx)(n.strong,{children:"address"})," of the pointer, like this:"]}),(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-text",children:"Pointer: address=0x1729cc18240\n"})}),(0,r.jsxs)(n.p,{children:["To convert the ",(0,r.jsx)(n.code,{children:"Pointer<Utf16>"})," to a Dart string, you need to use the\n",(0,r.jsx)(n.code,{children:".toDartString()"})," extension method, as shown in the example above."]})]}),"\n",(0,r.jsxs)(n.blockquote,{children:["\n",(0,r.jsxs)(n.p,{children:["For a more detailed demonstration of calling various shell APIs to retrieve\nknown folder locations, see the ",(0,r.jsx)(n.a,{href:"https://github.com/halildurmus/win32/blob/main/examples/knownfolder.dart",children:(0,r.jsx)(n.code,{children:"knownfolder.dart"})})," example."]}),"\n"]})]})}function h(e={}){const{wrapper:n}={...(0,o.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},8453:(e,n,t)=>{t.d(n,{R:()=>s,x:()=>a});var r=t(6540);const o={},i=r.createContext(o);function s(e){const n=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:s(e.components),r.createElement(i.Provider,{value:n},e.children)}}}]);