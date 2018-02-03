.class public Lorg/spongycastle/crypto/digests/SHA1Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 20
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 28
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/SHA1Digest;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 20
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    .line 40
    return-void
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/SHA1Digest;

    .prologue
    const/4 v3, 0x0

    .line 61
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 62
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 63
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 64
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 65
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 67
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 69
    return-void
.end method

.method private f(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 161
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 177
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 169
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->finish()V

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 121
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 123
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 125
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    .line 185
    const/16 v5, 0x10

    .local v5, "i":I
    :goto_0
    const/16 v10, 0x50

    if-ge v5, v10, :cond_0

    .line 187
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v5, -0x3

    aget v10, v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x8

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0xe

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x10

    aget v11, v11, v12

    xor-int v9, v10, v11

    .line 188
    .local v9, "t":I
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v9    # "t":I
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 195
    .local v0, "A":I
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 196
    .local v1, "B":I
    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 197
    .local v2, "C":I
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 198
    .local v3, "D":I
    iget v4, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 203
    .local v4, "E":I
    const/4 v6, 0x0

    .line 205
    .local v6, "idx":I
    const/4 v8, 0x0

    .local v8, "j":I
    move v7, v6

    .end local v6    # "idx":I
    .local v7, "idx":I
    :goto_1
    const/4 v10, 0x4

    if-ge v8, v10, :cond_1

    .line 209
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 210
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 212
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 213
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 215
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 216
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 218
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 219
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 221
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 222
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 205
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_1

    .line 228
    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x4

    if-ge v8, v10, :cond_2

    .line 232
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 233
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 235
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 236
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 238
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 239
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 241
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 242
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 244
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 245
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 228
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_2

    .line 251
    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v10, 0x4

    if-ge v8, v10, :cond_3

    .line 255
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 256
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 258
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 259
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 261
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 262
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 264
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 265
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 267
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 268
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 251
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_3

    .line 274
    :cond_3
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x3

    if-gt v8, v10, :cond_4

    .line 278
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 279
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 281
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 282
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 284
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 285
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 287
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 288
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 290
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 291
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 274
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_4

    .line 295
    :cond_4
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 296
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 297
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 298
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 299
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 304
    const/4 v10, 0x0

    iput v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 305
    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x10

    if-ge v5, v10, :cond_5

    .line 307
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 309
    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 102
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 109
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 87
    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    .line 88
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 89
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 90
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    aput v0, v1, v2

    .line 93
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 97
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 135
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 136
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 137
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 138
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 139
    const v1, -0x3c2d1e10

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 141
    iput v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    aput v2, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 318
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 320
    .local v0, "d":Lorg/spongycastle/crypto/digests/SHA1Digest;
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 321
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    .line 322
    return-void
.end method
