.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;
.super Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.source "McElieceKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McEliece"
.end annotation


# instance fields
.field kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "McEliece"

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 137
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 138
    .local v0, "generateKeyPair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .line 139
    .local v2, "sk":Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    .line 141
    .local v1, "pk":Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    invoke-direct {v4, v1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    new-instance v5, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    invoke-direct {v5, v2}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 123
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    invoke-direct {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;-><init>()V

    .line 128
    .local v0, "paramSpec":Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
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
    .line 113
    new-instance v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    .line 114
    invoke-super {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v0, p1

    .line 115
    check-cast v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    .line 117
    .local v0, "ecc":Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;
    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getM()I

    move-result v4

    invoke-virtual {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getT()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 118
    .local v1, "mccKGParams":Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->kpg:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 119
    return-void
.end method
