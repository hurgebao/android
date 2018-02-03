.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# static fields
.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 26
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "rounds"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 35
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 36
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 37
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 38
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 59
    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'rounds\' must be a positive, even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    .line 65
    return-void
.end method

.method private limitExceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 447
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    .line 449
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 451
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 455
    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 463
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 464
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    .line 466
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 468
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 472
    :cond_0
    return v0
.end method

.method private resetLimitCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 440
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 441
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 442
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 443
    return-void
.end method

.method protected static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 435
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
    .locals 21
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I

    .prologue
    .line 340
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 342
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 344
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 346
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 348
    :cond_1
    rem-int/lit8 v19, p0, 0x2

    if-eqz v19, :cond_2

    .line 350
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Number of rounds must be even"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 353
    :cond_2
    const/16 v19, 0x0

    aget v3, p1, v19

    .line 354
    .local v3, "x00":I
    const/16 v19, 0x1

    aget v4, p1, v19

    .line 355
    .local v4, "x01":I
    const/16 v19, 0x2

    aget v5, p1, v19

    .line 356
    .local v5, "x02":I
    const/16 v19, 0x3

    aget v6, p1, v19

    .line 357
    .local v6, "x03":I
    const/16 v19, 0x4

    aget v7, p1, v19

    .line 358
    .local v7, "x04":I
    const/16 v19, 0x5

    aget v8, p1, v19

    .line 359
    .local v8, "x05":I
    const/16 v19, 0x6

    aget v9, p1, v19

    .line 360
    .local v9, "x06":I
    const/16 v19, 0x7

    aget v10, p1, v19

    .line 361
    .local v10, "x07":I
    const/16 v19, 0x8

    aget v11, p1, v19

    .line 362
    .local v11, "x08":I
    const/16 v19, 0x9

    aget v12, p1, v19

    .line 363
    .local v12, "x09":I
    const/16 v19, 0xa

    aget v13, p1, v19

    .line 364
    .local v13, "x10":I
    const/16 v19, 0xb

    aget v14, p1, v19

    .line 365
    .local v14, "x11":I
    const/16 v19, 0xc

    aget v15, p1, v19

    .line 366
    .local v15, "x12":I
    const/16 v19, 0xd

    aget v16, p1, v19

    .line 367
    .local v16, "x13":I
    const/16 v19, 0xe

    aget v17, p1, v19

    .line 368
    .local v17, "x14":I
    const/16 v19, 0xf

    aget v18, p1, v19

    .line 370
    .local v18, "x15":I
    move/from16 v2, p0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 372
    add-int v19, v3, v15

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 373
    add-int v19, v7, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 374
    add-int v19, v11, v7

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 375
    add-int v19, v15, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 376
    add-int v19, v8, v4

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 377
    add-int v19, v12, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 378
    add-int v19, v16, v12

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 379
    add-int v19, v4, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 380
    add-int v19, v13, v9

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 381
    add-int v19, v17, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 382
    add-int v19, v5, v17

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 383
    add-int v19, v9, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 384
    add-int v19, v18, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 385
    add-int v19, v6, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 386
    add-int v19, v10, v6

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 387
    add-int v19, v14, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 389
    add-int v19, v3, v6

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 390
    add-int v19, v4, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 391
    add-int v19, v5, v4

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 392
    add-int v19, v6, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 393
    add-int v19, v8, v7

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 394
    add-int v19, v9, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 395
    add-int v19, v10, v9

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 396
    add-int v19, v7, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 397
    add-int v19, v13, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 398
    add-int v19, v14, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 399
    add-int v19, v11, v14

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 400
    add-int v19, v12, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 401
    add-int v19, v18, v17

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 402
    add-int v19, v15, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 403
    add-int v19, v16, v15

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 404
    add-int v19, v17, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 370
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 407
    :cond_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p1, v20

    add-int v20, v20, v3

    aput v20, p2, v19

    .line 408
    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, p1, v20

    add-int v20, v20, v4

    aput v20, p2, v19

    .line 409
    const/16 v19, 0x2

    const/16 v20, 0x2

    aget v20, p1, v20

    add-int v20, v20, v5

    aput v20, p2, v19

    .line 410
    const/16 v19, 0x3

    const/16 v20, 0x3

    aget v20, p1, v20

    add-int v20, v20, v6

    aput v20, p2, v19

    .line 411
    const/16 v19, 0x4

    const/16 v20, 0x4

    aget v20, p1, v20

    add-int v20, v20, v7

    aput v20, p2, v19

    .line 412
    const/16 v19, 0x5

    const/16 v20, 0x5

    aget v20, p1, v20

    add-int v20, v20, v8

    aput v20, p2, v19

    .line 413
    const/16 v19, 0x6

    const/16 v20, 0x6

    aget v20, p1, v20

    add-int v20, v20, v9

    aput v20, p2, v19

    .line 414
    const/16 v19, 0x7

    const/16 v20, 0x7

    aget v20, p1, v20

    add-int v20, v20, v10

    aput v20, p2, v19

    .line 415
    const/16 v19, 0x8

    const/16 v20, 0x8

    aget v20, p1, v20

    add-int v20, v20, v11

    aput v20, p2, v19

    .line 416
    const/16 v19, 0x9

    const/16 v20, 0x9

    aget v20, p1, v20

    add-int v20, v20, v12

    aput v20, p2, v19

    .line 417
    const/16 v19, 0xa

    const/16 v20, 0xa

    aget v20, p1, v20

    add-int v20, v20, v13

    aput v20, p2, v19

    .line 418
    const/16 v19, 0xb

    const/16 v20, 0xb

    aget v20, p1, v20

    add-int v20, v20, v14

    aput v20, p2, v19

    .line 419
    const/16 v19, 0xc

    const/16 v20, 0xc

    aget v20, p1, v20

    add-int v20, v20, v15

    aput v20, p2, v19

    .line 420
    const/16 v19, 0xd

    const/16 v20, 0xd

    aget v20, p1, v20

    add-int v20, v20, v16

    aput v20, p2, v19

    .line 421
    const/16 v19, 0xe

    const/16 v20, 0xe

    aget v20, p1, v20

    add-int v20, v20, v17

    aput v20, p2, v19

    .line 422
    const/16 v19, 0xf

    const/16 v20, 0xf

    aget v20, p1, v20

    add-int v20, v20, v18

    aput v20, p2, v19

    .line 423
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 163
    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 329
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 330
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 331
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    const-string v0, "Salsa20"

    .line 131
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    .prologue
    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x8

    return v0
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 85
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must include an IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 90
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 92
    .local v1, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 93
    .local v0, "iv":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires exactly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 100
    .local v2, "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    if-nez v2, :cond_4

    .line 102
    iget-boolean v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v3, :cond_3

    .line 104
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyParameter can not be null for first initialisation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 118
    .end local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 120
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 121
    return-void

    .line 109
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    instance-of v3, v2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_5

    .line 111
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    .line 115
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 185
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 192
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 197
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_2
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 207
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 208
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 210
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 212
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 213
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 205
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_5
    return p3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 267
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 268
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 271
    return-void
.end method

.method protected resetCounter()V
    .locals 5

    .prologue
    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    .line 281
    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    .line 176
    :cond_1
    return-void
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 146
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 148
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 154
    :cond_1
    return v0
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected setKey([B[B)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x8

    const/16 v7, 0xc

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 285
    if-eqz p1, :cond_1

    .line 287
    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    array-length v2, p1

    if-eq v2, v9, :cond_0

    .line 289
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires 128 bit or 256 bit key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x1

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 294
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 295
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    invoke-static {p1, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 296
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {p1, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    .line 300
    array-length v2, p1

    if-ne v2, v9, :cond_2

    .line 302
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 303
    .local v0, "constants":[B
    const/16 v1, 0x10

    .line 311
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 312
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v3, v1, 0x4

    invoke-static {p1, v3}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v7

    .line 313
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xd

    add-int/lit8 v4, v1, 0x8

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 314
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xe

    add-int/lit8 v4, v1, 0xc

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 316
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v0, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v5

    .line 317
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 318
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v0, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 319
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v0, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 323
    .end local v0    # "constants":[B
    .end local v1    # "offset":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x6

    invoke-static {p2, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 324
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x7

    invoke-static {p2, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 325
    return-void

    .line 307
    :cond_2
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    .line 308
    .restart local v0    # "constants":[B
    const/4 v1, 0x0

    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "numberOfBytes"    # J

    .prologue
    const-wide/16 v4, 0x1

    .line 222
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 224
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    .line 226
    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x3f

    iput v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 228
    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 224
    :cond_0
    add-long/2addr v0, v4

    goto :goto_0

    .line 236
    .end local v0    # "i":J
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "i":J
    :goto_1
    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    .line 238
    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v2, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->retreatCounter()V

    .line 243
    :cond_2
    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x3f

    iput v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 236
    sub-long/2addr v0, v4

    goto :goto_1

    .line 247
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 249
    return-wide p1
.end method
