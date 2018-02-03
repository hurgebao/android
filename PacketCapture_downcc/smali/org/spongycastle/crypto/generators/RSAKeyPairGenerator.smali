.class public Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;

    .prologue
    .line 133
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 135
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    return-object v0
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 22

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v19

    .line 36
    .local v19, "strength":I
    ushr-int/lit8 v17, v19, 0x1

    .line 37
    .local v17, "qBitlength":I
    sub-int v14, v19, v17

    .line 38
    .local v14, "pBitlength":I
    div-int/lit8 v13, v19, 0x3

    .line 39
    .local v13, "mindiffbits":I
    ushr-int/lit8 v12, v19, 0x2

    .line 41
    .local v12, "minWeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 46
    .local v4, "e":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 53
    .local v6, "p":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 56
    .local v7, "q":Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 57
    .local v11, "diff":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v2, v13, :cond_0

    .line 65
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 67
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move/from16 v0, v19

    if-eq v2, v0, :cond_1

    .line 73
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 74
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-ge v2, v12, :cond_2

    .line 85
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 86
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3

    .line 94
    move-object/from16 v16, v6

    .line 95
    .local v16, "phi":Ljava/math/BigInteger;
    move-object v6, v7

    .line 96
    move-object/from16 v7, v16

    .line 99
    .end local v16    # "phi":Ljava/math/BigInteger;
    :cond_3
    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 100
    .local v15, "pSub1":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 101
    .local v18, "qSub1":Ljava/math/BigInteger;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 106
    .restart local v16    # "phi":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 113
    .local v5, "d":Ljava/math/BigInteger;
    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 114
    .local v8, "dP":Ljava/math/BigInteger;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 115
    .local v9, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 117
    .local v10, "qInv":Ljava/math/BigInteger;
    new-instance v20, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v21, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v2 .. v10}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v20
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 25
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 26
    return-void
.end method
