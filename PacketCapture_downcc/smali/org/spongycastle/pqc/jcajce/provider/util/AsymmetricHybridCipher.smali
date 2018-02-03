.class public abstract Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.super Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;
.source "AsymmetricHybridCipher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract decryptOutputSize(I)I
.end method

.method public final doFinal([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 336
    array-length v1, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->getOutputSize(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 338
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "Output buffer too short."

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->doFinal([BII)[B

    move-result-object v0

    .line 341
    .local v0, "out":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    array-length v1, v0

    return v1
.end method

.method public abstract doFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract encryptOutputSize(I)I
.end method

.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final getIV()[B
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inLen"    # I

    .prologue
    .line 99
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->opMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->encryptOutputSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->decryptOutputSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public final initDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->opMode:I

    .line 266
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 267
    return-void
.end method

.method public final initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->opMode:I

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 212
    return-void
.end method

.method protected final setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method

.method protected final setPadding(Ljava/lang/String;)V
    .locals 0
    .param p1, "paddingName"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public final update([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 296
    array-length v1, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->getOutputSize(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "output"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->update([BII)[B

    move-result-object v0

    .line 301
    .local v0, "out":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    array-length v1, v0

    return v1
.end method

.method public abstract update([BII)[B
.end method
