.class public abstract Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;
.super Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;
.source "AsymmetricBlockCipher.java"


# instance fields
.field protected buf:Ljava/io/ByteArrayOutputStream;

.field protected cipherTextSize:I

.field protected maxPlainTextSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;-><init>()V

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    .line 53
    return-void
.end method


# virtual methods
.method protected checkLength(I)V
    .locals 4
    .param p1, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int v0, p1, v1

    .line 441
    .local v0, "inLength":I
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 443
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    if-le v0, v1, :cond_1

    .line 445
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The length of the plaintext ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes) is not supported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "the cipher (max. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 454
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    if-eq v0, v1, :cond_1

    .line 456
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal ciphertext length (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_1
    return-void
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
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 391
    array-length v1, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getOutputSize(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 393
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "Output buffer too short."

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->doFinal([BII)[B

    move-result-object v0

    .line 397
    .local v0, "out":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    array-length v1, v0

    return v1
.end method

.method public final doFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->checkLength(I)V

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    .line 354
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 355
    .local v0, "mBytes":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 357
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    packed-switch v1, :pswitch_data_0

    .line 366
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 360
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->messageEncrypt([B)[B

    move-result-object v1

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->messageDecrypt([B)[B

    move-result-object v1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getBlockSize()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    goto :goto_0
.end method

.method public final getIV()[B
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 3
    .param p1, "inLen"    # I

    .prologue
    .line 95
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int v1, p1, v2

    .line 97
    .local v1, "totalLen":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getBlockSize()I

    move-result v0

    .line 99
    .local v0, "maxLen":I
    if-le v1, v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    .end local v0    # "maxLen":I
    :cond_0
    return v0
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
    .line 297
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    .line 298
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 299
    return-void
.end method

.method public final initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 240
    return-void
.end method

.method protected abstract messageDecrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract messageEncrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected final setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 410
    return-void
.end method

.method protected final setPadding(Ljava/lang/String;)V
    .locals 0
    .param p1, "paddingName"    # Ljava/lang/String;

    .prologue
    .line 421
    return-void
.end method

.method public final update([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public final update([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 312
    if-eqz p3, :cond_0

    .line 314
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
