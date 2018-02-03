.class public final Lorg/spongycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 96
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 98
    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([C[C)Z
    .locals 5
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 66
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 64
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([I[I)Z
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 153
    goto :goto_0

    .line 156
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 163
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 165
    goto :goto_0

    .line 161
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([J[J)Z
    .locals 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 188
    goto :goto_0

    .line 191
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 193
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 195
    goto :goto_0

    .line 191
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 210
    goto :goto_0

    .line 212
    :cond_3
    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 214
    goto :goto_0

    .line 216
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p0

    if-eq v0, v5, :cond_0

    .line 218
    aget-object v1, p0, v0

    .local v1, "objA":Ljava/lang/Object;
    aget-object v2, p1, v0

    .line 219
    .local v2, "objB":Ljava/lang/Object;
    if-nez v1, :cond_5

    .line 221
    if-eqz v2, :cond_6

    move v3, v4

    .line 223
    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 228
    goto :goto_0

    .line 216
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 479
    if-nez p0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 487
    :goto_0
    return-object v0

    .line 483
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 485
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .prologue
    const/4 v2, 0x0

    .line 492
    if-nez p0, :cond_0

    .line 494
    const/4 p1, 0x0

    .line 501
    .end local p1    # "existing":[B
    :goto_0
    return-object p1

    .line 496
    .restart local p1    # "existing":[B
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 498
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    goto :goto_0

    .line 500
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 540
    if-nez p0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    .line 544
    :cond_0
    array-length v1, p0

    new-array v0, v1, [I

    .line 546
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 3
    .param p0, "data"    # [J

    .prologue
    const/4 v2, 0x0

    .line 553
    if-nez p0, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 561
    :goto_0
    return-object v0

    .line 557
    :cond_0
    array-length v1, p0

    new-array v0, v1, [J

    .line 559
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J[J)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .prologue
    const/4 v2, 0x0

    .line 566
    if-nez p0, :cond_0

    .line 568
    const/4 p1, 0x0

    .line 575
    .end local p1    # "existing":[J
    :goto_0
    return-object p1

    .line 570
    .restart local p1    # "existing":[J
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 572
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object p1

    goto :goto_0

    .line 574
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 593
    if-nez p0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    .line 597
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Ljava/math/BigInteger;

    .line 599
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 3
    .param p0, "data"    # [S

    .prologue
    const/4 v2, 0x0

    .line 580
    if-nez p0, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    .line 584
    :cond_0
    array-length v1, p0

    new-array v0, v1, [S

    .line 586
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    .prologue
    .line 506
    if-nez p0, :cond_0

    .line 508
    const/4 v2, 0x0

    check-cast v2, [[B

    .line 518
    :goto_0
    return-object v2

    .line 511
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[B

    .line 513
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 515
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 518
    goto :goto_0
.end method

.method public static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 525
    const/4 v2, 0x0

    check-cast v2, [[[B

    .line 535
    :goto_0
    return-object v2

    .line 528
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[[B

    .line 530
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 532
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 535
    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 823
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 825
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 827
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 832
    :cond_0
    if-eqz p1, :cond_1

    .line 834
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 838
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .prologue
    const/4 v3, 0x0

    .line 844
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 846
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 848
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 854
    :cond_0
    if-nez p1, :cond_1

    .line 856
    invoke-static {p0, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 860
    :cond_1
    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .prologue
    const/4 v3, 0x0

    .line 866
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 868
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 870
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 877
    :cond_0
    if-nez p3, :cond_1

    .line 879
    invoke-static {p0, p1, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_1
    if-nez p2, :cond_2

    .line 883
    invoke-static {p0, p1, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 885
    :cond_2
    if-nez p1, :cond_3

    .line 887
    invoke-static {p0, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    const/4 v1, 0x0

    .line 134
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_5

    .line 136
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_5
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 250
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 255
    :goto_1
    return v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 238
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 243
    :goto_1
    return v1

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 606
    new-array v0, p1, [B

    .line 608
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 610
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :goto_0
    return-object v0

    .line 614
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 638
    new-array v0, p1, [I

    .line 640
    .local v0, "tmp":[I
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 642
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 654
    new-array v0, p1, [J

    .line 656
    .local v0, "tmp":[J
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 658
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    :goto_0
    return-object v0

    .line 662
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 670
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 672
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 674
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    :goto_0
    return-object v0

    .line 678
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 697
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 699
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 701
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 703
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    :goto_0
    return-object v1

    .line 707
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 715
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 717
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 719
    .local v1, "tmp":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 721
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    :goto_0
    return-object v1

    .line 725
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 735
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 737
    .local v1, "tmp":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 739
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    :goto_0
    return-object v1

    .line 743
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 751
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 753
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 755
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 757
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    :goto_0
    return-object v1

    .line 761
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 264
    aput-byte p1, p0, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 284
    aput-wide p1, p0, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 294
    aput-short p1, p0, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 769
    sub-int v0, p1, p0

    .line 770
    .local v0, "newLength":I
    if-gez v0, :cond_0

    .line 772
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 773
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 774
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 310
    if-nez p0, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 324
    :cond_0
    return v0

    .line 315
    :cond_1
    array-length v1, p0

    .line 316
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 318
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 320
    mul-int/lit16 v0, v0, 0x101

    .line 321
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 3
    .param p0, "data"    # [C

    .prologue
    .line 348
    if-nez p0, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 362
    :cond_0
    return v0

    .line 353
    :cond_1
    array-length v1, p0

    .line 354
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 356
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 358
    mul-int/lit16 v0, v0, 0x101

    .line 359
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    .line 379
    if-nez p0, :cond_1

    .line 381
    const/4 v0, 0x0

    .line 393
    :cond_0
    return v0

    .line 384
    :cond_1
    array-length v1, p0

    .line 385
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 387
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 389
    mul-int/lit16 v0, v0, 0x101

    .line 390
    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([III)I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 398
    if-nez p0, :cond_1

    .line 400
    const/4 v0, 0x0

    .line 412
    :cond_0
    return v0

    .line 403
    :cond_1
    move v1, p2

    .line 404
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 406
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 408
    mul-int/lit16 v0, v0, 0x101

    .line 409
    add-int v2, p1, v1

    aget v2, p0, v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;

    .prologue
    .line 460
    if-nez p0, :cond_1

    .line 462
    const/4 v0, 0x0

    .line 474
    :cond_0
    return v0

    .line 465
    :cond_1
    array-length v1, p0

    .line 466
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 468
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 470
    mul-int/lit16 v0, v0, 0x101

    .line 471
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 3
    .param p0, "data"    # [S

    .prologue
    .line 441
    if-nez p0, :cond_1

    .line 443
    const/4 v0, 0x0

    .line 455
    :cond_0
    return v0

    .line 446
    :cond_1
    array-length v1, p0

    .line 447
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 449
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 451
    mul-int/lit16 v0, v0, 0x101

    .line 452
    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([[S)I
    .locals 4
    .param p0, "shorts"    # [[S

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 433
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 421
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return v0
.end method

.method public static prepend([BB)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 914
    if-nez p0, :cond_0

    .line 916
    new-array v1, v4, [B

    aput-byte p1, v1, v3

    .line 923
    :goto_0
    return-object v1

    .line 919
    :cond_0
    array-length v0, p0

    .line 920
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 921
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    aput-byte p1, v1, v3

    goto :goto_0
.end method

.method public static reverse([B)[B
    .locals 5
    .param p0, "a"    # [B

    .prologue
    .line 956
    if-nez p0, :cond_1

    .line 958
    const/4 v3, 0x0

    .line 969
    :cond_0
    return-object v3

    .line 961
    :cond_1
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v2, p0

    .line 962
    .local v2, "p2":I
    new-array v3, v2, [B

    .local v3, "result":[B
    move v1, v0

    .line 964
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 966
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget-byte v4, p0, v1

    aput-byte v4, v3, v2

    move v1, v0

    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_0
.end method
