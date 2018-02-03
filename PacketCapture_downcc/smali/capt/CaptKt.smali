.class public final Lcapt/CaptKt;
.super Ljava/lang/Object;
.source "Capt.kt"


# static fields
.field private static final DIRECTION_APP2SERVER:B = 0x0t

# The value of this static final field might be set in the static constructor
.field private static final DIRECTION_SERVER2APP:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-byte v0, Lcapt/CaptKt;->DIRECTION_SERVER2APP:B

    return-void
.end method

.method public static final getDIRECTION_APP2SERVER()B
    .locals 1

    .prologue
    .line 10
    sget-byte v0, Lcapt/CaptKt;->DIRECTION_APP2SERVER:B

    return v0
.end method

.method public static final getDIRECTION_SERVER2APP()B
    .locals 1

    .prologue
    .line 11
    sget-byte v0, Lcapt/CaptKt;->DIRECTION_SERVER2APP:B

    return v0
.end method

.method public static final readCaptHeaders(Ljava/io/RandomAccessFile;)Ljava/util/ArrayList;
    .locals 22
    .param p0, "fin"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "fin"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v11, "headers":Ljava/util/ArrayList;
    const/16 v2, 0x10

    new-array v10, v2, [B

    .line 109
    .local v10, "buf":[B
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 110
    .local v12, "fileLen":J
    const-wide/16 v8, 0x0

    .line 111
    .local v8, "offset":J
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v14

    .line 115
    .local v14, "len":I
    const/16 v2, 0x10

    if-eq v14, v2, :cond_1

    .line 145
    :cond_0
    return-object v11

    .line 118
    :cond_1
    const/16 v2, 0x10

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 120
    const/4 v2, 0x0

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/4 v2, 0x1

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x8

    shl-long v18, v18, v2

    or-long v16, v16, v18

    const/4 v2, 0x2

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x10

    shl-long v18, v18, v2

    .line 122
    or-long v16, v16, v18

    const/4 v2, 0x3

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x18

    shl-long v18, v18, v2

    .line 123
    or-long v16, v16, v18

    const/4 v2, 0x4

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x20

    shl-long v18, v18, v2

    .line 124
    or-long v16, v16, v18

    const/4 v2, 0x5

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x28

    shl-long v18, v18, v2

    .line 125
    or-long v16, v16, v18

    const/4 v2, 0x6

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x30

    shl-long v18, v18, v2

    .line 126
    or-long v16, v16, v18

    const/4 v2, 0x7

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x38

    shl-long v18, v18, v2

    .line 127
    or-long v3, v16, v18

    .line 129
    .local v3, "time":J
    const/16 v2, 0x8

    aget-byte v2, v10, v2

    .line 130
    sget-byte v15, Lcapt/CaptKt;->DIRECTION_APP2SERVER:B

    if-ne v2, v15, :cond_2

    sget-byte v5, Lcapt/CaptKt;->DIRECTION_APP2SERVER:B

    .line 134
    .local v5, "dir":I
    :goto_1
    const/16 v2, 0xc

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v2, 0xd

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x8

    shl-long v18, v18, v2

    or-long v16, v16, v18

    const/16 v2, 0xe

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x10

    shl-long v18, v18, v2

    or-long v16, v16, v18

    const/16 v2, 0xf

    aget-byte v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v2, 0x18

    shl-long v18, v18, v2

    or-long v6, v16, v18

    .line 135
    .local v6, "size":J
    cmp-long v2, v6, v12

    if-gtz v2, :cond_0

    .line 138
    add-long v16, v8, v6

    cmp-long v2, v16, v12

    if-gtz v2, :cond_0

    .line 141
    new-instance v2, Lcapt/CaptHeader;

    invoke-direct/range {v2 .. v9}, Lcapt/CaptHeader;-><init>(JIJJ)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-long/2addr v8, v6

    .line 111
    goto/16 :goto_0

    .line 131
    .end local v5    # "dir":I
    .end local v6    # "size":J
    :cond_2
    sget-byte v15, Lcapt/CaptKt;->DIRECTION_SERVER2APP:B

    if-ne v2, v15, :cond_0

    sget-byte v5, Lcapt/CaptKt;->DIRECTION_SERVER2APP:B

    goto :goto_1
.end method
