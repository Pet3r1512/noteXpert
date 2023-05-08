library prisma.client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;

part 'prisma_client.g.dart';

enum NoteScalarFieldEnum implements _i1.PrismaEnum {
  id,
  title,
  content;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  password,
  name;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.name,
    this.note,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? username;

  final StringFilter? password;

  final StringFilter? name;

  final NoteListRelationFilter? note;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.note,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final NoteOrderByRelationAggregateInput? note;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({this.id});

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.name,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? password;

  final StringWithAggregatesFilter? name;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class NoteWhereInput implements _i1.JsonSerializable {
  const NoteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.user,
  });

  factory NoteWhereInput.fromJson(Map<String, dynamic> json) =>
      _$NoteWhereInputFromJson(json);

  final Iterable<NoteWhereInput>? AND;

  final Iterable<NoteWhereInput>? OR;

  final Iterable<NoteWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  final StringFilter? content;

  @JsonKey(name: r'User')
  final UserRelationFilter? user;

  @override
  Map<String, dynamic> toJson() => _$NoteWhereInputToJson(this);
}

@_i1.jsonSerializable
class NoteOrderByWithRelationInput implements _i1.JsonSerializable {
  const NoteOrderByWithRelationInput({
    this.id,
    this.title,
    this.content,
    this.user,
  });

  factory NoteOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$NoteOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  @JsonKey(name: r'User')
  final UserOrderByWithRelationInput? user;

  @override
  Map<String, dynamic> toJson() => _$NoteOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class NoteWhereUniqueInput implements _i1.JsonSerializable {
  const NoteWhereUniqueInput({this.id});

  factory NoteWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$NoteWhereUniqueInputFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() => _$NoteWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class NoteOrderByWithAggregationInput implements _i1.JsonSerializable {
  const NoteOrderByWithAggregationInput({
    this.id,
    this.title,
    this.content,
    this.$count,
    this.$max,
    this.$min,
  });

  factory NoteOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$NoteOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  @JsonKey(name: r'_count')
  final NoteCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final NoteMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final NoteMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class NoteScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const NoteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
  });

  factory NoteScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<NoteScalarWhereWithAggregatesInput>? AND;

  final Iterable<NoteScalarWhereWithAggregatesInput>? OR;

  final Iterable<NoteScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? title;

  final StringWithAggregatesFilter? content;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.id,
    required this.username,
    required this.password,
    required this.name,
    this.note,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String? id;

  final String username;

  final String password;

  final String name;

  final NoteCreateNestedManyWithoutUserInput? note;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.username,
    required this.password,
    required this.name,
    this.note,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final String? id;

  final String username;

  final String password;

  final String name;

  final NoteUncheckedCreateNestedManyWithoutUserInput? note;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.username,
    this.password,
    this.name,
    this.note,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final NoteUpdateManyWithoutUserNestedInput? note;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.username,
    this.password,
    this.name,
    this.note,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final NoteUncheckedUpdateManyWithoutUserNestedInput? note;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.username,
    required this.password,
    required this.name,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final String? id;

  final String username;

  final String password;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.username,
    this.password,
    this.name,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.username,
    this.password,
    this.name,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateInput implements _i1.JsonSerializable {
  const NoteCreateInput({
    required this.title,
    required this.content,
    this.user,
  });

  factory NoteCreateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteCreateInputFromJson(json);

  final String title;

  final String content;

  @JsonKey(name: r'User')
  final UserCreateNestedOneWithoutNoteInput? user;

  @override
  Map<String, dynamic> toJson() => _$NoteCreateInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedCreateInput implements _i1.JsonSerializable {
  const NoteUncheckedCreateInput({
    this.id,
    required this.title,
    required this.content,
  });

  factory NoteUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUncheckedCreateInputFromJson(json);

  final String? id;

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() => _$NoteUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateInput implements _i1.JsonSerializable {
  const NoteUpdateInput({
    this.title,
    this.content,
    this.user,
  });

  factory NoteUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @JsonKey(name: r'User')
  final UserUpdateOneWithoutNoteNestedInput? user;

  @override
  Map<String, dynamic> toJson() => _$NoteUpdateInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedUpdateInput implements _i1.JsonSerializable {
  const NoteUncheckedUpdateInput({
    this.title,
    this.content,
  });

  factory NoteUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() => _$NoteUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateManyInput implements _i1.JsonSerializable {
  const NoteCreateManyInput({
    this.id,
    required this.title,
    required this.content,
  });

  factory NoteCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$NoteCreateManyInputFromJson(json);

  final String? id;

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() => _$NoteCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateManyMutationInput implements _i1.JsonSerializable {
  const NoteUpdateManyMutationInput({
    this.title,
    this.content,
  });

  factory NoteUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() => _$NoteUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const NoteUncheckedUpdateManyInput({
    this.title,
    this.content,
  });

  factory NoteUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() => _$NoteUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class NoteListRelationFilter implements _i1.JsonSerializable {
  const NoteListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory NoteListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$NoteListRelationFilterFromJson(json);

  final NoteWhereInput? every;

  final NoteWhereInput? some;

  final NoteWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$NoteListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class NoteOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const NoteOrderByRelationAggregateInput({this.$count});

  factory NoteOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class UserRelationFilter implements _i1.JsonSerializable {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UserWhereInput? $is;

  final UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@_i1.jsonSerializable
class NoteCountOrderByAggregateInput implements _i1.JsonSerializable {
  const NoteCountOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
  });

  factory NoteCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  @override
  Map<String, dynamic> toJson() => _$NoteCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class NoteMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const NoteMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
  });

  factory NoteMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  @override
  Map<String, dynamic> toJson() => _$NoteMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class NoteMinOrderByAggregateInput implements _i1.JsonSerializable {
  const NoteMinOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
  });

  factory NoteMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$NoteMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  @override
  Map<String, dynamic> toJson() => _$NoteMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateNestedManyWithoutUserInput implements _i1.JsonSerializable {
  const NoteCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory NoteCreateNestedManyWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteCreateNestedManyWithoutUserInputFromJson(json);

  final Iterable<NoteCreateWithoutUserInput>? create;

  final Iterable<NoteCreateOrConnectWithoutUserInput>? connectOrCreate;

  final NoteCreateManyUserInputEnvelope? createMany;

  final Iterable<NoteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteCreateNestedManyWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonSerializable {
  const NoteUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory NoteUncheckedCreateNestedManyWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUncheckedCreateNestedManyWithoutUserInputFromJson(json);

  final Iterable<NoteCreateWithoutUserInput>? create;

  final Iterable<NoteCreateOrConnectWithoutUserInput>? connectOrCreate;

  final NoteCreateManyUserInputEnvelope? createMany;

  final Iterable<NoteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUncheckedCreateNestedManyWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateManyWithoutUserNestedInput implements _i1.JsonSerializable {
  const NoteUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory NoteUpdateManyWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUpdateManyWithoutUserNestedInputFromJson(json);

  final Iterable<NoteCreateWithoutUserInput>? create;

  final Iterable<NoteCreateOrConnectWithoutUserInput>? connectOrCreate;

  final Iterable<NoteUpsertWithWhereUniqueWithoutUserInput>? upsert;

  final NoteCreateManyUserInputEnvelope? createMany;

  final Iterable<NoteWhereUniqueInput>? set;

  final Iterable<NoteWhereUniqueInput>? disconnect;

  final Iterable<NoteWhereUniqueInput>? delete;

  final Iterable<NoteWhereUniqueInput>? connect;

  final Iterable<NoteUpdateWithWhereUniqueWithoutUserInput>? update;

  final Iterable<NoteUpdateManyWithWhereWithoutUserInput>? updateMany;

  final Iterable<NoteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUpdateManyWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonSerializable {
  const NoteUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory NoteUncheckedUpdateManyWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUncheckedUpdateManyWithoutUserNestedInputFromJson(json);

  final Iterable<NoteCreateWithoutUserInput>? create;

  final Iterable<NoteCreateOrConnectWithoutUserInput>? connectOrCreate;

  final Iterable<NoteUpsertWithWhereUniqueWithoutUserInput>? upsert;

  final NoteCreateManyUserInputEnvelope? createMany;

  final Iterable<NoteWhereUniqueInput>? set;

  final Iterable<NoteWhereUniqueInput>? disconnect;

  final Iterable<NoteWhereUniqueInput>? delete;

  final Iterable<NoteWhereUniqueInput>? connect;

  final Iterable<NoteUpdateWithWhereUniqueWithoutUserInput>? update;

  final Iterable<NoteUpdateManyWithWhereWithoutUserInput>? updateMany;

  final Iterable<NoteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUncheckedUpdateManyWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutNoteInput implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutNoteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutNoteInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutNoteInputFromJson(json);

  final UserCreateWithoutNoteInput? create;

  final UserCreateOrConnectWithoutNoteInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneWithoutNoteNestedInput implements _i1.JsonSerializable {
  const UserUpdateOneWithoutNoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory UserUpdateOneWithoutNoteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneWithoutNoteNestedInputFromJson(json);

  final UserCreateWithoutNoteInput? create;

  final UserCreateOrConnectWithoutNoteInput? connectOrCreate;

  final UserUpsertWithoutNoteInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final UserWhereUniqueInput? connect;

  final UserUpdateWithoutNoteInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneWithoutNoteNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NoteCreateWithoutUserInput implements _i1.JsonSerializable {
  const NoteCreateWithoutUserInput({
    required this.title,
    required this.content,
  });

  factory NoteCreateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$NoteCreateWithoutUserInputFromJson(json);

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() => _$NoteCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedCreateWithoutUserInput implements _i1.JsonSerializable {
  const NoteUncheckedCreateWithoutUserInput({
    required this.title,
    required this.content,
  });

  factory NoteUncheckedCreateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUncheckedCreateWithoutUserInputFromJson(json);

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUncheckedCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateOrConnectWithoutUserInput implements _i1.JsonSerializable {
  const NoteCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  factory NoteCreateOrConnectWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteCreateOrConnectWithoutUserInputFromJson(json);

  final NoteWhereUniqueInput where;

  final NoteCreateWithoutUserInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteCreateOrConnectWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateManyUserInputEnvelope implements _i1.JsonSerializable {
  const NoteCreateManyUserInputEnvelope({required this.data});

  factory NoteCreateManyUserInputEnvelope.fromJson(Map<String, dynamic> json) =>
      _$NoteCreateManyUserInputEnvelopeFromJson(json);

  final Iterable<NoteCreateManyUserInput> data;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteCreateManyUserInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class NoteUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonSerializable {
  const NoteUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory NoteUpsertWithWhereUniqueWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUpsertWithWhereUniqueWithoutUserInputFromJson(json);

  final NoteWhereUniqueInput where;

  final NoteUpdateWithoutUserInput update;

  final NoteCreateWithoutUserInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUpsertWithWhereUniqueWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonSerializable {
  const NoteUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  factory NoteUpdateWithWhereUniqueWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUpdateWithWhereUniqueWithoutUserInputFromJson(json);

  final NoteWhereUniqueInput where;

  final NoteUpdateWithoutUserInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUpdateWithWhereUniqueWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateManyWithWhereWithoutUserInput implements _i1.JsonSerializable {
  const NoteUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  factory NoteUpdateManyWithWhereWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUpdateManyWithWhereWithoutUserInputFromJson(json);

  final NoteScalarWhereInput where;

  final NoteUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUpdateManyWithWhereWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteScalarWhereInput implements _i1.JsonSerializable {
  const NoteScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
  });

  factory NoteScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$NoteScalarWhereInputFromJson(json);

  final Iterable<NoteScalarWhereInput>? AND;

  final Iterable<NoteScalarWhereInput>? OR;

  final Iterable<NoteScalarWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  final StringFilter? content;

  @override
  Map<String, dynamic> toJson() => _$NoteScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutNoteInput implements _i1.JsonSerializable {
  const UserCreateWithoutNoteInput({
    this.id,
    required this.username,
    required this.password,
    required this.name,
  });

  factory UserCreateWithoutNoteInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutNoteInputFromJson(json);

  final String? id;

  final String username;

  final String password;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$UserCreateWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutNoteInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutNoteInput({
    this.id,
    required this.username,
    required this.password,
    required this.name,
  });

  factory UserUncheckedCreateWithoutNoteInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutNoteInputFromJson(json);

  final String? id;

  final String username;

  final String password;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutNoteInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutNoteInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutNoteInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutNoteInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutNoteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutNoteInput implements _i1.JsonSerializable {
  const UserUpsertWithoutNoteInput({
    required this.update,
    required this.create,
  });

  factory UserUpsertWithoutNoteInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpsertWithoutNoteInputFromJson(json);

  final UserUpdateWithoutNoteInput update;

  final UserCreateWithoutNoteInput create;

  @override
  Map<String, dynamic> toJson() => _$UserUpsertWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutNoteInput implements _i1.JsonSerializable {
  const UserUpdateWithoutNoteInput({
    this.username,
    this.password,
    this.name,
  });

  factory UserUpdateWithoutNoteInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutNoteInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutNoteInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutNoteInput({
    this.username,
    this.password,
    this.name,
  });

  factory UserUncheckedUpdateWithoutNoteInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutNoteInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class NoteCreateManyUserInput implements _i1.JsonSerializable {
  const NoteCreateManyUserInput({
    required this.title,
    required this.content,
  });

  factory NoteCreateManyUserInput.fromJson(Map<String, dynamic> json) =>
      _$NoteCreateManyUserInputFromJson(json);

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() => _$NoteCreateManyUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUpdateWithoutUserInput implements _i1.JsonSerializable {
  const NoteUpdateWithoutUserInput({
    this.title,
    this.content,
  });

  factory NoteUpdateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$NoteUpdateWithoutUserInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() => _$NoteUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedUpdateWithoutUserInput implements _i1.JsonSerializable {
  const NoteUncheckedUpdateWithoutUserInput({
    this.title,
    this.content,
  });

  factory NoteUncheckedUpdateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUncheckedUpdateWithoutUserInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUncheckedUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class NoteUncheckedUpdateManyWithoutNoteInput implements _i1.JsonSerializable {
  const NoteUncheckedUpdateManyWithoutNoteInput({
    this.title,
    this.content,
  });

  factory NoteUncheckedUpdateManyWithoutNoteInput.fromJson(
          Map<String, dynamic> json) =>
      _$NoteUncheckedUpdateManyWithoutNoteInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  @override
  Map<String, dynamic> toJson() =>
      _$NoteUncheckedUpdateManyWithoutNoteInputToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String id;

  final String username;

  final String password;

  final String name;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Note implements _i1.JsonSerializable {
  const Note({
    required this.id,
    required this.title,
    required this.content,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  final String id;

  final String title;

  final String content;

  @override
  Map<String, dynamic> toJson() => _$NoteToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Note>?> note({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithRelationInput>? orderBy,
    NoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<NoteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'note',
          fields: fields,
          args: args,
        )
      ]),
      key: r'note',
    );
    final fields = NoteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> note) =>
        note.map((Map note) => Note.fromJson(note.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UserCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountOutputType(query);
  }
}

class NoteFluent<T> extends _i1.PrismaFluent<T> {
  const NoteFluent(
    super.original,
    super.$query,
  );

  UserFluent<User?> user() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'User',
          fields: fields,
        )
      ]),
      key: r'User',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found User'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found User'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found User'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany(
      {required Iterable<UserCreateManyInput> data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found User'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  Future<dynamic> findRaw({
    dynamic? filter,
    dynamic? options,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'filter',
        filter,
      ),
      _i2.GraphQLArg(
        r'options',
        options,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUserRaw',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUserRaw',
    );
    return query(const []).then((value) => (value as dynamic));
  }

  Future<dynamic> aggregateRaw({
    Iterable<dynamic>? pipeline,
    dynamic? options,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'pipeline',
        pipeline,
      ),
      _i2.GraphQLArg(
        r'options',
        options,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUserRaw',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUserRaw',
    );
    return query(const []).then((value) => (value as dynamic));
  }
}

extension NoteModelDelegateExtension on _i1.ModelDelegate<Note> {
  NoteFluent<Note?> findUnique({required NoteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Note.fromJson(json.cast<String, dynamic>()) : null);
    return NoteFluent<Note?>(
      future,
      query,
    );
  }

  NoteFluent<Note> findUniqueOrThrow({required NoteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueNoteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueNoteOrThrow',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Note.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found Note'));
    return NoteFluent<Note>(
      future,
      query,
    );
  }

  NoteFluent<Note?> findFirst({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithRelationInput>? orderBy,
    NoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<NoteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Note.fromJson(json.cast<String, dynamic>()) : null);
    return NoteFluent<Note?>(
      future,
      query,
    );
  }

  NoteFluent<Note> findFirstOrThrow({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithRelationInput>? orderBy,
    NoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<NoteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstNoteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstNoteOrThrow',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Note.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found Note'));
    return NoteFluent<Note>(
      future,
      query,
    );
  }

  Future<Iterable<Note>> findMany({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithRelationInput>? orderBy,
    NoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<NoteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyNote',
    );
    final fields = NoteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyNote) => findManyNote
        .map((Map findManyNote) => Note.fromJson(findManyNote.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  NoteFluent<Note> create({required NoteCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Note.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found Note'));
    return NoteFluent<Note>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany(
      {required Iterable<NoteCreateManyInput> data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyNote',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyNote) =>
        AffectedRowsOutput.fromJson(createManyNote.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  NoteFluent<Note?> update({
    required NoteUpdateInput data,
    required NoteWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Note.fromJson(json.cast<String, dynamic>()) : null);
    return NoteFluent<Note?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required NoteUpdateManyMutationInput data,
    NoteWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyNote',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyNote) =>
        AffectedRowsOutput.fromJson(updateManyNote.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  NoteFluent<Note> upsert({
    required NoteWhereUniqueInput where,
    required NoteCreateInput create,
    required NoteUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Note.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found Note'));
    return NoteFluent<Note>(
      future,
      query,
    );
  }

  NoteFluent<Note?> delete({required NoteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneNote',
    );
    final future = query(NoteScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Note.fromJson(json.cast<String, dynamic>()) : null);
    return NoteFluent<Note?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({NoteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyNote',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyNote) =>
        AffectedRowsOutput.fromJson(deleteManyNote.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateNote aggregate({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithRelationInput>? orderBy,
    NoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateNote',
    );
    return AggregateNote(query);
  }

  Future<Iterable<NoteGroupByOutputType>> groupBy({
    NoteWhereInput? where,
    Iterable<NoteOrderByWithAggregationInput>? orderBy,
    required Iterable<NoteScalarFieldEnum> by,
    NoteScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByNote',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByNote',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByNote) => groupByNote.map((Map groupByNote) =>
        NoteGroupByOutputType.fromJson(groupByNote.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  Future<dynamic> findRaw({
    dynamic? filter,
    dynamic? options,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'filter',
        filter,
      ),
      _i2.GraphQLArg(
        r'options',
        options,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findNoteRaw',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findNoteRaw',
    );
    return query(const []).then((value) => (value as dynamic));
  }

  Future<dynamic> aggregateRaw({
    Iterable<dynamic>? pipeline,
    dynamic? options,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'pipeline',
        pipeline,
      ),
      _i2.GraphQLArg(
        r'options',
        options,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateNoteRaw',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateNoteRaw',
    );
    return query(const []).then((value) => (value as dynamic));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.username,
    this.password,
    this.name,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final String? id;

  final String? username;

  final String? password;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class NoteGroupByOutputType implements _i1.JsonSerializable {
  const NoteGroupByOutputType({
    this.id,
    this.title,
    this.content,
  });

  factory NoteGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$NoteGroupByOutputTypeFromJson(json);

  final String? id;

  final String? title;

  final String? content;

  @override
  Map<String, dynamic> toJson() => _$NoteGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateNote {
  const AggregateNote(this.$query);

  final _i1.PrismaFluentQuery $query;

  NoteCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return NoteCountAggregateOutputType(query);
  }

  NoteMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return NoteMinAggregateOutputType(query);
  }

  NoteMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return NoteMaxAggregateOutputType(query);
  }
}

class UserCountOutputType {
  const UserCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> note() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'note',
          fields: fields,
        )
      ]),
      key: r'note',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String));
  }
}

class NoteCountAggregateOutputType {
  const NoteCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class NoteMinAggregateOutputType {
  const NoteMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as String));
  }
}

class NoteMaxAggregateOutputType {
  const NoteMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String));
  }

  Future<String?> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as String));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgogIG91dHB1dCAgID0gIi4uL2xpYi9nZW5lcmF0ZWQiIC8vIE91dHB1dCBwYXRoIGlzIGBsaWIvZ2VuZXJhdGVkL3ByaXNtYV9jbGllbnQuZGFydGAKfQoKZGF0YXNvdXJjZSBkYiB7CiAgcHJvdmlkZXIgPSAibW9uZ29kYiIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgVXNlciB7CiAgaWQgICAgICAgU3RyaW5nIEBpZCBAZGVmYXVsdChhdXRvKCkpIEBtYXAoIl9pZCIpIEBkYi5PYmplY3RJZAogIHVzZXJuYW1lIFN0cmluZwogIHBhc3N3b3JkIFN0cmluZwogIG5hbWUgICAgIFN0cmluZwogIG5vdGUgICAgIE5vdGVbXQp9Cgptb2RlbCBOb3RlIHsKICBpZCAgICAgIFN0cmluZyBAaWQgQGRlZmF1bHQoYXV0bygpKSBAbWFwKCJfaWQiKSBAZGIuT2JqZWN0SWQKICB0aXRsZSAgIFN0cmluZwogIGNvbnRlbnQgU3RyaW5nCiAgVXNlciAgICBVc2VyPyAgQHJlbGF0aW9uKGZpZWxkczogW2lkXSwgcmVmZXJlbmNlczogW2lkXSkKfQo=',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\PTTP\University\Third_Year\Cross_Platform\notexpert_mongo\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Note> get note => _i1.ModelDelegate<Note>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
