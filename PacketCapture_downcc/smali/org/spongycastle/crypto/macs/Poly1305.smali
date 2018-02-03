.class public Lorg/spongycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/16 v1, 0x10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 47
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 68
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 73
    return-void
.end method

.method private static final mul32x32_64(II)J
    .locals 4
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 304
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private processBlock()V
    .locals 30

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ge v5, v0, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v25, v5, v24

    .line 201
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/lit8 v4, v5, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0x0

    aput-byte v24, v5, v4

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "i":I
    :cond_0
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v6, v24, v26

    .line 208
    .local v6, "t0":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v8, v24, v26

    .line 209
    .local v8, "t1":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v10, v24, v26

    .line 210
    .local v10, "t2":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v12, v24, v26

    .line 212
    .local v12, "t3":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v6

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 213
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v8, v5

    or-long v26, v26, v6

    const/16 v5, 0x1a

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 214
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v10, v5

    or-long v26, v26, v8

    const/16 v5, 0x14

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 215
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v12, v5

    or-long v26, v26, v10

    const/16 v5, 0xe

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 216
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x8

    ushr-long v26, v12, v5

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 218
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v5, v0, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    const/high16 v24, 0x1000000

    add-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v14, v24, v26

    .line 224
    .local v14, "tp0":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v16, v24, v26

    .line 225
    .local v16, "tp1":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v18, v24, v26

    .line 226
    .local v18, "tp2":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v20, v24, v26

    .line 227
    .local v20, "tp3":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v22, v24, v26

    .line 230
    .local v22, "tp4":J
    long-to-int v5, v14

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    const/16 v5, 0x1a

    ushr-long v2, v14, v5

    .line 231
    .local v2, "b":J
    add-long v16, v16, v2

    move-wide/from16 v0, v16

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    const/16 v5, 0x1a

    ushr-long v24, v16, v5

    const-wide/16 v26, -0x1

    and-long v2, v24, v26

    .line 232
    add-long v18, v18, v2

    move-wide/from16 v0, v18

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    const/16 v5, 0x1a

    ushr-long v24, v18, v5

    const-wide/16 v26, -0x1

    and-long v2, v24, v26

    .line 233
    add-long v20, v20, v2

    move-wide/from16 v0, v20

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    const/16 v5, 0x1a

    ushr-long v2, v20, v5

    .line 234
    add-long v22, v22, v2

    move-wide/from16 v0, v22

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    const/16 v5, 0x1a

    ushr-long v2, v22, v5

    .line 235
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    mul-long v26, v26, v2

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 236
    return-void
.end method

.method private setKey([B[B)V
    .locals 10
    .param p1, "key"    # [B
    .param p2, "nonce"    # [B

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 114
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    array-length v5, p2

    if-eq v5, v9, :cond_1

    .line 116
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Poly1305 requires a 128 bit IV."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->checkKey([B)V

    .line 122
    invoke-static {p1, v9}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 123
    .local v1, "t0":I
    const/16 v5, 0x14

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 124
    .local v2, "t1":I
    const/16 v5, 0x18

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 125
    .local v3, "t2":I
    const/16 v5, 0x1c

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 127
    .local v4, "t3":I
    const v5, 0x3ffffff

    and-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    ushr-int/lit8 v1, v1, 0x1a

    shl-int/lit8 v5, v2, 0x6

    or-int/2addr v1, v5

    .line 128
    const v5, 0x3ffff03

    and-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    ushr-int/lit8 v2, v2, 0x14

    shl-int/lit8 v5, v3, 0xc

    or-int/2addr v2, v5

    .line 129
    const v5, 0x3ffc0ff

    and-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    ushr-int/lit8 v3, v3, 0xe

    shl-int/lit8 v5, v4, 0x12

    or-int/2addr v3, v5

    .line 130
    const v5, 0x3f03fff

    and-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    ushr-int/lit8 v4, v4, 0x8

    .line 131
    const v5, 0xfffff

    and-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    .line 134
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    .line 135
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    .line 136
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    .line 137
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    .line 140
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v5, :cond_2

    .line 142
    move-object v0, p1

    .line 152
    .local v0, "kBytes":[B
    :goto_0
    invoke-static {v0, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    .line 153
    const/4 v5, 0x4

    invoke-static {v0, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    .line 154
    const/16 v5, 0x8

    invoke-static {v0, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    .line 155
    const/16 v5, 0xc

    invoke-static {v0, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    .line 156
    return-void

    .line 147
    .end local v0    # "kBytes":[B
    :cond_2
    new-array v0, v9, [B

    .line 148
    .restart local v0    # "kBytes":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, p1, v8, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-interface {v5, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 149
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, p2, v8, v0, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 26
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 242
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 244
    new-instance v19, Lorg/spongycastle/crypto/DataLengthException;

    const-string v20, "Output buffer is too short."

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 250
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    .line 256
    .local v4, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    mul-int/lit8 v20, v4, 0x5

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x5

    .local v5, "g0":I
    ushr-int/lit8 v4, v5, 0x1a

    const v19, 0x3ffffff

    and-int v5, v5, v19

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    add-int v14, v19, v4

    .local v14, "g1":I
    ushr-int/lit8 v4, v14, 0x1a

    const v19, 0x3ffffff

    and-int v14, v14, v19

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    add-int v15, v19, v4

    .local v15, "g2":I
    ushr-int/lit8 v4, v15, 0x1a

    const v19, 0x3ffffff

    and-int v15, v15, v19

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    add-int v16, v19, v4

    .local v16, "g3":I
    ushr-int/lit8 v4, v16, 0x1a

    const v19, 0x3ffffff

    and-int v16, v16, v19

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    add-int v19, v19, v4

    const/high16 v20, 0x4000000

    sub-int v17, v19, v20

    .line 270
    .local v17, "g4":I
    ushr-int/lit8 v19, v17, 0x1f

    add-int/lit8 v4, v19, -0x1

    .line 271
    xor-int/lit8 v18, v4, -0x1

    .line 272
    .local v18, "nb":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v5, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v14, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v15, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v16, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v17, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1a

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v6, v20, v22

    .line 279
    .local v6, "f0":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x14

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v8, v20, v22

    .line 280
    .local v8, "f1":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0xe

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v10, v20, v22

    .line 281
    .local v10, "f2":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v12, v20, v22

    .line 283
    .local v12, "f3":J
    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 284
    const/16 v19, 0x20

    ushr-long v20, v6, v19

    add-long v8, v8, v20

    .line 285
    long-to-int v0, v8

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 286
    const/16 v19, 0x20

    ushr-long v20, v8, v19

    add-long v10, v10, v20

    .line 287
    long-to-int v0, v10

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 288
    const/16 v19, 0x20

    ushr-long v20, v10, v19

    add-long v12, v12, v20

    .line 289
    long-to-int v0, v12

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0xc

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 292
    const/16 v19, 0x10

    return v19
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v0, :cond_0

    const-string v0, "Poly1305"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Poly1305-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x10

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, "nonce":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v3, :cond_1

    .line 90
    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 95
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 96
    .local v0, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    .line 100
    .end local v0    # "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Poly1305 requires a key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, p1

    .line 105
    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 107
    .local v1, "keyParams":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/macs/Poly1305;->setKey([B[B)V

    .line 109
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 110
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 299
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 300
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    aput-byte p1, v0, v2

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 173
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "copied":I
    :goto_0
    if-le p3, v0, :cond_1

    .line 182
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 185
    const/4 v2, 0x0

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 188
    :cond_0
    sub-int v2, p3, v0

    iget v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    .local v1, "toCopy":I
    add-int v2, v0, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/2addr v0, v1

    .line 191
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    goto :goto_0

    .line 194
    .end local v1    # "toCopy":I
    :cond_1
    return-void
.end method
