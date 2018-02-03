.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
.super Ljava/lang/Object;
.source "GMSSLeaf.java"


# instance fields
.field private concHashs:[B

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private i:I

.field private j:I

.field private keysize:I

.field private leaf:[B

.field private mdsize:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field privateKeyOTS:[B

.field private seed:[B

.field private steps:I

.field private two_power_w:I

.field private w:I


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/Digest;II)V
    .locals 9
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "numLeafs"    # I

    .prologue
    const/4 v8, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    .line 127
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 129
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 132
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 133
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v1, v3, 0x3

    .line 134
    .local v1, "mdsizeBit":I
    int-to-double v4, v1

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 135
    .local v2, "messagesize":I
    shl-int v3, v2, p2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v0

    .line 136
    .local v0, "checksumsize":I
    int-to-double v4, v0

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    .line 138
    shl-int v3, v8, p2

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 142
    shl-int v3, v8, p2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v3, v4

    int-to-double v4, v3

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    .line 147
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    .line 148
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 149
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 150
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;II[B)V
    .locals 9
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "numLeafs"    # I
    .param p4, "seed0"    # [B

    .prologue
    const/4 v8, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    .line 157
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 159
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 162
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 163
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v1, v3, 0x3

    .line 164
    .local v1, "mdsizeBit":I
    int-to-double v4, v1

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 165
    .local v2, "messagesize":I
    shl-int v3, v2, p2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v0

    .line 166
    .local v0, "checksumsize":I
    int-to-double v4, v0

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    .line 168
    shl-int v3, v8, p2

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 172
    shl-int v3, v8, p2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v3, v4

    int-to-double v4, v3

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    .line 177
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    .line 178
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 179
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 180
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 182
    invoke-virtual {p0, p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    .line 183
    return-void
.end method

.method private getLog(I)I
    .locals 2
    .param p1, "intValue"    # I

    .prologue
    .line 299
    const/4 v1, 0x1

    .line 300
    .local v1, "log":I
    const/4 v0, 0x2

    .line 301
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 303
    shl-int/lit8 v0, v0, 0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return v1
.end method


# virtual methods
.method public getStatByte()[[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    const/4 v1, 0x4

    new-array v0, v1, [[B

    .line 318
    .local v0, "statByte":[[B
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v3

    .line 319
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v4

    .line 320
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    aput-object v1, v0, v5

    .line 321
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v6

    .line 322
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    aput-object v1, v0, v3

    .line 323
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    aput-object v1, v0, v4

    .line 324
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    aput-object v1, v0, v5

    .line 325
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    aput-object v1, v0, v6

    .line 327
    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    .prologue
    .line 338
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 339
    .local v0, "statInt":[I
    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    aput v2, v0, v1

    .line 340
    const/4 v1, 0x1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    aput v2, v0, v1

    .line 341
    const/4 v1, 0x2

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    aput v2, v0, v1

    .line 342
    const/4 v1, 0x3

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    aput v2, v0, v1

    .line 343
    return-object v0
.end method

.method initLeafCalc([B)V
    .locals 3
    .param p1, "seed0"    # [B

    .prologue
    const/4 v2, 0x0

    .line 211
    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    .line 212
    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    .line 213
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v1, [B

    .line 214
    .local v0, "dummy":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 353
    const-string v1, ""

    .line 355
    .local v1, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v2

    .line 363
    .local v2, "temp":[[B
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    .line 365
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 374
    :cond_2
    return-object v1
.end method
