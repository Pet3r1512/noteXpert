// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      note: json['note'] == null
          ? null
          : NoteListRelationFilter.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('note', instance.note?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      note: json['note'] == null
          ? null
          : NoteOrderByRelationAggregateInput.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('note', instance.note?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

NoteWhereInput _$NoteWhereInputFromJson(Map<String, dynamic> json) =>
    NoteWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => NoteWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => NoteWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => NoteWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFilter.fromJson(json['content'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : UserRelationFilter.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteWhereInputToJson(NoteWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  writeNotNull('User', instance.user?.toJson());
  return val;
}

NoteOrderByWithRelationInput _$NoteOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    NoteOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
      user: json['User'] == null
          ? null
          : UserOrderByWithRelationInput.fromJson(
              json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteOrderByWithRelationInputToJson(
    NoteOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('content', _$SortOrderEnumMap[instance.content]);
  writeNotNull('User', instance.user?.toJson());
  return val;
}

NoteWhereUniqueInput _$NoteWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    NoteWhereUniqueInput(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$NoteWhereUniqueInputToJson(
    NoteWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

NoteOrderByWithAggregationInput _$NoteOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    NoteOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
      $count: json['_count'] == null
          ? null
          : NoteCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NoteMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NoteMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteOrderByWithAggregationInputToJson(
    NoteOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('content', _$SortOrderEnumMap[instance.content]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

NoteScalarWhereWithAggregatesInput _$NoteScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    NoteScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          NoteScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          NoteScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          NoteScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteScalarWhereWithAggregatesInputToJson(
    NoteScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      note: json['note'] == null
          ? null
          : NoteCreateNestedManyWithoutUserInput.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['name'] = instance.name;
  writeNotNull('note', instance.note?.toJson());
  return val;
}

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      note: json['note'] == null
          ? null
          : NoteUncheckedCreateNestedManyWithoutUserInput.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['name'] = instance.name;
  writeNotNull('note', instance.note?.toJson());
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      note: json['note'] == null
          ? null
          : NoteUpdateManyWithoutUserNestedInput.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('note', instance.note?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      note: json['note'] == null
          ? null
          : NoteUncheckedUpdateManyWithoutUserNestedInput.fromJson(
              json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('note', instance.note?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['name'] = instance.name;
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

NoteCreateInput _$NoteCreateInputFromJson(Map<String, dynamic> json) =>
    NoteCreateInput(
      title: json['title'] as String,
      content: json['content'] as String,
      user: json['User'] == null
          ? null
          : UserCreateNestedOneWithoutNoteInput.fromJson(
              json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteCreateInputToJson(NoteCreateInput instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'content': instance.content,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('User', instance.user?.toJson());
  return val;
}

NoteUncheckedCreateInput _$NoteUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    NoteUncheckedCreateInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$NoteUncheckedCreateInputToJson(
    NoteUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['content'] = instance.content;
  return val;
}

NoteUpdateInput _$NoteUpdateInputFromJson(Map<String, dynamic> json) =>
    NoteUpdateInput(
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['content'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : UserUpdateOneWithoutNoteNestedInput.fromJson(
              json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteUpdateInputToJson(NoteUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  writeNotNull('User', instance.user?.toJson());
  return val;
}

NoteUncheckedUpdateInput _$NoteUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    NoteUncheckedUpdateInput(
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteUncheckedUpdateInputToJson(
    NoteUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

NoteCreateManyInput _$NoteCreateManyInputFromJson(Map<String, dynamic> json) =>
    NoteCreateManyInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$NoteCreateManyInputToJson(NoteCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['content'] = instance.content;
  return val;
}

NoteUpdateManyMutationInput _$NoteUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    NoteUpdateManyMutationInput(
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteUpdateManyMutationInputToJson(
    NoteUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

NoteUncheckedUpdateManyInput _$NoteUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    NoteUncheckedUpdateManyInput(
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteUncheckedUpdateManyInputToJson(
    NoteUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

NoteListRelationFilter _$NoteListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    NoteListRelationFilter(
      every: json['every'] == null
          ? null
          : NoteWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : NoteWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : NoteWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteListRelationFilterToJson(
    NoteListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

NoteOrderByRelationAggregateInput _$NoteOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    NoteOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$NoteOrderByRelationAggregateInputToJson(
    NoteOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) =>
    UserRelationFilter(
      $is: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRelationFilterToJson(UserRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

NoteCountOrderByAggregateInput _$NoteCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    NoteCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
    );

Map<String, dynamic> _$NoteCountOrderByAggregateInputToJson(
    NoteCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('content', _$SortOrderEnumMap[instance.content]);
  return val;
}

NoteMaxOrderByAggregateInput _$NoteMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    NoteMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
    );

Map<String, dynamic> _$NoteMaxOrderByAggregateInputToJson(
    NoteMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('content', _$SortOrderEnumMap[instance.content]);
  return val;
}

NoteMinOrderByAggregateInput _$NoteMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    NoteMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      content: $enumDecodeNullable(_$SortOrderEnumMap, json['content']),
    );

Map<String, dynamic> _$NoteMinOrderByAggregateInputToJson(
    NoteMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('content', _$SortOrderEnumMap[instance.content]);
  return val;
}

NoteCreateNestedManyWithoutUserInput
    _$NoteCreateNestedManyWithoutUserInputFromJson(Map<String, dynamic> json) =>
        NoteCreateNestedManyWithoutUserInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              NoteCreateWithoutUserInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => NoteCreateOrConnectWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : NoteCreateManyUserInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$NoteCreateNestedManyWithoutUserInputToJson(
    NoteCreateNestedManyWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

NoteUncheckedCreateNestedManyWithoutUserInput
    _$NoteUncheckedCreateNestedManyWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        NoteUncheckedCreateNestedManyWithoutUserInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              NoteCreateWithoutUserInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => NoteCreateOrConnectWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : NoteCreateManyUserInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$NoteUncheckedCreateNestedManyWithoutUserInputToJson(
    NoteUncheckedCreateNestedManyWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NoteUpdateManyWithoutUserNestedInput
    _$NoteUpdateManyWithoutUserNestedInputFromJson(Map<String, dynamic> json) =>
        NoteUpdateManyWithoutUserNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              NoteCreateWithoutUserInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => NoteCreateOrConnectWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              NoteUpsertWithWhereUniqueWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : NoteCreateManyUserInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              NoteUpdateWithWhereUniqueWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              NoteUpdateManyWithWhereWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => NoteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$NoteUpdateManyWithoutUserNestedInputToJson(
    NoteUpdateManyWithoutUserNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

NoteUncheckedUpdateManyWithoutUserNestedInput
    _$NoteUncheckedUpdateManyWithoutUserNestedInputFromJson(
            Map<String, dynamic> json) =>
        NoteUncheckedUpdateManyWithoutUserNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              NoteCreateWithoutUserInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => NoteCreateOrConnectWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              NoteUpsertWithWhereUniqueWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : NoteCreateManyUserInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => NoteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              NoteUpdateWithWhereUniqueWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              NoteUpdateManyWithWhereWithoutUserInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => NoteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$NoteUncheckedUpdateManyWithoutUserNestedInputToJson(
    NoteUncheckedUpdateManyWithoutUserNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UserCreateNestedOneWithoutNoteInput
    _$UserCreateNestedOneWithoutNoteInputFromJson(Map<String, dynamic> json) =>
        UserCreateNestedOneWithoutNoteInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutNoteInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutNoteInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateNestedOneWithoutNoteInputToJson(
    UserCreateNestedOneWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

UserUpdateOneWithoutNoteNestedInput
    _$UserUpdateOneWithoutNoteNestedInputFromJson(Map<String, dynamic> json) =>
        UserUpdateOneWithoutNoteNestedInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutNoteInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutNoteInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UserUpsertWithoutNoteInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] as bool?,
          delete: json['delete'] as bool?,
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UserUpdateWithoutNoteInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUpdateOneWithoutNoteNestedInputToJson(
    UserUpdateOneWithoutNoteNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect);
  writeNotNull('delete', instance.delete);
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NoteCreateWithoutUserInput _$NoteCreateWithoutUserInputFromJson(
        Map<String, dynamic> json) =>
    NoteCreateWithoutUserInput(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$NoteCreateWithoutUserInputToJson(
        NoteCreateWithoutUserInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

NoteUncheckedCreateWithoutUserInput
    _$NoteUncheckedCreateWithoutUserInputFromJson(Map<String, dynamic> json) =>
        NoteUncheckedCreateWithoutUserInput(
          title: json['title'] as String,
          content: json['content'] as String,
        );

Map<String, dynamic> _$NoteUncheckedCreateWithoutUserInputToJson(
        NoteUncheckedCreateWithoutUserInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

NoteCreateOrConnectWithoutUserInput
    _$NoteCreateOrConnectWithoutUserInputFromJson(Map<String, dynamic> json) =>
        NoteCreateOrConnectWithoutUserInput(
          where: NoteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: NoteCreateWithoutUserInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteCreateOrConnectWithoutUserInputToJson(
        NoteCreateOrConnectWithoutUserInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

NoteCreateManyUserInputEnvelope _$NoteCreateManyUserInputEnvelopeFromJson(
        Map<String, dynamic> json) =>
    NoteCreateManyUserInputEnvelope(
      data: (json['data'] as List<dynamic>).map(
          (e) => NoteCreateManyUserInput.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$NoteCreateManyUserInputEnvelopeToJson(
        NoteCreateManyUserInputEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

NoteUpsertWithWhereUniqueWithoutUserInput
    _$NoteUpsertWithWhereUniqueWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        NoteUpsertWithWhereUniqueWithoutUserInput(
          where: NoteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: NoteUpdateWithoutUserInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: NoteCreateWithoutUserInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteUpsertWithWhereUniqueWithoutUserInputToJson(
        NoteUpsertWithWhereUniqueWithoutUserInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

NoteUpdateWithWhereUniqueWithoutUserInput
    _$NoteUpdateWithWhereUniqueWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        NoteUpdateWithWhereUniqueWithoutUserInput(
          where: NoteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: NoteUpdateWithoutUserInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteUpdateWithWhereUniqueWithoutUserInputToJson(
        NoteUpdateWithWhereUniqueWithoutUserInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

NoteUpdateManyWithWhereWithoutUserInput
    _$NoteUpdateManyWithWhereWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        NoteUpdateManyWithWhereWithoutUserInput(
          where: NoteScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: NoteUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteUpdateManyWithWhereWithoutUserInputToJson(
        NoteUpdateManyWithWhereWithoutUserInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

NoteScalarWhereInput _$NoteScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    NoteScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => NoteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => NoteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => NoteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFilter.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteScalarWhereInputToJson(
    NoteScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

UserCreateWithoutNoteInput _$UserCreateWithoutNoteInputFromJson(
        Map<String, dynamic> json) =>
    UserCreateWithoutNoteInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserCreateWithoutNoteInputToJson(
    UserCreateWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['name'] = instance.name;
  return val;
}

UserUncheckedCreateWithoutNoteInput
    _$UserUncheckedCreateWithoutNoteInputFromJson(Map<String, dynamic> json) =>
        UserUncheckedCreateWithoutNoteInput(
          id: json['id'] as String?,
          username: json['username'] as String,
          password: json['password'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$UserUncheckedCreateWithoutNoteInputToJson(
    UserUncheckedCreateWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['name'] = instance.name;
  return val;
}

UserCreateOrConnectWithoutNoteInput
    _$UserCreateOrConnectWithoutNoteInputFromJson(Map<String, dynamic> json) =>
        UserCreateOrConnectWithoutNoteInput(
          where: UserWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UserCreateWithoutNoteInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateOrConnectWithoutNoteInputToJson(
        UserCreateOrConnectWithoutNoteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UserUpsertWithoutNoteInput _$UserUpsertWithoutNoteInputFromJson(
        Map<String, dynamic> json) =>
    UserUpsertWithoutNoteInput(
      update: UserUpdateWithoutNoteInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UserCreateWithoutNoteInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpsertWithoutNoteInputToJson(
        UserUpsertWithoutNoteInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UserUpdateWithoutNoteInput _$UserUpdateWithoutNoteInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateWithoutNoteInput(
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateWithoutNoteInputToJson(
    UserUpdateWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

UserUncheckedUpdateWithoutNoteInput
    _$UserUncheckedUpdateWithoutNoteInputFromJson(Map<String, dynamic> json) =>
        UserUncheckedUpdateWithoutNoteInput(
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedUpdateWithoutNoteInputToJson(
    UserUncheckedUpdateWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('name', instance.name?.toJson());
  return val;
}

NoteCreateManyUserInput _$NoteCreateManyUserInputFromJson(
        Map<String, dynamic> json) =>
    NoteCreateManyUserInput(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$NoteCreateManyUserInputToJson(
        NoteCreateManyUserInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

NoteUpdateWithoutUserInput _$NoteUpdateWithoutUserInputFromJson(
        Map<String, dynamic> json) =>
    NoteUpdateWithoutUserInput(
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteUpdateWithoutUserInputToJson(
    NoteUpdateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

NoteUncheckedUpdateWithoutUserInput
    _$NoteUncheckedUpdateWithoutUserInputFromJson(Map<String, dynamic> json) =>
        NoteUncheckedUpdateWithoutUserInput(
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          content: json['content'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['content'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteUncheckedUpdateWithoutUserInputToJson(
    NoteUncheckedUpdateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

NoteUncheckedUpdateManyWithoutNoteInput
    _$NoteUncheckedUpdateManyWithoutNoteInputFromJson(
            Map<String, dynamic> json) =>
        NoteUncheckedUpdateManyWithoutNoteInput(
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          content: json['content'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['content'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NoteUncheckedUpdateManyWithoutNoteInputToJson(
    NoteUncheckedUpdateManyWithoutNoteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('content', instance.content?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
    };

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('name', instance.name);
  return val;
}

NoteGroupByOutputType _$NoteGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    NoteGroupByOutputType(
      id: json['id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$NoteGroupByOutputTypeToJson(
    NoteGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
