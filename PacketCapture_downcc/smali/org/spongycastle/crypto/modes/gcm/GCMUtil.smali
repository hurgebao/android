.class abstract Lorg/spongycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final LOOKUP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->generateLookup()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asBytes([I[B)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 65
    return-void
.end method

.method static asInts([B[I)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 89
    return-void
.end method

.method static asInts([B)[I
    .locals 2
    .param p0, "x"    # [B

    .prologue
    .line 81
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 82
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 83
    return-object v0
.end method

.method private static generateLookup()[I
    .locals 7

    .prologue
    const/16 v6, 0x100

    .line 14
    new-array v2, v6, [I

    .line 16
    .local v2, "lookup":[I
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 18
    const/4 v3, 0x0

    .line 19
    .local v3, "v":I
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 21
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    .line 23
    const/high16 v4, -0x1f000000

    rsub-int/lit8 v5, v1, 0x7

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    .line 19
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 26
    :cond_1
    aput v3, v2, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    .end local v3    # "v":I
    :cond_2
    return-object v2
.end method

.method static multiply([B[B)V
    .locals 8
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 105
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    .line 106
    .local v3, "r0":[B
    new-array v4, v7, [B

    .line 108
    .local v4, "r1":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 110
    aget-byte v0, p1, v1

    .line 111
    .local v0, "bits":B
    const/4 v2, 0x7

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_2

    .line 113
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 115
    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 118
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)B

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    aget-byte v5, v3, v6

    xor-int/lit8 v5, v5, -0x1f

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 111
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "bits":B
    .end local v2    # "j":I
    :cond_3
    invoke-static {v4, v6, p0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-void
.end method

.method static multiply([I[I)V
    .locals 9
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 130
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v3

    .line 131
    .local v3, "r0":[I
    new-array v4, v8, [I

    .line 133
    .local v4, "r1":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 135
    aget v0, p1, v1

    .line 136
    .local v0, "bits":I
    const/16 v2, 0x1f

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_2

    .line 138
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 140
    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    .line 143
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    aget v5, v3, v7

    const/high16 v6, -0x1f000000

    xor-int/2addr v5, v6

    aput v5, v3, v7

    .line 136
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "bits":I
    .end local v2    # "j":I
    :cond_3
    invoke-static {v4, v7, p0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-void
.end method

.method static multiplyP([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 190
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, -0x1f000000

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 194
    :cond_0
    return-void
.end method

.method static multiplyP8([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 210
    const/16 v1, 0x8

    invoke-static {p0, v1, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)I

    move-result v0

    .line 211
    .local v0, "c":I
    const/4 v1, 0x0

    aget v2, p1, v1

    sget-object v3, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 v4, v0, 0x18

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, p1, v1

    .line 212
    return-void
.end method

.method static oneAsInts()[I
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 44
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 45
    return-object v0
.end method

.method static shiftRight([B)B
    .locals 5
    .param p0, "x"    # [B

    .prologue
    .line 225
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v1, 0x0

    .line 228
    .local v1, "c":I
    :cond_0
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .line 229
    .local v0, "b":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 230
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v1, v4, 0x7

    .line 231
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 232
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 233
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v1, v4, 0x7

    .line 234
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .line 235
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 236
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v1, v4, 0x7

    .line 237
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 238
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 239
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v1, v4, 0x7

    .line 241
    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 242
    int-to-byte v4, v1

    return v4
.end method

.method static shiftRight([I)I
    .locals 7
    .param p0, "x"    # [I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    aget v0, p0, v3

    .line 288
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    aput v2, p0, v3

    .line 289
    shl-int/lit8 v1, v0, 0x1f

    .line 290
    .local v1, "c":I
    aget v0, p0, v4

    .line 291
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v4

    .line 292
    shl-int/lit8 v1, v0, 0x1f

    .line 293
    aget v0, p0, v5

    .line 294
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v5

    .line 295
    shl-int/lit8 v1, v0, 0x1f

    .line 296
    aget v0, p0, v6

    .line 297
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v6

    .line 298
    shl-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method static shiftRight([I[I)I
    .locals 7
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    aget v0, p0, v3

    .line 313
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    aput v2, p1, v3

    .line 314
    shl-int/lit8 v1, v0, 0x1f

    .line 315
    .local v1, "c":I
    aget v0, p0, v4

    .line 316
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v4

    .line 317
    shl-int/lit8 v1, v0, 0x1f

    .line 318
    aget v0, p0, v5

    .line 319
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v5

    .line 320
    shl-int/lit8 v1, v0, 0x1f

    .line 321
    aget v0, p0, v6

    .line 322
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v6

    .line 323
    shl-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method static shiftRightN([II[I)I
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    aget v0, p0, v4

    .local v0, "b":I
    rsub-int/lit8 v2, p1, 0x20

    .line 383
    .local v2, "nInv":I
    ushr-int v3, v0, p1

    aput v3, p2, v4

    .line 384
    shl-int v1, v0, v2

    .line 385
    .local v1, "c":I
    aget v0, p0, v5

    .line 386
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v5

    .line 387
    shl-int v1, v0, v2

    .line 388
    aget v0, p0, v6

    .line 389
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v6

    .line 390
    shl-int v1, v0, v2

    .line 391
    aget v0, p0, v7

    .line 392
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v7

    .line 393
    shl-int v3, v0, v2

    return v3
.end method

.method static xor([B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 401
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 402
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 403
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 404
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 406
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 407
    return-void
.end method

.method static xor([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    aget v0, p0, v2

    aget v1, p1, v2

    xor-int/2addr v0, v1

    aput v0, p0, v2

    .line 433
    aget v0, p0, v3

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p0, v3

    .line 434
    aget v0, p0, v4

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p0, v4

    .line 435
    aget v0, p0, v5

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p0, v5

    .line 436
    return-void
.end method

.method static xor([I[I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    aget v0, p0, v2

    aget v1, p1, v2

    xor-int/2addr v0, v1

    aput v0, p2, v2

    .line 441
    aget v0, p0, v3

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p2, v3

    .line 442
    aget v0, p0, v4

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p2, v4

    .line 443
    aget v0, p0, v5

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p2, v5

    .line 444
    return-void
.end method
