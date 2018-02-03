.class public Lorg/spongycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 42
    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 152
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 160
    :goto_0
    return-object v1

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 158
    .local v0, "trunc":[B
    array-length v1, v0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .param p1, "message"    # [B

    .prologue
    .line 82
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 83
    .local v2, "params":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/spongycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    .line 85
    .local v1, "m":Ljava/math/BigInteger;
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v6}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v6, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v7, v8, v6, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 94
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v6}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v0

    .line 96
    .local v0, "k":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 98
    .local v3, "r":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v6, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 103
    .local v5, "s":Ljava/math/BigInteger;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/math/BigInteger;

    .line 105
    .local v4, "res":[Ljava/math/BigInteger;
    const/4 v6, 0x0

    aput-object v3, v4, v6

    .line 106
    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 108
    return-object v4

    .line 91
    .end local v0    # "k":Ljava/math/BigInteger;
    .end local v3    # "r":Ljava/math/BigInteger;
    .end local v4    # "res":[Ljava/math/BigInteger;
    .end local v5    # "s":Ljava/math/BigInteger;
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v6, v7, v8}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 52
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 54
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 56
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    .line 57
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 69
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v2}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lorg/spongycastle/crypto/signers/DSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 70
    return-void

    .line 61
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    goto :goto_0

    .line 66
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .prologue
    .line 166
    if-nez p1, :cond_1

    const/4 p2, 0x0

    .end local p2    # "provided":Ljava/security/SecureRandom;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "provided":Ljava/security/SecureRandom;
    :cond_1
    if-nez p2, :cond_0

    new-instance p2, Ljava/security/SecureRandom;

    .end local p2    # "provided":Ljava/security/SecureRandom;
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 10
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 121
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 122
    .local v1, "params":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lorg/spongycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 123
    .local v0, "m":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 125
    .local v6, "zero":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v7

    .line 130
    :cond_1
    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_0

    .line 135
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 137
    .local v5, "w":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 138
    .local v2, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 140
    .local v3, "u2":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 141
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/DSASigner;->key:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v7, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 145
    .local v4, "v":Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method
