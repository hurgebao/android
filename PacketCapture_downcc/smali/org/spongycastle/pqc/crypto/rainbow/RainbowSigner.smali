.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;
.source "RainbowSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

.field key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private x:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private initSign([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S
    .locals 5
    .param p1, "layer"    # [Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .param p2, "msg"    # [S

    .prologue
    .line 79
    array-length v3, p2

    new-array v2, v3, [S

    .line 81
    .local v2, "tmpVec":[S
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    .line 84
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v0

    .line 87
    .local v0, "Y_":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 89
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 90
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-short v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v0
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4
    .param p1, "message"    # [B

    .prologue
    .line 282
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v2, v3, [S

    .line 284
    .local v2, "output":[S
    const/4 v0, 0x0

    .line 285
    .local v0, "h":I
    const/4 v1, 0x0

    .line 288
    .local v1, "i":I
    :cond_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 299
    :goto_0
    return-object v2

    .line 292
    :cond_1
    aget-byte v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 293
    aget-short v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v1, v1, 0x1

    .line 297
    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_0
.end method

.method private verifySignatureIntern([S)[S
    .locals 13
    .param p1, "signature"    # [S

    .prologue
    .line 239
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v0

    .line 240
    .local v0, "coeff_quadratic":[[S
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v2

    .line 241
    .local v2, "coeff_singular":[[S
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v1

    .line 243
    .local v1, "coeff_scalar":[S
    array-length v10, v0

    new-array v6, v10, [S

    .line 244
    .local v6, "rslt":[S
    const/4 v10, 0x0

    aget-object v10, v2, v10

    array-length v3, v10

    .line 245
    .local v3, "n":I
    const/4 v4, 0x0

    .line 246
    .local v4, "offset":I
    const/4 v7, 0x0

    .line 248
    .local v7, "tmp":S
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    array-length v10, v0

    if-ge v5, v10, :cond_2

    .line 250
    const/4 v4, 0x0

    .line 251
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v3, :cond_1

    .line 254
    move v9, v8

    .local v9, "y":I
    :goto_2
    if-ge v9, v3, :cond_0

    .line 256
    aget-object v10, v0, v5

    aget-short v10, v10, v4

    aget-short v11, p1, v8

    aget-short v12, p1, v9

    invoke-static {v11, v12}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v7

    .line 258
    aget-short v10, v6, v5

    invoke-static {v10, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 259
    add-int/lit8 v4, v4, 0x1

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 262
    :cond_0
    aget-object v10, v2, v5

    aget-short v10, v10, v8

    aget-short v11, p1, v8

    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v7

    .line 263
    aget-short v10, v6, v5

    invoke-static {v10, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 266
    .end local v9    # "y":I
    :cond_1
    aget-short v10, v6, v5

    aget-short v11, v1, v5

    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    .end local v8    # "x":I
    :cond_2
    return-object v6
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 21
    .param p1, "message"    # [B

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v9

    .line 111
    .local v9, "layer":[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    array-length v11, v9

    .line 113
    .local v11, "numberOfLayers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    .line 125
    add-int/lit8 v18, v11, -0x1

    aget-object v18, v9, v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v18

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 127
    .local v3, "S":[B
    invoke-direct/range {p0 .. p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v10

    .line 133
    .local v10, "msgHashVals":[S
    :cond_0
    const/4 v12, 0x1

    .line 134
    .local v12, "ok":Z
    const/4 v5, 0x0

    .line 137
    .local v5, "counter":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->initSign([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S

    move-result-object v4

    .line 139
    .local v4, "Y_":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_5

    .line 142
    aget-object v18, v9, v6

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [S

    move-object/from16 v17, v0

    .line 143
    .local v17, "y_i":[S
    aget-object v18, v9, v6

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [S

    .line 146
    .local v15, "solVec":[S
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    aget-object v18, v9, v6

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 148
    aget-short v18, v4, v5

    aput-short v18, v17, v8

    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v18, v0

    aget-object v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->plugInVinegars([S)[[S

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v15

    .line 158
    if-nez v15, :cond_3

    .line 160
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "LES is not solveable!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 180
    .end local v4    # "Y_":[S
    .end local v6    # "i":I
    .end local v8    # "k":I
    .end local v15    # "solVec":[S
    .end local v17    # "y_i":[S
    :catch_0
    move-exception v13

    .line 183
    .local v13, "se":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 186
    .end local v13    # "se":Ljava/lang/Exception;
    :cond_2
    if-eqz v12, :cond_0

    .line 188
    return-object v3

    .line 164
    .restart local v4    # "Y_":[S
    .restart local v6    # "i":I
    .restart local v8    # "k":I
    .restart local v15    # "solVec":[S
    .restart local v17    # "y_i":[S
    :cond_3
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v18, v0

    aget-object v19, v9, v6

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v19

    add-int v19, v19, v7

    aget-short v20, v15, v7

    aput-short v20, v18, v19

    .line 164
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 139
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 171
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v15    # "solVec":[S
    .end local v17    # "y_i":[S
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v16

    .line 172
    .local v16, "tmpVec":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v14

    .line 175
    .local v14, "signature":[S
    const/4 v6, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 177
    aget-short v18, v14, v6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 40
    if-eqz p1, :cond_1

    .line 42
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 44
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 46
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 47
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 62
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    .line 63
    return-void

    .line 53
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 54
    check-cast p2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    .line 59
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 9
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    const/4 v6, 0x0

    .line 201
    array-length v7, p2

    new-array v2, v7, [S

    .line 204
    .local v2, "sigInt":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p2

    if-ge v0, v7, :cond_0

    .line 206
    aget-byte v7, p2, v0

    int-to-short v3, v7

    .line 207
    .local v3, "tmp":S
    and-int/lit16 v7, v3, 0xff

    int-to-short v3, v7

    .line 208
    aput-short v3, v2, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "tmp":S
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v1

    .line 214
    .local v1, "msgHashVal":[S
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignatureIntern([S)[S

    move-result-object v4

    .line 217
    .local v4, "verificationResult":[S
    const/4 v5, 0x1

    .line 218
    .local v5, "verified":Z
    array-length v7, v1

    array-length v8, v4

    if-eq v7, v8, :cond_1

    .line 227
    :goto_1
    return v6

    .line 222
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v7, v1

    if-ge v0, v7, :cond_3

    .line 224
    if-eqz v5, :cond_2

    aget-short v7, v1, v0

    aget-short v8, v4, v0

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    .line 222
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v5, v6

    .line 224
    goto :goto_3

    :cond_3
    move v6, v5

    .line 227
    goto :goto_1
.end method
