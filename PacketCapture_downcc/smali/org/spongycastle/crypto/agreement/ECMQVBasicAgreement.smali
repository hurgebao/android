.class public Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 21
    .param p1, "parameters"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "d1U"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "d2U"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p4, "Q2U"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p5, "Q1V"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p6, "Q2V"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 61
    .local v7, "n":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    div-int/lit8 v5, v18, 0x2

    .line 62
    .local v5, "e":I
    sget-object v18, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 64
    .local v9, "powE":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 66
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/16 v19, 0x0

    if-nez p4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    :goto_0
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    aput-object v18, v8, v19

    const/16 v18, 0x1

    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    aput-object v19, v8, v18

    const/16 v18, 0x2

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    aput-object v19, v8, v18

    .line 73
    .local v8, "points":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 75
    const/16 v18, 0x0

    aget-object v11, v8, v18

    .local v11, "q2u":Lorg/spongycastle/math/ec/ECPoint;
    const/16 v18, 0x1

    aget-object v10, v8, v18

    .local v10, "q1v":Lorg/spongycastle/math/ec/ECPoint;
    const/16 v18, 0x2

    aget-object v12, v8, v18

    .line 77
    .local v12, "q2v":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v14

    .line 78
    .local v14, "x":Ljava/math/BigInteger;
    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 79
    .local v15, "xBar":Ljava/math/BigInteger;
    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 80
    .local v2, "Q2UBar":Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 82
    .local v13, "s":Ljava/math/BigInteger;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v16

    .line 83
    .local v16, "xPrime":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 84
    .local v17, "xPrimeBar":Ljava/math/BigInteger;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 86
    .local v3, "Q2VBar":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 88
    .local v6, "hs":Ljava/math/BigInteger;
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0, v12, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    return-object v18

    .line 66
    .end local v2    # "Q2UBar":Ljava/math/BigInteger;
    .end local v3    # "Q2VBar":Ljava/math/BigInteger;
    .end local v6    # "hs":Ljava/math/BigInteger;
    .end local v8    # "points":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "q1v":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "q2u":Lorg/spongycastle/math/ec/ECPoint;
    .end local v12    # "q2v":Lorg/spongycastle/math/ec/ECPoint;
    .end local v13    # "s":Ljava/math/BigInteger;
    .end local v14    # "x":Ljava/math/BigInteger;
    .end local v15    # "xBar":Ljava/math/BigInteger;
    .end local v16    # "xPrime":Ljava/math/BigInteger;
    .end local v17    # "xPrimeBar":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    goto/16 :goto_0
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 9
    .param p1, "pubKey"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 35
    move-object v8, p1

    check-cast v8, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    .line 37
    .local v8, "pubParams":Lorg/spongycastle/crypto/params/MQVPublicParameters;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    .line 39
    .local v2, "staticPrivateKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 43
    .local v7, "agreement":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 25
    check-cast p1, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .line 26
    return-void
.end method
