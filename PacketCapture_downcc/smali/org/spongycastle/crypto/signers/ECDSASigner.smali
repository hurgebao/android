.class public Lorg/spongycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 46
    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 178
    .local v1, "log2n":I
    array-length v3, p2

    mul-int/lit8 v2, v3, 0x8

    .line 180
    .local v2, "messageBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 181
    .local v0, "e":Ljava/math/BigInteger;
    if-ge v1, v2, :cond_0

    .line 183
    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 185
    :cond_0
    return-object v0
.end method

.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    .prologue
    .line 87
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 88
    .local v3, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 89
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 90
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 92
    .local v1, "d":Ljava/math/BigInteger;
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9, v5, v1, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 111
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    :cond_0
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    .line 113
    .local v4, "k":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-interface {v0, v9, v4}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 116
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 118
    .local v7, "r":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 120
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 122
    .local v8, "s":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 124
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    return-object v9

    .line 98
    .end local v0    # "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    .end local v4    # "k":Ljava/math/BigInteger;
    .end local v6    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "r":Ljava/math/BigInteger;
    .end local v8    # "s":Ljava/math/BigInteger;
    :cond_1
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v9, v5, v10}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 56
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 58
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 60
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 61
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 73
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v2}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lorg/spongycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 74
    return-void

    .line 65
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 70
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .prologue
    .line 195
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
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v11, 0x0

    .line 138
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 139
    .local v4, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 140
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    .line 143
    .local v3, "e":Ljava/math/BigInteger;
    sget-object v10, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_1

    :cond_0
    move v10, v11

    .line 172
    :goto_0
    return v10

    .line 149
    :cond_1
    sget-object v10, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_2

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_3

    :cond_2
    move v10, v11

    .line 151
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 156
    .local v2, "c":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 157
    .local v7, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 159
    .local v8, "u2":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 160
    .local v0, "G":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v10, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 162
    .local v1, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v0, v7, v1, v8}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 165
    .local v6, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v11

    .line 167
    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 172
    .local v9, "v":Ljava/math/BigInteger;
    invoke-virtual {v9, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0
.end method
