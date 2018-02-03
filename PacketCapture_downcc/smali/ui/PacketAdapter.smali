.class public final Lui/PacketAdapter;
.super Landroid/widget/BaseAdapter;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/PacketAdapter$Tag;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private isHexMode:Z

.field private final reader:Lcapt/CaptReader;

.field private final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcapt/CaptReader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reader"    # Lcapt/CaptReader;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lui/PacketAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lui/PacketAdapter;->reader:Lcapt/CaptReader;

    .line 138
    iget-object v0, p0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lui/PacketAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lui/PacketAdapter;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const-string v3, "view"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type ui.PacketAdapter.Tag"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v16, Lui/PacketAdapter$Tag;

    .line 210
    .local v16, "tag":Lui/PacketAdapter$Tag;
    move-object/from16 v0, p0

    iget-object v3, v0, Lui/PacketAdapter;->headers:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcapt/CaptHeader;

    .line 211
    .local v12, "h":Lcapt/CaptHeader;
    const/16 v3, 0x10

    new-array v11, v3, [Ljava/lang/Character;

    const/4 v3, 0x0

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x3

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x4

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x5

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x6

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x7

    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0x8

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0x9

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xa

    const/16 v4, 0x61

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xb

    const/16 v4, 0x62

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xc

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xd

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xe

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    const/16 v3, 0xf

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v11, v3

    .local v11, "elements$iv":[Ljava/lang/Object;
    move-object v15, v11

    .line 213
    .local v15, "table":[Ljava/lang/Character;
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewNumber()Landroid/widget/TextView;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v12}, Lcapt/CaptHeader;->getDir()I

    move-result v3

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v4

    if-ne v3, v4, :cond_2

    .line 215
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewDirection()Landroid/widget/TextView;

    move-result-object v4

    const-string v3, "--->"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 222
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewTime()Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lui/PacketAdapter;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v12}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lui/PacketAdapter;->reader:Lcapt/CaptReader;

    const-string v4, "h"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcapt/CaptReader;->readBody(Lcapt/CaptHeader;)[B

    move-result-object v10

    .line 226
    .local v10, "data":[B
    if-nez v10, :cond_3

    .line 227
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v4

    const-string v3, "no data"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_1
    return-void

    .line 219
    .end local v10    # "data":[B
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewDirection()Landroid/widget/TextView;

    move-result-object v4

    const-string v3, "<---"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 229
    .restart local v10    # "data":[B
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lui/PacketAdapter;->isHexMode:Z

    if-eqz v3, :cond_a

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    new-instance v3, Lkotlin/ranges/IntRange;

    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Lkotlin/ranges/IntProgression;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v18

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v19

    if-lez v19, :cond_5

    move/from16 v0, v18

    if-gt v3, v0, :cond_9

    move/from16 v17, v3

    .line 232
    :goto_2
    const/16 v3, 0x44

    new-array v2, v3, [C

    .line 233
    .local v2, "char16":[C
    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([CCIIILjava/lang/Object;)V

    .line 234
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    aput-char v4, v2, v3

    .line 235
    const/4 v13, 0x0

    const/16 v4, 0xf

    .line 236
    :goto_3
    add-int v3, v17, v13

    array-length v5, v10

    if-lt v3, v5, :cond_6

    .line 246
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 231
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    add-int v3, v17, v19

    move/from16 v17, v3

    goto :goto_2

    .end local v2    # "char16":[C
    :cond_5
    move/from16 v0, v18

    if-lt v3, v0, :cond_9

    move/from16 v17, v3

    goto :goto_2

    .line 239
    .restart local v2    # "char16":[C
    :cond_6
    add-int v3, v17, v13

    aget-byte v3, v10, v3

    and-int/lit16 v9, v3, 0xff

    .line 240
    .local v9, "d":I
    const/16 v3, 0x8

    if-lt v13, v3, :cond_7

    const/4 v14, 0x1

    .line 241
    .local v14, "sp":I
    :goto_4
    mul-int/lit8 v3, v13, 0x3

    add-int/2addr v3, v14

    ushr-int/lit8 v5, v9, 0x4

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v2, v3

    .line 242
    mul-int/lit8 v3, v13, 0x3

    add-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v9, 0xf

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v2, v3

    .line 243
    add-int/lit8 v3, v13, 0x32

    add-int v5, v3, v14

    const/16 v3, 0x14

    if-lt v9, v3, :cond_8

    const/16 v3, 0x80

    if-ge v9, v3, :cond_8

    int-to-char v3, v9

    :goto_5
    aput-char v3, v2, v5

    .line 235
    if-eq v13, v4, :cond_4

    add-int/lit8 v13, v13, 0x1

    .local v13, "k":I
    goto :goto_3

    .line 240
    .end local v13    # "k":I
    .end local v14    # "sp":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    .line 243
    .restart local v14    # "sp":I
    :cond_8
    const/16 v3, 0x2e

    goto :goto_5

    .line 248
    .end local v2    # "char16":[C
    .end local v9    # "d":I
    .end local v14    # "sp":I
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 250
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lui/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v4

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lui/PacketAdapter;->headers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lui/PacketAdapter;->headers:Ljava/util/ArrayList;

    .line 148
    .local v0, "h":Ljava/util/ArrayList;
    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move-object v1, v2

    .line 154
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    .line 151
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    move-object v1, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "parent"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    if-nez p2, :cond_0

    .line 164
    invoke-virtual {p0, p3}, Lui/PacketAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lui/PacketAdapter;->bindView(Landroid/view/View;I)V

    .line 169
    return-object v0

    .line 166
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0b0012

    const-string v3, "parent"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lui/PacketAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "v":Landroid/view/View;
    new-instance v1, Lui/PacketAdapter$Tag;

    const v3, 0x7f0b0096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "v.findViewById(R.id.number)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0092

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "v.findViewById(R.id.direction)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b008a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "v.findViewById(R.id.time)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "v.findViewById(R.id.text)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {v1, v3, v4, v5, v6}, Lui/PacketAdapter$Tag;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 192
    .local v1, "tag":Lui/PacketAdapter$Tag;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v3, p0, Lui/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "DroidSansMono.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 195
    .local v0, "face":Landroid/graphics/Typeface;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    const-string v3, "v"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final setData(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lui/PacketAdapter;->headers:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p0}, Lui/PacketAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method public final setHexMode(Z)V
    .locals 1
    .param p1, "hexMode"    # Z

    .prologue
    .line 173
    iget-boolean v0, p0, Lui/PacketAdapter;->isHexMode:Z

    if-eq v0, p1, :cond_0

    .line 174
    iput-boolean p1, p0, Lui/PacketAdapter;->isHexMode:Z

    .line 175
    invoke-virtual {p0}, Lui/PacketAdapter;->notifyDataSetChanged()V

    .line 177
    :cond_0
    return-void
.end method
