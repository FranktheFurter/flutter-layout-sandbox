// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainstate.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainState on _MainStateBase, Store {
  late final _$isLayoutActiveAtom =
      Atom(name: '_MainStateBase.isLayoutActive', context: context);

  @override
  bool get isLayoutActive {
    _$isLayoutActiveAtom.reportRead();
    return super.isLayoutActive;
  }

  @override
  set isLayoutActive(bool value) {
    _$isLayoutActiveAtom.reportWrite(value, super.isLayoutActive, () {
      super.isLayoutActive = value;
    });
  }

  @override
  String toString() {
    return '''
isLayoutActive: ${isLayoutActive}
    ''';
  }
}
