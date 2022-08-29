// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ideas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IdeasRecord> _$ideasRecordSerializer = new _$IdeasRecordSerializer();

class _$IdeasRecordSerializer implements StructuredSerializer<IdeasRecord> {
  @override
  final Iterable<Type> types = const [IdeasRecord, _$IdeasRecord];
  @override
  final String wireName = 'IdeasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, IdeasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ideasPara;
    if (value != null) {
      result
        ..add('ideas_para')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ideaCreation;
    if (value != null) {
      result
        ..add('idea_creation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ideasTitle;
    if (value != null) {
      result
        ..add('ideas_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  IdeasRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IdeasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ideas_para':
          result.ideasPara = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idea_creation':
          result.ideaCreation = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ideas_title':
          result.ideasTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$IdeasRecord extends IdeasRecord {
  @override
  final String ideasPara;
  @override
  final DateTime ideaCreation;
  @override
  final String ideasTitle;
  @override
  final DocumentReference<Object> reference;

  factory _$IdeasRecord([void Function(IdeasRecordBuilder) updates]) =>
      (new IdeasRecordBuilder()..update(updates)).build();

  _$IdeasRecord._(
      {this.ideasPara, this.ideaCreation, this.ideasTitle, this.reference})
      : super._();

  @override
  IdeasRecord rebuild(void Function(IdeasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdeasRecordBuilder toBuilder() => new IdeasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdeasRecord &&
        ideasPara == other.ideasPara &&
        ideaCreation == other.ideaCreation &&
        ideasTitle == other.ideasTitle &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ideasPara.hashCode), ideaCreation.hashCode),
            ideasTitle.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdeasRecord')
          ..add('ideasPara', ideasPara)
          ..add('ideaCreation', ideaCreation)
          ..add('ideasTitle', ideasTitle)
          ..add('reference', reference))
        .toString();
  }
}

class IdeasRecordBuilder implements Builder<IdeasRecord, IdeasRecordBuilder> {
  _$IdeasRecord _$v;

  String _ideasPara;
  String get ideasPara => _$this._ideasPara;
  set ideasPara(String ideasPara) => _$this._ideasPara = ideasPara;

  DateTime _ideaCreation;
  DateTime get ideaCreation => _$this._ideaCreation;
  set ideaCreation(DateTime ideaCreation) =>
      _$this._ideaCreation = ideaCreation;

  String _ideasTitle;
  String get ideasTitle => _$this._ideasTitle;
  set ideasTitle(String ideasTitle) => _$this._ideasTitle = ideasTitle;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IdeasRecordBuilder() {
    IdeasRecord._initializeBuilder(this);
  }

  IdeasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ideasPara = $v.ideasPara;
      _ideaCreation = $v.ideaCreation;
      _ideasTitle = $v.ideasTitle;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdeasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdeasRecord;
  }

  @override
  void update(void Function(IdeasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdeasRecord build() {
    final _$result = _$v ??
        new _$IdeasRecord._(
            ideasPara: ideasPara,
            ideaCreation: ideaCreation,
            ideasTitle: ideasTitle,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
