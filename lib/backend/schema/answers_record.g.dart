// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnswersRecord> _$answersRecordSerializer =
    new _$AnswersRecordSerializer();

class _$AnswersRecordSerializer implements StructuredSerializer<AnswersRecord> {
  @override
  final Iterable<Type> types = const [AnswersRecord, _$AnswersRecord];
  @override
  final String wireName = 'AnswersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AnswersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.answerText;
    if (value != null) {
      result
        ..add('answer_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answerTime;
    if (value != null) {
      result
        ..add('answer_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  AnswersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'answer_text':
          result.answerText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer_time':
          result.answerTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$AnswersRecord extends AnswersRecord {
  @override
  final String answerText;
  @override
  final DateTime answerTime;
  @override
  final DocumentReference<Object> reference;

  factory _$AnswersRecord([void Function(AnswersRecordBuilder) updates]) =>
      (new AnswersRecordBuilder()..update(updates)).build();

  _$AnswersRecord._({this.answerText, this.answerTime, this.reference})
      : super._();

  @override
  AnswersRecord rebuild(void Function(AnswersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswersRecordBuilder toBuilder() => new AnswersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswersRecord &&
        answerText == other.answerText &&
        answerTime == other.answerTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, answerText.hashCode), answerTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnswersRecord')
          ..add('answerText', answerText)
          ..add('answerTime', answerTime)
          ..add('reference', reference))
        .toString();
  }
}

class AnswersRecordBuilder
    implements Builder<AnswersRecord, AnswersRecordBuilder> {
  _$AnswersRecord _$v;

  String _answerText;
  String get answerText => _$this._answerText;
  set answerText(String answerText) => _$this._answerText = answerText;

  DateTime _answerTime;
  DateTime get answerTime => _$this._answerTime;
  set answerTime(DateTime answerTime) => _$this._answerTime = answerTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnswersRecordBuilder() {
    AnswersRecord._initializeBuilder(this);
  }

  AnswersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answerText = $v.answerText;
      _answerTime = $v.answerTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswersRecord;
  }

  @override
  void update(void Function(AnswersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnswersRecord build() {
    final _$result = _$v ??
        new _$AnswersRecord._(
            answerText: answerText,
            answerTime: answerTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
