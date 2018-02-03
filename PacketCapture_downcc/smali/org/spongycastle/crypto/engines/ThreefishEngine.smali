.class public Lorg/spongycastle/crypto/engines/ThreefishEngine;
.super Ljava/lang/Object;
.source "ThreefishEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
    }
.end annotation


# static fields
.field private static MOD17:[I

.field private static MOD3:[I

.field private static MOD5:[I

.field private static MOD9:[I


# instance fields
.field private blocksizeBytes:I

.field private blocksizeWords:I

.field private cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

.field private currentBlock:[J

.field private forEncryption:Z

.field private kw:[J

.field private t:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v1, 0x50

    new-array v1, v1, [I

    sput-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    .line 70
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    .line 71
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    .line 72
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    rem-int/lit8 v2, v0, 0x11

    aput v2, v1, v0

    .line 79
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    .line 80
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    .line 81
    sget-object v1, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "blocksizeBits"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    .line 125
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    .line 127
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    .line 133
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    .line 150
    :goto_0
    return-void

    .line 141
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    goto :goto_0

    .line 144
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    return-object v0
.end method

.method public static bytesToWord([BI)J
    .locals 10
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide/16 v8, 0xff

    .line 356
    add-int/lit8 v4, p1, 0x8

    array-length v5, p0

    if-le v4, v5, :cond_0

    .line 359
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 362
    :cond_0
    const-wide/16 v2, 0x0

    .line 363
    .local v2, "word":J
    move v0, p1

    .line 365
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v4, p0, v0

    int-to-long v4, v4

    and-long v2, v4, v8

    .line 366
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p0, v1

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 367
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p0, v0

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 368
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p0, v1

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 369
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p0, v0

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 370
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p0, v1

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 371
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p0, v0

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 372
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p0, v1

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 374
    return-wide v2
.end method

.method static rotlXor(JIJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "n"    # I
    .param p3, "xor"    # J

    .prologue
    .line 406
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    xor-long/2addr v0, p3

    return-wide v0
.end method

.method private setKey([J)V
    .locals 8
    .param p1, "key"    # [J

    .prologue
    .line 230
    array-length v1, p1

    iget v4, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v1, v4, :cond_0

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Threefish key must be same size as block ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " words)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    const-wide v2, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    .line 245
    .local v2, "knw":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v4, p1, v0

    aput-wide v4, v1, v0

    .line 248
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v4, v1, v0

    xor-long/2addr v2, v4

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v4, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aput-wide v2, v1, v4

    .line 251
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v6, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    return-void
.end method

.method private setTweak([J)V
    .locals 9
    .param p1, "tweak"    # [J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    array-length v0, p1

    if-eq v0, v8, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tweak must be 2 words."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, p1, v6

    aput-wide v2, v0, v6

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, p1, v7

    aput-wide v2, v0, v7

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, v1, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v4, v1, v7

    xor-long/2addr v2, v4

    aput-wide v2, v0, v8

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, v2, v6

    aput-wide v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->t:[J

    aget-wide v2, v2, v7

    aput-wide v2, v0, v1

    .line 269
    return-void
.end method

.method public static wordToBytes(J[BI)V
    .locals 4
    .param p0, "word"    # J
    .param p2, "bytes"    # [B
    .param p3, "off"    # I

    .prologue
    .line 383
    add-int/lit8 v2, p3, 0x8

    array-length v3, p2

    if-le v2, v3, :cond_0

    .line 386
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 388
    :cond_0
    move v0, p3

    .line 390
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 391
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 392
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 393
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 394
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 395
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 396
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 397
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 398
    return-void
.end method

.method static xorRotr(JIJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "n"    # I
    .param p3, "xor"    # J

    .prologue
    .line 415
    xor-long v0, p0, p3

    .line 416
    .local v0, "xored":J
    ushr-long v2, v0, p2

    neg-int v4, p2

    shl-long v4, v0, v4

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 10
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 164
    instance-of v6, p2, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 166
    check-cast v3, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;

    .line 167
    .local v3, "tParams":Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 168
    .local v1, "keyBytes":[B
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->getTweak()[B

    move-result-object v4

    .line 181
    .end local v3    # "tParams":Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .local v4, "tweakBytes":[B
    :goto_0
    const/4 v2, 0x0

    .line 182
    .local v2, "keyWords":[J
    const/4 v5, 0x0

    .line 184
    .local v5, "tweakWords":[J
    if-eqz v1, :cond_3

    .line 186
    array-length v6, v1

    iget v7, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-eq v6, v7, :cond_2

    .line 188
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threefish key must be same size as block ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    .end local v1    # "keyBytes":[B
    .end local v2    # "keyWords":[J
    .end local v4    # "tweakBytes":[B
    .end local v5    # "tweakWords":[J
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v6, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v6, :cond_1

    .line 172
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 173
    .restart local v1    # "keyBytes":[B
    const/4 v4, 0x0

    .restart local v4    # "tweakBytes":[B
    goto :goto_0

    .line 177
    .end local v1    # "keyBytes":[B
    .end local v4    # "tweakBytes":[B
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid parameter passed to Threefish init - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 191
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v1    # "keyBytes":[B
    .restart local v2    # "keyWords":[J
    .restart local v4    # "tweakBytes":[B
    .restart local v5    # "tweakWords":[J
    :cond_2
    iget v6, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v2, v6, [J

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_3

    .line 194
    mul-int/lit8 v6, v0, 0x8

    invoke-static {v1, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v6

    aput-wide v6, v2, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "i":I
    :cond_3
    if-eqz v4, :cond_5

    .line 199
    array-length v6, v4

    const/16 v7, 0x10

    if-eq v6, v7, :cond_4

    .line 201
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Threefish tweak must be 16 bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    :cond_4
    const/4 v6, 0x2

    new-array v5, v6, [J

    .end local v5    # "tweakWords":[J
    invoke-static {v4, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v6

    aput-wide v6, v5, v8

    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-static {v4, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 205
    .restart local v5    # "tweakWords":[J
    :cond_5
    invoke-virtual {p0, p1, v2, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    .line 206
    return-void
.end method

.method public init(Z[J[J)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [J
    .param p3, "tweak"    # [J

    .prologue
    .line 217
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    .line 218
    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->setKey([J)V

    .line 222
    :cond_0
    if-eqz p3, :cond_1

    .line 224
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->setTweak([J)V

    .line 226
    :cond_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 289
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_0

    .line 291
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "Output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 296
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "Input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ge v0, v1, :cond_2

    .line 301
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    shr-int/lit8 v2, v0, 0x3

    add-int v3, p2, v0

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->bytesToWord([BI)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 299
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-virtual {p0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    .line 304
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ge v0, v1, :cond_3

    .line 306
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    shr-int/lit8 v2, v0, 0x3

    aget-wide v2, v1, v2

    add-int v1, p4, v0

    invoke-static {v2, v3, p3, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    .line 304
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 309
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return v1
.end method

.method public processBlock([J[J)I
    .locals 4
    .param p1, "in"    # [J
    .param p2, "out"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Threefish engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v0, v1, :cond_1

    .line 331
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    array-length v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-eq v0, v1, :cond_2

    .line 335
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->encryptBlock([J[J)V

    .line 347
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    return v0

    .line 344
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->decryptBlock([J[J)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method
