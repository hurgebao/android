.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# instance fields
.field certainty:I

.field engine:Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

    .line 23
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 24
    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    .line 25
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 31
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .prologue
    .line 65
    iget-boolean v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    if-nez v4, :cond_0

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 69
    .local v0, "pGen":Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 70
    new-instance v4, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DSAParameters;)V

    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    .line 71
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 72
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 75
    .end local v0    # "pGen":Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 76
    .local v1, "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    .line 77
    .local v3, "pub":Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    .line 79
    .local v2, "priv":Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v5, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v6, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v6, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    const/16 v1, 0x400

    .line 37
    const/16 v0, 0x200

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    :cond_0
    if-lt p1, v1, :cond_2

    rem-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 43
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 44
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 51
    instance-of v1, p1, Ljava/security/spec/DSAParameterSpec;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a DSAParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 55
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 57
    .local v0, "dsaParams":Ljava/security/spec/DSAParameterSpec;
    new-instance v1, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DSAParameters;)V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    .line 59
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 61
    return-void
.end method
