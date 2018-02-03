.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;
.super Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.source "McElieceKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McElieceCCA2"
.end annotation


# instance fields
.field kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "McElieceCCA-2"

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 82
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 83
    .local v0, "generateKeyPair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .line 84
    .local v2, "sk":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .line 86
    .local v1, "pk":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    invoke-direct {v4, v1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    new-instance v5, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;

    invoke-direct {v5, v2}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;

    invoke-direct {v0}, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;-><init>()V

    .line 73
    .local v0, "paramSpec":Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    .line 59
    invoke-super {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v0, p1

    .line 60
    check-cast v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    .line 62
    .local v0, "ecc":Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;
    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getM()I

    move-result v4

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getT()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 63
    .local v1, "mccca2KGParams":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 64
    return-void
.end method
