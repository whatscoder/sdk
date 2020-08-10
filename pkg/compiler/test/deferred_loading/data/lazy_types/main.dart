// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.7

import 'liba.dart' deferred as libA;
import 'libb.dart' deferred as libB;
import 'libc.dart' deferred as libC;

/*member: foo:OutputUnit(main, {}),constants=[FunctionConstant(callFooMethod)=OutputUnit(3, {libB}),FunctionConstant(createB2)=OutputUnit(6, {libC}),FunctionConstant(createC3)=OutputUnit(6, {libC}),FunctionConstant(createD3)=OutputUnit(6, {libC}),FunctionConstant(createDooFunFunFoo)=OutputUnit(6, {libC}),FunctionConstant(isDooFunFunFoo)=OutputUnit(3, {libB}),FunctionConstant(isFoo)=OutputUnit(3, {libB}),FunctionConstant(isFoo)=OutputUnit(5, {libA}),FunctionConstant(isFoo)=OutputUnit(6, {libC}),FunctionConstant(isFunFunFoo)=OutputUnit(3, {libB}),FunctionConstant(isFunFunFoo)=OutputUnit(5, {libA}),FunctionConstant(isFunFunFoo)=OutputUnit(6, {libC}),FunctionConstant(isMega)=OutputUnit(5, {libA})]*/
void foo() async {
  await libA.loadLibrary();
  await libB.loadLibrary();
  await libC.loadLibrary();
  print((libA.isFoo)(null as dynamic));
  print((libA.isFunFunFoo)(null as dynamic));
  print((libA.isFoo)(null as dynamic));
  print((libA.isMega)(null as dynamic));

  print((libB.isFoo)(null as dynamic));
  print((libB.callFooMethod)());
  print((libB.isFunFunFoo)(null as dynamic));
  print((libB.isDooFunFunFoo)(null as dynamic));

  print((libC.isFoo)(null as dynamic));
  print((libC.isFunFunFoo)(null as dynamic));
  print((libC.createB2)());
  print((libC.createC3)());
  print((libC.createD3)());
  print((libC.createDooFunFunFoo)());
}

/*member: main:OutputUnit(main, {})*/
main() {
  foo();
}
