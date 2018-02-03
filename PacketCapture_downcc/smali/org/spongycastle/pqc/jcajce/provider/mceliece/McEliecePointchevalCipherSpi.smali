.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.source "McEliecePointchevalCipherSpi.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval512;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval384;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval256;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval224;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval;
    }
.end annotation


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "cipher"    # Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    .line 46
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    .line 49
    return-void
.end method


# virtual methods
.method protected decryptOutputSize(I)I
    .locals 1
    .param p1, "inLen"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public doFinal([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->update([BII)[B

    .line 81
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 82
    .local v0, "data":[B
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 83
    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->opMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 88
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageEncrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->opMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 101
    :try_start_1
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageDecrypt([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected encryptOutputSize(I)I
    .locals 1
    .param p1, "inLen"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 155
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 157
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 164
    .local v0, "mcElieceCCA2KeyParameters":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v1

    return v1

    .line 161
    .end local v0    # "mcElieceCCA2KeyParameters":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .restart local v0    # "mcElieceCCA2KeyParameters":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    goto :goto_0
.end method

.method protected initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 139
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 141
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 142
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    return-void
.end method

.method protected initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 128
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 130
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, v0, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 131
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 132
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 133
    return-void
.end method

.method public update([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
