.class Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
.super Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHA1Digest"
.end annotation


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
    .line 178
    invoke-direct {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;-><init>()V

    .line 171
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 180
    return-void
.end method

.method private f(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 272
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
    .line 288
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
    .line 280
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->finish()V

    .line 228
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 229
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 230
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 231
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 232
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 234
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 236
    const/16 v0, 0x14

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    .line 296
    const/16 v5, 0x10

    .local v5, "i":I
    :goto_0
    const/16 v10, 0x50

    if-ge v5, v10, :cond_0

    .line 298
    iget-object v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v5, -0x3

    aget v10, v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x8

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0xe

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x10

    aget v11, v11, v12

    xor-int v9, v10, v11

    .line 299
    .local v9, "t":I
    iget-object v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 305
    .end local v9    # "t":I
    :cond_0
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 306
    .local v0, "A":I
    iget v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 307
    .local v1, "B":I
    iget v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 308
    .local v2, "C":I
    iget v3, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 309
    .local v3, "D":I
    iget v4, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 314
    .local v4, "E":I
    const/4 v6, 0x0

    .line 316
    .local v6, "idx":I
    const/4 v8, 0x0

    .local v8, "j":I
    move v7, v6

    .end local v6    # "idx":I
    .local v7, "idx":I
    :goto_1
    const/4 v10, 0x4

    if-ge v8, v10, :cond_1

    .line 320
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 321
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 323
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 324
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 326
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 327
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 329
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 330
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 332
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 333
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 316
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_1

    .line 339
    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x4

    if-ge v8, v10, :cond_2

    .line 343
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 344
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 346
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 347
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 349
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 350
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 352
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 353
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 355
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 356
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 339
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_2

    .line 362
    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v10, 0x4

    if-ge v8, v10, :cond_3

    .line 366
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 367
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 369
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 370
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 372
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 373
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 375
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 376
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 378
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 379
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 362
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_3

    .line 385
    :cond_3
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x3

    if-gt v8, v10, :cond_4

    .line 389
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 390
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 392
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 393
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 395
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 396
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 398
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 399
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 401
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 402
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 385
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_4

    .line 406
    :cond_4
    iget v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 407
    iget v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 408
    iget v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 409
    iget v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 410
    iget v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 415
    const/4 v10, 0x0

    iput v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 416
    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x10

    if-ge v5, v10, :cond_5

    .line 418
    iget-object v10, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 420
    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 213
    iget v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 219
    iget-object v0, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 220
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 198
    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    .line 199
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 200
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 201
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 202
    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    iget v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    aput v0, v1, v2

    .line 204
    iget v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 208
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->reset()V

    .line 246
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 247
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 248
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 249
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 250
    const v1, -0x3c2d1e10

    iput v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 252
    iput v2, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method
