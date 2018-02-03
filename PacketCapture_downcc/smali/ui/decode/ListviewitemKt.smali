.class public final Lui/decode/ListviewitemKt;
.super Ljava/lang/Object;
.source "listviewitem.kt"


# static fields
.field private static final table:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/Character;

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 147
    .local v0, "elements$iv":[Ljava/lang/Object;
    sput-object v0, Lui/decode/ListviewitemKt;->table:[Ljava/lang/Character;

    return-void
.end method

.method public static final BuildListViewItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/ListViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "headers"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v21, "items":Ljava/util/ArrayList;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lui/decode/V1HeaderState;

    .line 44
    .local v8, "header":Lui/decode/V1HeaderState;
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getViewType()Lui/decode/ViewType;

    move-result-object v2

    sget-object v6, Lui/decode/ListviewitemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lui/decode/ViewType;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getPrettyOffset()I

    move-result v3

    .line 47
    .local v3, "offset":I
    const/4 v5, 0x1

    .line 48
    .local v5, "isParent":Z
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getPrettyBlocks()[I

    move-result-object v10

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    array-length v2, v10

    if-ge v9, v2, :cond_0

    aget v4, v10, v9

    .line 49
    .local v4, "prettyBlock":I
    new-instance v1, Lui/decode/ListViewItem;

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getServer2app()Z

    move-result v2

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v6

    invoke-virtual {v6}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getViewType()Lui/decode/ViewType;

    move-result-object v7

    const-string v11, "header"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lui/decode/ListViewItem;-><init>(ZIIZLjava/lang/String;Lui/decode/ViewType;Lui/decode/V1HeaderState;)V

    .line 58
    .local v1, "item":Lui/decode/ListViewItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/2addr v3, v4

    .line 60
    const/4 v5, 0x0

    .line 48
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    .line 64
    .end local v1    # "item":Lui/decode/ListViewItem;
    .end local v3    # "offset":I
    .end local v4    # "prettyBlock":I
    .end local v5    # "isParent":Z
    :pswitch_1
    new-instance v1, Lui/decode/ListViewItem;

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getServer2app()Z

    move-result v10

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getRawFileOffset()I

    move-result v11

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getRawDataSize()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getViewType()Lui/decode/ViewType;

    move-result-object v15

    const-string v2, "header"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lui/decode/ListViewItem;-><init>(ZIIZLjava/lang/String;Lui/decode/ViewType;Lui/decode/V1HeaderState;)V

    .line 73
    .restart local v1    # "item":Lui/decode/ListViewItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    .end local v1    # "item":Lui/decode/ListViewItem;
    :pswitch_2
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getRawFileOffset()I

    move-result v3

    .line 77
    .restart local v3    # "offset":I
    const/4 v5, 0x1

    .line 78
    .restart local v5    # "isParent":Z
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getTextBlocks()[I

    move-result-object v6

    const/4 v2, 0x0

    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_0

    aget v12, v6, v2

    .line 79
    .local v12, "textBlock":I
    new-instance v1, Lui/decode/ListViewItem;

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v7

    invoke-virtual {v7}, Lcapt/V1Header;->getServer2app()Z

    move-result v10

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v7

    invoke-virtual {v7}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getViewType()Lui/decode/ViewType;

    move-result-object v15

    const-string v7, "header"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    move v11, v3

    move v13, v5

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lui/decode/ListViewItem;-><init>(ZIIZLjava/lang/String;Lui/decode/ViewType;Lui/decode/V1HeaderState;)V

    .line 88
    .restart local v1    # "item":Lui/decode/ListViewItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/2addr v3, v12

    .line 90
    const/4 v5, 0x0

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "item":Lui/decode/ListViewItem;
    .end local v3    # "offset":I
    .end local v5    # "isParent":Z
    .end local v12    # "textBlock":I
    :pswitch_3
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getRawFileOffset()I

    move-result v3

    .line 95
    .restart local v3    # "offset":I
    const/4 v5, 0x1

    .line 96
    .restart local v5    # "isParent":Z
    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getRawDataSize()I

    move-result v22

    .line 97
    .local v22, "left":I
    :goto_3
    if-lez v22, :cond_0

    .line 98
    const/16 v2, 0x400

    move/from16 v0, v22

    if-le v0, v2, :cond_1

    const/16 v16, 0x400

    .line 99
    .local v16, "blockSize":I
    :goto_4
    new-instance v1, Lui/decode/ListViewItem;

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getServer2app()Z

    move-result v14

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v8}, Lui/decode/V1HeaderState;->getViewType()Lui/decode/ViewType;

    move-result-object v19

    const-string v2, "header"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    move v15, v3

    move/from16 v17, v5

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lui/decode/ListViewItem;-><init>(ZIIZLjava/lang/String;Lui/decode/ViewType;Lui/decode/V1HeaderState;)V

    .line 108
    .restart local v1    # "item":Lui/decode/ListViewItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int v3, v3, v16

    .line 110
    sub-int v22, v22, v16

    .line 111
    const/4 v5, 0x0

    .line 97
    goto :goto_3

    .end local v1    # "item":Lui/decode/ListViewItem;
    .end local v16    # "blockSize":I
    :cond_1
    move/from16 v16, v22

    .line 98
    goto :goto_4

    .line 117
    .end local v3    # "offset":I
    .end local v5    # "isParent":Z
    .end local v8    # "header":Lui/decode/V1HeaderState;
    .end local v22    # "left":I
    :cond_2
    return-object v21

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final HexDump([B)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    const-string v1, "data"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v6, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Lkotlin/ranges/IntRange;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Lkotlin/ranges/IntProgression;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v11

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v12

    if-lez v12, :cond_1

    if-gt v1, v11, :cond_5

    move v10, v1

    .line 129
    :goto_0
    const/16 v1, 0x44

    new-array v0, v1, [C

    .line 130
    .local v0, "char16":[C
    const/16 v1, 0x20

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([CCIIILjava/lang/Object;)V

    .line 131
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0xa

    aput-char v3, v0, v1

    .line 132
    const/16 v3, 0xf

    move v8, v2

    .line 133
    :goto_1
    add-int v1, v10, v8

    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 143
    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 125
    if-eq v10, v11, :cond_5

    add-int v1, v10, v12

    move v10, v1

    goto :goto_0

    .end local v0    # "char16":[C
    :cond_1
    if-lt v1, v11, :cond_5

    move v10, v1

    goto :goto_0

    .line 136
    .restart local v0    # "char16":[C
    :cond_2
    add-int v1, v10, v8

    aget-byte v1, p0, v1

    and-int/lit16 v7, v1, 0xff

    .line 137
    .local v7, "d":I
    const/16 v1, 0x8

    if-lt v8, v1, :cond_3

    const/4 v9, 0x1

    .line 138
    .local v9, "sp":I
    :goto_2
    mul-int/lit8 v1, v8, 0x3

    add-int/2addr v1, v9

    sget-object v4, Lui/decode/ListviewitemKt;->table:[Ljava/lang/Character;

    ushr-int/lit8 v5, v7, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v0, v1

    .line 139
    mul-int/lit8 v1, v8, 0x3

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x1

    sget-object v4, Lui/decode/ListviewitemKt;->table:[Ljava/lang/Character;

    and-int/lit8 v5, v7, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v0, v1

    .line 140
    add-int/lit8 v1, v8, 0x32

    add-int v4, v1, v9

    const/16 v1, 0x14

    if-lt v7, v1, :cond_4

    const/16 v1, 0x80

    if-ge v7, v1, :cond_4

    int-to-char v1, v7

    :goto_3
    aput-char v1, v0, v4

    .line 132
    if-eq v8, v3, :cond_0

    add-int/lit8 v8, v8, 0x1

    .local v8, "k":I
    goto :goto_1

    .end local v8    # "k":I
    .end local v9    # "sp":I
    :cond_3
    move v9, v2

    .line 137
    goto :goto_2

    .line 140
    .restart local v9    # "sp":I
    :cond_4
    const/16 v1, 0x2e

    goto :goto_3

    .line 145
    .end local v0    # "char16":[C
    .end local v7    # "d":I
    .end local v9    # "sp":I
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "builder.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
