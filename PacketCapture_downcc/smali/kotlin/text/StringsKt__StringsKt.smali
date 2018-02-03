.class Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringsJVMKt;
.source "Strings.kt"


# direct methods
.method public static final synthetic access$findAnyOf(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "strings"    # Ljava/util/Collection;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findAnyOf(Ljava/lang/CharSequence;[CIZZ)Lkotlin/Pair;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZZ)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    if-nez p2, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 736
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "suffix":Ljava/lang/CharSequence;
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    .line 738
    :goto_0
    return v0

    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    .restart local p1    # "suffix":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static bridge synthetic endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 734
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static final findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;
    .locals 17
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "strings"    # Ljava/util/Collection;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    if-nez p3, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 853
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "strings":Ljava/util/Collection;
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 854
    .local v2, "string":Ljava/lang/String;
    if-nez p4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    .line 855
    .local v12, "index":I
    :goto_0
    if-gez v12, :cond_1

    const/4 v1, 0x0

    .line 872
    .end local v2    # "string":Ljava/lang/String;
    .end local v12    # "index":I
    :goto_1
    return-object v1

    .line 854
    .restart local v2    # "string":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    goto :goto_0

    .line 855
    .restart local v12    # "index":I
    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 858
    .end local v2    # "string":Ljava/lang/String;
    .end local v12    # "index":I
    .restart local p1    # "strings":Ljava/util/Collection;
    :cond_2
    if-nez p4, :cond_5

    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Lkotlin/ranges/IntProgression;

    move-object v13, v1

    .line 860
    .local v13, "indices":Lkotlin/ranges/IntProgression;
    :goto_2
    move-object/from16 v0, p0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 861
    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v9

    if-lez v9, :cond_6

    if-gt v6, v1, :cond_7

    :cond_3
    :goto_3
    move-object/from16 v10, p1

    .line 862
    check-cast v10, Ljava/lang/Iterable;

    .line 1336
    .local v10, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v3, v11

    check-cast v3, Ljava/lang/String;

    .line 862
    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v14, v11

    .end local v3    # "it":Ljava/lang/String;
    .end local v11    # "element$iv":Ljava/lang/Object;
    :goto_4
    check-cast v14, Ljava/lang/String;

    .line 863
    .local v14, "matchingString":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 864
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 858
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v13    # "indices":Lkotlin/ranges/IntProgression;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_5
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    move/from16 v0, p2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v13

    goto :goto_2

    .line 861
    .restart local v13    # "indices":Lkotlin/ranges/IntProgression;
    :cond_6
    if-ge v6, v1, :cond_3

    .line 872
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1337
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    .line 861
    .restart local v14    # "matchingString":Ljava/lang/String;
    :cond_9
    if-eq v6, v1, :cond_7

    add-int/2addr v6, v9

    goto :goto_3

    .line 867
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_a
    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v15

    if-lez v15, :cond_c

    if-gt v7, v1, :cond_7

    :goto_5
    move-object/from16 v10, p1

    .line 868
    check-cast v10, Ljava/lang/Iterable;

    .line 1338
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "element$iv":Ljava/lang/Object;
    move-object v3, v11

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "it":Ljava/lang/String;
    move-object v4, v3

    .line 868
    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v14, v11

    .end local v3    # "it":Ljava/lang/String;
    .end local v11    # "element$iv":Ljava/lang/Object;
    :goto_6
    check-cast v14, Ljava/lang/String;

    .line 869
    .restart local v14    # "matchingString":Ljava/lang/String;
    if-eqz v14, :cond_e

    .line 870
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto/16 :goto_1

    .line 867
    .end local v10    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v14    # "matchingString":Ljava/lang/String;
    :cond_c
    if-lt v7, v1, :cond_7

    goto :goto_5

    .line 1339
    .restart local v10    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 867
    .restart local v14    # "matchingString":Ljava/lang/String;
    :cond_e
    if-eq v7, v1, :cond_7

    add-int/2addr v7, v15

    goto :goto_5
.end method

.method private static final findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZZ)Lkotlin/Pair;
    .locals 14
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CIZZ)",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    if-nez p3, :cond_2

    array-length v9, p1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    instance-of v9, p0, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 791
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([C)C

    move-result v2

    .line 792
    .local v2, "char":C
    if-nez p4, :cond_0

    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    move/from16 v0, p2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 793
    .local v4, "index":I
    :goto_0
    if-gez v4, :cond_1

    const/4 v9, 0x0

    .line 804
    .end local v2    # "char":C
    .end local v4    # "index":I
    :goto_1
    return-object v9

    .line 792
    .restart local v2    # "char":C
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    move/from16 v0, p2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    goto :goto_0

    .line 793
    .restart local v4    # "index":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    goto :goto_1

    .line 796
    .end local v2    # "char":C
    .end local v4    # "index":I
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_2
    if-nez p4, :cond_4

    const/4 v9, 0x0

    move/from16 v0, p2

    invoke-static {v0, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    new-instance v9, Lkotlin/ranges/IntRange;

    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Lkotlin/ranges/IntProgression;

    move-object v6, v9

    .line 797
    .local v6, "indices":Lkotlin/ranges/IntProgression;
    :goto_2
    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v9

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v10

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v11

    if-lez v11, :cond_5

    if-gt v9, v10, :cond_6

    .line 798
    :cond_3
    :goto_3
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 799
    .local v3, "charAtIndex":C
    move-object v1, p1

    .line 1330
    .local v1, "$receiver$iv":[C
    const/4 v5, 0x0

    array-length v12, v1

    add-int/lit8 v12, v12, -0x1

    if-gt v5, v12, :cond_8

    .line 1331
    :goto_4
    aget-char v7, v1, v5

    .line 799
    .local v7, "it":C
    move/from16 v0, p3

    invoke-static {v7, v3, v0}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v13

    if-eqz v13, :cond_7

    move v8, v5

    .line 800
    .end local v7    # "it":C
    .local v8, "matchingCharIndex":I
    :goto_5
    if-ltz v8, :cond_9

    .line 801
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-char v10, p1, v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    goto :goto_1

    .line 796
    .end local v1    # "$receiver$iv":[C
    .end local v3    # "charAtIndex":C
    .end local v6    # "indices":Lkotlin/ranges/IntProgression;
    .end local v8    # "matchingCharIndex":I
    :cond_4
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v9

    move/from16 v0, p2

    invoke-static {v0, v9}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v6

    goto :goto_2

    .line 797
    .restart local v6    # "indices":Lkotlin/ranges/IntProgression;
    :cond_5
    if-ge v9, v10, :cond_3

    .line 804
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 1330
    .restart local v1    # "$receiver$iv":[C
    .restart local v3    # "charAtIndex":C
    .restart local v7    # "it":C
    :cond_7
    if-eq v5, v12, :cond_8

    add-int/lit8 v5, v5, 0x1

    .local v5, "index$iv":I
    goto :goto_4

    .line 1335
    .end local v5    # "index$iv":I
    .end local v7    # "it":C
    :cond_8
    const/4 v8, -0x1

    goto :goto_5

    .line 797
    .restart local v8    # "matchingCharIndex":I
    :cond_9
    if-eq v9, v10, :cond_6

    add-int/2addr v9, v11

    goto :goto_3
.end method

.method public static final getIndices(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v1
.end method

.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "char"    # C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 947
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lkotlin/text/StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    .line 946
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 949
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p1

    .line 961
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result v0

    .line 960
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 963
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static final indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "other"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "ignoreCase"    # Z
    .param p5, "last"    # Z

    .prologue
    const/4 v1, 0x0

    .line 832
    if-nez p5, :cond_2

    .line 833
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Lkotlin/ranges/IntProgression;

    move-object v6, v0

    .line 837
    .local v6, "indices":Lkotlin/ranges/IntProgression;
    :goto_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 838
    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_3

    if-gt v3, v7, :cond_4

    :cond_0
    :goto_1
    move-object v0, p1

    .line 839
    check-cast v0, Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 847
    :cond_1
    :goto_2
    return v3

    .line 835
    .end local v6    # "indices":Lkotlin/ranges/IntProgression;
    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v6

    goto :goto_0

    .line 838
    .restart local v6    # "indices":Lkotlin/ranges/IntProgression;
    :cond_3
    if-ge v3, v7, :cond_0

    .line 847
    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    .line 838
    :cond_5
    if-eq v3, v7, :cond_4

    add-int/2addr v3, v8

    goto :goto_1

    .line 843
    :cond_6
    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_7

    if-gt v3, v7, :cond_4

    .line 844
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    if-eq v3, v7, :cond_4

    add-int/2addr v3, v8

    goto :goto_3

    :cond_7
    if-lt v3, v7, :cond_4

    goto :goto_3
.end method

.method static bridge synthetic indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .locals 6

    .prologue
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 831
    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    return v0

    :cond_0
    move v5, p5

    goto :goto_0
.end method

.method public static bridge synthetic indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 945
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    return v0
.end method

.method public static bridge synthetic indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 959
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static final indexOfAny(Ljava/lang/CharSequence;[CIZ)I
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/text/StringsKt__StringsKt;->findAnyOf$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZZ)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 6
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p1

    .line 991
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    .line 990
    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 993
    .restart local p0    # "$receiver":Ljava/lang/CharSequence;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "$receiver":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static bridge synthetic lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 989
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static final rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CIZI)",
            "Lkotlin/sequences/Sequence",
            "<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1096
    if-ltz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit must be non-negative, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1098
    :cond_1
    new-instance v1, Lkotlin/text/DelimitedRangesSequence;

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    invoke-direct {v0, p1, p3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>([CZ)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, p0, p2, p4, v0}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    move-object v0, v1

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method private static final rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "IZI)",
            "Lkotlin/sequences/Sequence",
            "<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    if-ltz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit must be non-negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1118
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "delimiters":[Ljava/lang/String;
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1120
    .local v0, "delimitersList":Ljava/util/List;
    new-instance v2, Lkotlin/text/DelimitedRangesSequence;

    new-instance v1, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;

    invoke-direct {v1, v0, p3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;-><init>(Ljava/util/List;Z)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {v2, p0, p2, p4, v1}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    move-object v1, v2

    check-cast v1, Lkotlin/sequences/Sequence;

    return-object v1
.end method

.method static bridge synthetic rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1095
    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1116
    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 5
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "thisOffset"    # I
    .param p2, "other"    # Ljava/lang/CharSequence;
    .param p3, "otherOffset"    # I
    .param p4, "length"    # I
    .param p5, "ignoreCase"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "other"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    if-ltz p3, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    if-gt p1, v2, :cond_0

    .line 688
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    if-le p3, v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 692
    :cond_1
    add-int/lit8 v2, p4, -0x1

    if-gt v1, v2, :cond_2

    move v0, v1

    .line 693
    :goto_1
    add-int v3, p1, v0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p3, v0

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4, p5}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .local v0, "index":I
    goto :goto_1

    .line 696
    .end local v0    # "index":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "$receiver"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 529
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "$receiver":Ljava/lang/String;
    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    :cond_0
    return-object p0
.end method

.method public static final split(Ljava/lang/CharSequence;[CZI)Ljava/util/List;
    .locals 10
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [C
    .param p2, "ignoreCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v7

    .line 1344
    .local v7, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 1345
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1346
    .local v9, "item$iv$iv":Ljava/lang/Object;
    check-cast v9, Lkotlin/ranges/IntRange;

    .line 1173
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    invoke-static {p0, v9}, Lkotlin/text/StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1347
    :cond_0
    check-cast v8, Ljava/util/List;

    .line 1173
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    return-object v8
.end method

.method public static final split(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;
    .locals 10
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "delimiters"    # [Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v7

    .line 1340
    .local v7, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 1341
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1342
    .local v9, "item$iv$iv":Ljava/lang/Object;
    check-cast v9, Lkotlin/ranges/IntRange;

    .line 1153
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    invoke-static {p0, v9}, Lkotlin/text/StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1343
    :cond_0
    check-cast v8, Ljava/util/List;

    .line 1153
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    return-object v8
.end method

.method public static bridge synthetic split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1172
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->split(Ljava/lang/CharSequence;[CZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    .line 1152
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt;->split(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lkotlin/ranges/IntRange;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v7, "$receiver"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    move-object v0, p0

    .line 1296
    .local v0, "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 1297
    .local v6, "startIndex$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 1298
    .local v1, "endIndex$iv":I
    const/4 v5, 0x0

    .line 1300
    .local v5, "startFound$iv":Z
    :goto_0
    if-gt v6, v1, :cond_3

    .line 1301
    if-nez v5, :cond_0

    move v2, v6

    .line 1302
    .local v2, "index$iv":I
    :goto_1
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 128
    .local v4, "p1":C
    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v3

    .line 1304
    .local v3, "match$iv":Z
    if-nez v5, :cond_2

    .line 1305
    if-nez v3, :cond_1

    .line 1306
    const/4 v5, 0x1

    goto :goto_0

    .end local v2    # "index$iv":I
    .end local v3    # "match$iv":Z
    .end local v4    # "p1":C
    :cond_0
    move v2, v1

    .line 1301
    goto :goto_1

    .line 1308
    .restart local v2    # "index$iv":I
    .restart local v3    # "match$iv":Z
    .restart local v4    # "p1":C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1311
    :cond_2
    if-nez v3, :cond_4

    .line 1318
    .end local v2    # "index$iv":I
    .end local v3    # "match$iv":Z
    .end local v4    # "p1":C
    :cond_3
    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 128
    return-object v7

    .line 1314
    .restart local v2    # "index$iv":I
    .restart local v3    # "match$iv":Z
    .restart local v4    # "p1":C
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static final varargs trim(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/String;
    .param p1, "chars"    # [C

    .prologue
    const-string v8, "$receiver"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "chars"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v0, p0

    .local v0, "$receiver$iv":Ljava/lang/String;
    move-object v1, v0

    .line 1250
    check-cast v1, Ljava/lang/CharSequence;

    .line 1251
    .local v1, "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 1252
    .local v7, "startIndex$iv$iv":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 1253
    .local v2, "endIndex$iv$iv":I
    const/4 v6, 0x0

    .line 1255
    .local v6, "startFound$iv$iv":Z
    :goto_0
    if-gt v7, v2, :cond_3

    .line 1256
    if-nez v6, :cond_0

    move v3, v7

    .line 1257
    .local v3, "index$iv$iv":I
    :goto_1
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 103
    .local v4, "it":C
    invoke-static {p1, v4}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result v5

    .line 1259
    .local v5, "match$iv$iv":Z
    if-nez v6, :cond_2

    .line 1260
    if-nez v5, :cond_1

    .line 1261
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "index$iv$iv":I
    .end local v4    # "it":C
    .end local v5    # "match$iv$iv":Z
    :cond_0
    move v3, v2

    .line 1256
    goto :goto_1

    .line 1263
    .restart local v3    # "index$iv$iv":I
    .restart local v4    # "it":C
    .restart local v5    # "match$iv$iv":Z
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1266
    :cond_2
    if-nez v5, :cond_4

    .line 1273
    .end local v3    # "index$iv$iv":I
    .end local v4    # "it":C
    .end local v5    # "match$iv$iv":Z
    :cond_3
    add-int/lit8 v8, v2, 0x1

    invoke-interface {v1, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1250
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    return-object v8

    .line 1269
    .restart local v3    # "index$iv$iv":I
    .restart local v4    # "it":C
    .restart local v5    # "match$iv$iv":Z
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static final trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    move-object v0, p0

    .line 1324
    .local v0, "$receiver$iv":Ljava/lang/CharSequence;
    invoke-static {v0}, Lkotlin/text/StringsKt;->getIndices(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntProgression;

    invoke-static {v2}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_1

    if-gt v2, v4, :cond_2

    .line 1325
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 150
    .local v1, "p1":C
    invoke-static {v1}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1326
    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 150
    .end local v1    # "p1":C
    :goto_1
    return-object v2

    .line 1324
    :cond_1
    if-ge v2, v4, :cond_0

    .line 1328
    :cond_2
    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 1324
    .restart local v1    # "p1":C
    :cond_3
    if-eq v2, v4, :cond_2

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public static final trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "$receiver"    # Ljava/lang/CharSequence;

    .prologue
    const-string v3, "$receiver"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    move-object v0, p0

    .line 1319
    .local v0, "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    .line 1320
    :goto_0
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 139
    .local v2, "p1":C
    invoke-static {v2}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1321
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 139
    .end local v2    # "p1":C
    :goto_1
    return-object v3

    .line 1319
    .restart local v2    # "p1":C
    :cond_0
    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .local v1, "index$iv":I
    goto :goto_0

    .line 1323
    .end local v1    # "index$iv":I
    .end local v2    # "p1":C
    :cond_1
    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1
.end method
