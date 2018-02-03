.class public Lorg/spongycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source "CMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private L:[B

.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 55
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/CMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size must be either 64 or 128 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 91
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    .line 95
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    .line 97
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->ZEROES:[B

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 100
    return-void
.end method

.method private static doubleLu([B)[B
    .locals 6
    .param p0, "in"    # [B

    .prologue
    .line 122
    array-length v3, p0

    new-array v1, v3, [B

    .line 123
    .local v1, "ret":[B
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/macs/CMac;->shiftLeft([B[B)I

    move-result v0

    .line 124
    .local v0, "carry":I
    array-length v3, p0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    const/16 v3, -0x79

    :goto_0
    and-int/lit16 v2, v3, 0xff

    .line 129
    .local v2, "xor":I
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v1, v3

    rsub-int/lit8 v5, v0, 0x1

    shl-int/lit8 v5, v5, 0x3

    ushr-int v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 131
    return-object v1

    .line 124
    .end local v2    # "xor":I
    :cond_0
    const/16 v3, 0x1b

    goto :goto_0
.end method

.method private static shiftLeft([B[B)I
    .locals 4
    .param p0, "block"    # [B
    .param p1, "output"    # [B

    .prologue
    .line 109
    array-length v2, p0

    .line 110
    .local v2, "i":I
    const/4 v1, 0x0

    .line 111
    .local v1, "bit":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 113
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 114
    .local v0, "b":I
    shl-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 115
    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 116
    goto :goto_0

    .line 117
    .end local v0    # "b":I
    :cond_0
    return v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 214
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 217
    .local v0, "blockSize":I
    iget v3, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    if-ne v3, v0, :cond_0

    .line 219
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu:[B

    .line 227
    .local v2, "lu":[B
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 229
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    .end local v1    # "i":I
    .end local v2    # "lu":[B
    :cond_0
    new-instance v3, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    .line 224
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu2:[B

    .restart local v2    # "lu":[B
    goto :goto_0

    .line 232
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 234
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v3, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    .line 238
    iget v3, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    return v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/macs/CMac;->validate(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->L:[B

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->ZEROES:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->L:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->L:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu:[B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu2:[B

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    .line 147
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    aput-byte v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 259
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 260
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 168
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 171
    iput v3, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 175
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 179
    if-gez p3, :cond_0

    .line 181
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 186
    .local v0, "blockSize":I
    iget v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    sub-int v1, v0, v2

    .line 188
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    .line 190
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 194
    iput v5, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 195
    sub-int/2addr p3, v1

    .line 196
    add-int/2addr p2, v1

    .line 198
    :goto_0
    if-le p3, v0, :cond_1

    .line 200
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 202
    sub-int/2addr p3, v0

    .line 203
    add-int/2addr p2, v0

    goto :goto_0

    .line 207
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 210
    return-void
.end method

.method validate(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 153
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CMac mode only permits key to be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method
