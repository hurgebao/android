.class public Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 27
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 40
    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 195
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 196
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 200
    .local v3, "pSub2":Ljava/math/BigInteger;
    :cond_0
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v4, v3, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 201
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 202
    .local v1, "g":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 204
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 331
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 338
    sget-object v7, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 339
    .local v3, "e":Ljava/math/BigInteger;
    const-string v7, "6767656E"

    invoke-static {v7}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 342
    .local v5, "ggen":[B
    array-length v7, p3

    array-length v8, v5

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 343
    .local v0, "U":[B
    array-length v7, p3

    invoke-static {p3, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v7, p3

    array-length v8, v5

    invoke-static {v5, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    int-to-byte v8, p4

    aput-byte v8, v0, v7

    .line 347
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v6, v7, [B

    .line 348
    .local v6, "w":[B
    const/4 v2, 0x1

    .local v2, "count":I
    :goto_0
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_1

    .line 350
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 351
    invoke-static {p0, v0, v6}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 352
    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 353
    .local v1, "W":Ljava/math/BigInteger;
    invoke-virtual {v1, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 354
    .local v4, "g":Ljava/math/BigInteger;
    sget-object v7, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 360
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :goto_1
    return-object v4

    .line 348
    .restart local v1    # "W":Ljava/math/BigInteger;
    .restart local v4    # "g":Ljava/math/BigInteger;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 23

    .prologue
    .line 118
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v15, v0, [B

    .line 119
    .local v15, "seed":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 120
    .local v12, "part1":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 121
    .local v13, "part2":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 122
    .local v16, "u":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    div-int/lit16 v9, v0, 0xa0

    .line 123
    .local v9, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 125
    .local v17, "w":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 127
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 144
    .local v7, "i":I
    :cond_0
    const/16 v19, 0x0

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 145
    const/16 v19, 0x13

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 147
    new-instance v14, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 149
    .local v14, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v19

    if-nez v19, :cond_2

    .line 132
    .end local v7    # "i":I
    .end local v14    # "q":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v15, v12}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 135
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-static {v13}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13, v13}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 139
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v7, v0, :cond_0

    .line 141
    aget-byte v19, v12, v7

    aget-byte v20, v13, v7

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v7

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 154
    .restart local v14    # "q":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v15}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    .line 155
    .local v10, "offset":[B
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 157
    const/4 v5, 0x0

    .local v5, "counter":I
    :goto_1
    const/16 v19, 0x1000

    move/from16 v0, v19

    if-ge v5, v0, :cond_1

    .line 159
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 161
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v12}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 163
    const/16 v19, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    array-length v0, v12

    move/from16 v22, v0

    mul-int v21, v21, v22

    sub-int v20, v20, v21

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 166
    :cond_3
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v12}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 168
    array-length v0, v12

    move/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v12

    move/from16 v21, v0

    mul-int v21, v21, v9

    sub-int v20, v20, v21

    sub-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    array-length v0, v12

    move/from16 v22, v0

    mul-int v22, v22, v9

    sub-int v21, v21, v22

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    const/16 v19, 0x0

    aget-byte v20, v17, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v19

    .line 172
    new-instance v18, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 174
    .local v18, "x":Ljava/math/BigInteger;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 176
    .local v4, "c":Ljava/math/BigInteger;
    sget-object v19, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 178
    .local v11, "p":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 157
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 183
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v11, v14, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 187
    .local v6, "g":Ljava/math/BigInteger;
    new-instance v19, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v20, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v5}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v14, v6, v1}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v19
.end method

.method private generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 27

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 218
    .local v12, "d":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v12}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    mul-int/lit8 v18, v24, 0x8

    .line 226
    .local v18, "outlen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v23, v0

    .line 227
    .local v23, "seedlen":I
    div-int/lit8 v24, v23, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 230
    .local v22, "seed":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    div-int v16, v24, v18

    .line 233
    .local v16, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    rem-int v8, v24, v18

    .line 235
    .local v8, "b":I
    invoke-interface {v12}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 239
    .local v19, "output":[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 242
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 244
    new-instance v24, Ljava/math/BigInteger;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v25, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 247
    .local v4, "U":Ljava/math/BigInteger;
    sget-object v24, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    sget-object v25, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    sget-object v25, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 251
    .local v21, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 259
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v17

    .line 262
    .local v17, "offset":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    mul-int/lit8 v11, v24, 0x4

    .line 263
    .local v11, "counterLimit":I
    const/4 v10, 0x0

    .local v10, "counter":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 269
    sget-object v6, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 270
    .local v6, "W":Ljava/math/BigInteger;
    const/4 v15, 0x0

    .local v15, "j":I
    const/4 v13, 0x0

    .local v13, "exp":I
    :goto_1
    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 272
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 273
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 275
    new-instance v5, Ljava/math/BigInteger;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 276
    .local v5, "Vj":Ljava/math/BigInteger;
    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 278
    sget-object v24, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 281
    :cond_1
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 270
    add-int/lit8 v15, v15, 0x1

    add-int v13, v13, v18

    goto :goto_1

    .line 285
    .end local v5    # "Vj":Ljava/math/BigInteger;
    :cond_2
    sget-object v24, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 288
    .local v7, "X":Ljava/math/BigInteger;
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 291
    .local v9, "c":Ljava/math/BigInteger;
    sget-object v24, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 294
    .local v20, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 263
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 301
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    if-ltz v24, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v24

    invoke-static {v12, v0, v1, v2, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v14

    .line 308
    .local v14, "g":Ljava/math/BigInteger;
    if-eqz v14, :cond_5

    .line 310
    new-instance v24, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v25, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v10, v2}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    .line 316
    :goto_2
    return-object v24

    .line 314
    .end local v14    # "g":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v14

    .line 316
    .restart local v14    # "g":Ljava/math/BigInteger;
    new-instance v24, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v25, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    goto :goto_2
.end method

.method private static getDefaultN(I)I
    .locals 1
    .param p0, "L"    # I

    .prologue
    .line 371
    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[B)V
    .locals 2
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x0

    .line 365
    array-length v0, p1

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 366
    invoke-interface {p0, p2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 367
    return-void
.end method

.method private static inc([B)V
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 376
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 378
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 379
    .local v0, "b":B
    aput-byte v0, p0, v1

    .line 381
    if-eqz v0, :cond_1

    .line 386
    .end local v0    # "b":B
    :cond_0
    return-void

    .line 376
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 55
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 56
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 57
    iput p2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 58
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 59
    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    .prologue
    const/16 v3, 0xc00

    const/16 v1, 0x400

    const/16 v2, 0x100

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 80
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-gt v0, v3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 160 for L = 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    if-eq v0, v2, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 224 or 256 for L = 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    if-eq v0, v2, :cond_4

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 256 for L = 3072"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    if-ge v0, v1, :cond_5

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digest output size too small for value of N"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5
    return-void
.end method
