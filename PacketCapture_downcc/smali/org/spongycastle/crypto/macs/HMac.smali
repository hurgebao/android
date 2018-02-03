.class public Lorg/spongycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blockLength:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private ipadState:Lorg/spongycastle/util/Memoable;

.field private opadState:Lorg/spongycastle/util/Memoable;

.field private outputBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD2"

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD4"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD5"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 85
    invoke-static {p1}, Lorg/spongycastle/crypto/macs/HMac;->getByteLength(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "byteLength"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digestSize:I

    .line 94
    iput p2, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    .line 95
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/HMac;->digestSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    .line 97
    return-void
.end method

.method private static getByteLength(Lorg/spongycastle/crypto/Digest;)I
    .locals 4
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 61
    instance-of v1, p0, Lorg/spongycastle/crypto/ExtendedDigest;

    if-eqz v1, :cond_0

    .line 63
    check-cast p0, Lorg/spongycastle/crypto/ExtendedDigest;

    .end local p0    # "digest":Lorg/spongycastle/crypto/Digest;
    invoke-interface {p0}, Lorg/spongycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v1

    .line 73
    .local v0, "b":Ljava/lang/Integer;
    .restart local p0    # "digest":Lorg/spongycastle/crypto/Digest;
    :goto_0
    return v1

    .line 66
    .end local v0    # "b":Ljava/lang/Integer;
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .restart local v0    # "b":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown digest passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static xorPad([BIB)V
    .locals 2
    .param p0, "pad"    # [B
    .param p1, "len"    # I
    .param p2, "n"    # B

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 228
    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 179
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->opadState:Lorg/spongycastle/util/Memoable;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v2, Lorg/spongycastle/util/Memoable;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->opadState:Lorg/spongycastle/util/Memoable;

    invoke-interface {v2, v3}, Lorg/spongycastle/util/Memoable;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 182
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 189
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    .line 191
    .local v1, "len":I
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 193
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    aput-byte v6, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    .line 196
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->ipadState:Lorg/spongycastle/util/Memoable;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v2, Lorg/spongycastle/util/Memoable;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->ipadState:Lorg/spongycastle/util/Memoable;

    invoke-interface {v2, v3}, Lorg/spongycastle/util/Memoable;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 205
    :goto_2
    return v1

    .line 202
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    goto :goto_2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digestSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v6, 0x0

    .line 112
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 114
    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 115
    .local v1, "key":[B
    array-length v2, v1

    .line 117
    .local v2, "keyLength":I
    iget v3, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    if-le v2, v3, :cond_0

    .line 119
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v6, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 120
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {v3, v4, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    iget v2, p0, Lorg/spongycastle/crypto/macs/HMac;->digestSize:I

    .line 129
    :goto_0
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 131
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v6, v3, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 134
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x36

    invoke-static {v3, v4, v5}, Lorg/spongycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 137
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x5c

    invoke-static {v3, v4, v5}, Lorg/spongycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 139
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v3, v3, Lorg/spongycastle/util/Memoable;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v3, Lorg/spongycastle/util/Memoable;

    invoke-interface {v3}, Lorg/spongycastle/util/Memoable;->copy()Lorg/spongycastle/util/Memoable;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->opadState:Lorg/spongycastle/util/Memoable;

    .line 143
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->opadState:Lorg/spongycastle/util/Memoable;

    check-cast v3, Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lorg/spongycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 146
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 148
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v3, v3, Lorg/spongycastle/util/Memoable;

    if-eqz v3, :cond_3

    .line 150
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v3, Lorg/spongycastle/util/Memoable;

    invoke-interface {v3}, Lorg/spongycastle/util/Memoable;->copy()Lorg/spongycastle/util/Memoable;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->ipadState:Lorg/spongycastle/util/Memoable;

    .line 152
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 222
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 163
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 171
    return-void
.end method
