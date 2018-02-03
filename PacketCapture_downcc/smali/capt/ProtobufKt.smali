.class public final Lcapt/ProtobufKt;
.super Ljava/lang/Object;
.source "protobuf.kt"


# static fields
.field private static PROTOBUF_DEBUG:Z

.field private static final pendingOutput:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    return-void
.end method

.method public static final parseProtobuf(Ljava/io/InputStream;IILjava/io/OutputStream;)V
    .locals 23
    .param p0, "ins"    # Ljava/io/InputStream;
    .param p1, "level"    # I
    .param p2, "group"    # I
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    const-string v15, "ins"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "out"

    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcapt/ProtobufKt;->readTagAndType(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v13

    .line 104
    .local v13, "tagAndType":Ljava/math/BigInteger;
    if-nez v13, :cond_1

    .line 105
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_e

    .line 106
    new-instance v15, Lcapt/InvalidProtobufFormat;

    const-string v18, "no end tag"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 110
    :cond_1
    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 111
    .local v12, "tag":I
    const-wide/16 v18, 0x7

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 112
    .local v14, "type":Ljava/math/BigInteger;
    sget-boolean v15, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v15, :cond_2

    .line 113
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "tagAndType=%s tag=%s type=%s\n"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v13}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 116
    :cond_2
    if-nez p1, :cond_3

    .line 117
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 120
    :cond_3
    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 203
    new-instance v15, Lcapt/InvalidProtobufFormat;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 122
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcapt/ProtobufKt;->readVarInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v16

    .line 123
    .local v16, "v":Ljava/math/BigInteger;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    .line 205
    .end local v16    # "v":Ljava/math/BigInteger;
    :cond_4
    :goto_1
    if-nez p1, :cond_0

    .line 208
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 209
    .local v11, "s":Ljava/lang/String;
    sget-object v18, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v11, :cond_c

    new-instance v15, Lkotlin/TypeCastException;

    const-string v18, "null cannot be cast to non-null type java.lang.String"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 126
    .end local v11    # "s":Ljava/lang/String;
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcapt/ProtobufKt;->read64bit(Ljava/io/InputStream;)J

    move-result-wide v16

    .line 127
    .local v16, "v":J
    sget-object v15, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v15, "0x%x"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "java.lang.String.format(format, *args)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .local v7, "hex":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v7    # "hex":Ljava/lang/String;
    .end local v16    # "v":J
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcapt/ProtobufKt;->readVarInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    .line 132
    .local v9, "len":I
    if-nez v9, :cond_5

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :cond_5
    new-array v4, v9, [B

    .line 136
    .local v4, "bytes":[B
    const/4 v8, 0x0

    add-int/lit8 v15, v9, -0x1

    if-gt v8, v15, :cond_7

    .line 137
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 138
    .local v5, "c":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 139
    new-instance v15, Lcapt/InvalidProtobufFormat;

    const-string v18, "string"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 141
    :cond_6
    int-to-byte v0, v5

    move/from16 v18, v0

    aput-byte v18, v4, v8

    .line 136
    if-eq v8, v15, :cond_7

    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    goto :goto_3

    .line 146
    .end local v5    # "c":I
    .end local v8    # "i":I
    :cond_7
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 147
    .local v10, "rewind":I
    nop

    .line 148
    :try_start_0
    sget-boolean v15, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v15, :cond_9

    .line 149
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, ">> try to parse as embedded\n"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 150
    const/4 v8, 0x0

    array-length v15, v4

    add-int/lit8 v15, v15, -0x1

    if-gt v8, v15, :cond_8

    .line 151
    :goto_4
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "%02X"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-byte v22, v4, v8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 150
    if-eq v8, v15, :cond_8

    add-int/lit8 v8, v8, 0x1

    .restart local v8    # "i":I
    goto :goto_4

    .line 153
    .end local v8    # "i":I
    :cond_8
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "\n"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 155
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " {"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    .line 156
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v15, Ljava/io/InputStream;

    add-int/lit8 v18, p1, 0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    invoke-static {v15, v0, v1, v2}, Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;IILjava/io/OutputStream;)V

    .line 157
    const-string v15, "}"

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    .line 158
    sget-boolean v15, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v15, :cond_4

    .line 159
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "<< embedded\n"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 161
    :catch_0
    move-exception v6

    .line 162
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v10, :cond_a

    .line 163
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    sget-object v18, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 166
    :cond_a
    sget-boolean v15, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v15, :cond_b

    .line 167
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "failed to parse as embedded. e=%s\n"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 168
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "parse as string\n"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 170
    :cond_b
    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 171
    .restart local v11    # "s":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 186
    .end local v4    # "bytes":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "len":I
    .end local v10    # "rewind":I
    .end local v11    # "s":Ljava/lang/String;
    :pswitch_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " {"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    .line 187
    add-int/lit8 v15, p1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v15, v12, v1}, Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;IILjava/io/OutputStream;)V

    .line 188
    const-string v15, "}"

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :pswitch_4
    move/from16 v0, p2

    if-eq v12, v0, :cond_e

    .line 193
    new-instance v15, Lcapt/InvalidProtobufFormat;

    const-string v18, "group tag doesn\'t match"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 198
    :pswitch_5
    invoke-static/range {p0 .. p0}, Lcapt/ProtobufKt;->read32bit(Ljava/io/InputStream;)I

    move-result v16

    .line 199
    .local v16, "v":I
    sget-object v15, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v15, "0x%x"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "java.lang.String.format(format, *args)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .restart local v7    # "hex":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcapt/ProtobufKt;->printWithIndent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 209
    .end local v7    # "hex":Ljava/lang/String;
    .end local v16    # "v":I
    .restart local v11    # "s":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v18

    const-string v19, "(this as java.lang.String).getBytes(charset)"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    .line 212
    .end local v11    # "s":Ljava/lang/String;
    :cond_d
    sget-object v15, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 216
    .end local v12    # "tag":I
    .end local v14    # "type":Ljava/math/BigInteger;
    :cond_e
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final parseProtobuf(Ljava/io/InputStream;Lcapt/V1Writer;)V
    .locals 4
    .param p0, "ins"    # Ljava/io/InputStream;
    .param p1, "v1"    # Lcapt/V1Writer;

    .prologue
    const-string v1, "ins"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "v1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    nop

    .line 77
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v1, Lcapt/ProtobufKt$parseProtobuf$1;

    invoke-direct {v1, p1}, Lcapt/ProtobufKt$parseProtobuf$1;-><init>(Lcapt/V1Writer;)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {p0, v2, v3, v1}, Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;IILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "\nparse error\n"

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcapt/V1Writer;->write([B)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "\nparse error\n"

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcapt/V1Writer;->write([B)V

    goto :goto_0
.end method

.method public static final printWithIndent(ILjava/lang/String;)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v2, "s"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-boolean v2, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v2, :cond_0

    .line 220
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%s\n"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 222
    :cond_0
    if-gt v1, p0, :cond_2

    move v0, v1

    .line 223
    :goto_0
    sget-object v2, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-boolean v2, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v2, :cond_1

    .line 225
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    :cond_1
    if-eq v0, p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_2
    sget-boolean v2, Lcapt/ProtobufKt;->PROTOBUF_DEBUG:Z

    if-eqz v2, :cond_3

    .line 229
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 231
    :cond_3
    sget-object v1, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcapt/ProtobufKt;->pendingOutput:Ljava/util/ArrayList;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public static final read32bit(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "ins"    # Ljava/io/InputStream;

    .prologue
    const-string v3, "ins"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "ret":I
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 66
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 67
    .local v0, "c":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 68
    new-instance v3, Lcapt/InvalidProtobufFormat;

    const-string v4, "read64bit"

    invoke-direct {v3, v4}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 70
    :cond_0
    mul-int/lit8 v4, v1, 0x8

    shl-int v4, v0, v4

    or-int/2addr v2, v4

    .line 65
    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public static final read64bit(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "ins"    # Ljava/io/InputStream;

    .prologue
    const-string v4, "ins"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .local v2, "ret":J
    const/4 v1, 0x0

    const/4 v4, 0x7

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 55
    .local v0, "c":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 56
    new-instance v4, Lcapt/InvalidProtobufFormat;

    const-string v5, "read64bit"

    invoke-direct {v4, v5}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 58
    :cond_0
    int-to-long v6, v0

    mul-int/lit8 v5, v1, 0x8

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 53
    if-eq v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_1
    return-wide v2
.end method

.method public static final readTagAndType(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "ins"    # Ljava/io/InputStream;

    .prologue
    const-string v1, "ins"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    nop

    .line 15
    :try_start_0
    invoke-static {p0}, Lcapt/ProtobufKt;->readVarInt(Ljava/io/InputStream;)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 17
    :goto_0
    return-object v1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final readVarInt(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "ins"    # Ljava/io/InputStream;

    .prologue
    const-string v4, "ins"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 24
    .local v3, "num":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 25
    .local v1, "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 27
    .local v0, "c":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 28
    if-nez v1, :cond_1

    .line 29
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 31
    :cond_1
    new-instance v4, Lcapt/InvalidProtobufFormat;

    const-string v5, "varint"

    invoke-direct {v4, v5}, Lcapt/InvalidProtobufFormat;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 32
    :cond_2
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_3

    .line 38
    const/4 v2, 0x1

    .line 41
    .local v2, "last":Z
    :goto_0
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    mul-int/lit8 v5, v1, 0x7

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    if-eqz v2, :cond_0

    .line 48
    const-string v4, "num"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 40
    .end local v2    # "last":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "last":Z
    goto :goto_0
.end method
