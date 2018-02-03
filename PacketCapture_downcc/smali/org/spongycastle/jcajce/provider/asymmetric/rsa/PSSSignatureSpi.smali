.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "PSSSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA384withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA256withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA224withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA1withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$PSSwithRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$nonePSS;
    }
.end annotation


# instance fields
.field private contentDigest:Lorg/spongycastle/crypto/Digest;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private isRaw:Z

.field private mgfDigest:Lorg/spongycastle/crypto/Digest;

.field private originalSpec:Ljava/security/spec/PSSParameterSpec;

.field private paramSpec:Ljava/security/spec/PSSParameterSpec;

.field private pss:Lorg/spongycastle/crypto/signers/PSSSigner;

.field private saltLength:I

.field private signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private trailer:B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V
    .locals 1
    .param p1, "signer"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "paramSpecArg"    # Ljava/security/spec/PSSParameterSpec;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V
    .locals 1
    .param p1, "signer"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "baseParamSpec"    # Ljava/security/spec/PSSParameterSpec;
    .param p3, "isRaw"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 80
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    .line 82
    if-nez p2, :cond_0

    .line 84
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 91
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 92
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->getTrailer(I)B

    move-result v0

    iput-byte v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    .line 94
    iput-boolean p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->isRaw:Z

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->setupContentDigest()V

    .line 97
    return-void

    .line 88
    :cond_0
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_0
.end method

.method private getTrailer(I)B
    .locals 2
    .param p1, "trailerField"    # I

    .prologue
    .line 45
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 47
    const/16 v0, -0x44

    return v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown trailer field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupContentDigest()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->isRaw:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    const-string v1, "PSS"

    const-string v2, "SC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 238
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 131
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 137
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 138
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 118
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 124
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 125
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPublicKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 109
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 180
    instance-of v3, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 182
    check-cast v2, Ljava/security/spec/PSSParameterSpec;

    .line 184
    .local v2, "newParamSpec":Ljava/security/spec/PSSParameterSpec;
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter must be using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_0
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unknown mask generation function specified"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    instance-of v3, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v3, :cond_2

    .line 198
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unkown MGF parameters"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_2
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 203
    .local v0, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 205
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "digest algorithm for MGF should be the same as for PSS parameters."

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 210
    .local v1, "newDigest":Lorg/spongycastle/crypto/Digest;
    if-nez v1, :cond_4

    .line 212
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no match on MGF digest algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 216
    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 217
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 218
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    .line 219
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->getTrailer(I)B

    move-result v3

    iput-byte v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    .line 221
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->setupContentDigest()V

    .line 227
    return-void

    .line 225
    .end local v0    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v1    # "newDigest":Lorg/spongycastle/crypto/Digest;
    .end local v2    # "newParamSpec":Ljava/security/spec/PSSParameterSpec;
    :cond_5
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Only PSSParameterSpec supported"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/signers/PSSSigner;->generateSignature()[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->update(B)V

    .line 145
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/signers/PSSSigner;->update([BII)V

    .line 154
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result v0

    return v0
.end method
