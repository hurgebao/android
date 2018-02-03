.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;
.super Ljava/lang/Object;
.source "McEliecePointchevalCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# instance fields
.field private k:I

.field key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/spongycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 88
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    .line 92
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 46
    if-eqz p1, :cond_1

    .line 48
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 50
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 52
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    .line 53
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 54
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 70
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 59
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    .line 60
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 61
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 66
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 67
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 120
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    .line 121
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->k:I

    .line 122
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->t:I

    .line 123
    return-void
.end method

.method public initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    .line 111
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 112
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    .line 113
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->k:I

    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->t:I

    .line 115
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method public messageDecrypt([B)[B
    .locals 21
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    shr-int/lit8 v5, v18, 0x3

    .line 187
    .local v5, "c1Len":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    sub-int v9, v18, v5

    .line 190
    .local v9, "c2Len":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v7

    .line 191
    .local v7, "c1c2":[[B
    const/16 v18, 0x0

    aget-object v3, v7, v18

    .line 192
    .local v3, "c1":[B
    const/16 v18, 0x1

    aget-object v8, v7, v18

    .line 195
    .local v8, "c2":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 196
    .local v6, "c1Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v4

    .line 198
    .local v4, "c1Dec":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v15

    .line 200
    .local v15, "rPrimeBytes":[B
    const/16 v18, 0x1

    aget-object v17, v4, v18

    .line 203
    .local v17, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    new-instance v16, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v18, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v18 .. v18}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 206
    .local v16, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 209
    new-array v14, v9, [B

    .line 210
    .local v14, "mrBytes":[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 213
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 215
    aget-byte v18, v14, v11

    aget-byte v19, v8, v11

    xor-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v14, v11

    .line 213
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v14, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v18

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 221
    .local v10, "hmr":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v10, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->t:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v10}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 229
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "Bad Padding: Invalid ciphertext."

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->k:I

    move/from16 v18, v0

    shr-int/lit8 v12, v18, 0x3

    .line 234
    .local v12, "kDiv8":I
    sub-int v18, v9, v12

    move/from16 v0, v18

    invoke-static {v14, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v13

    .line 237
    .local v13, "mr":[[B
    const/16 v18, 0x0

    aget-object v18, v13, v18

    return-object v18
.end method

.method public messageEncrypt([B)[B
    .locals 14
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 129
    iget v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->k:I

    shr-int/lit8 v4, v11, 0x3

    .line 132
    .local v4, "kDiv8":I
    new-array v6, v4, [B

    .line 133
    .local v6, "r":[B
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v11, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->k:I

    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 139
    .local v7, "rPrime":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v8

    .line 142
    .local v8, "rPrimeBytes":[B
    invoke-static {p1, v6}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v5

    .line 145
    .local v5, "mr":[B
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    array-length v12, v5

    invoke-interface {v11, v5, v13, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 146
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v2, v11, [B

    .line 147
    .local v2, "hmr":[B
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11, v2, v13}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 151
    iget v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->n:I

    iget v12, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->t:I

    invoke-static {v11, v12, v2}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 154
    .local v10, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v11, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v11, v7, v10}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    .line 158
    .local v0, "c1":[B
    new-instance v9, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v11, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v11}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v11}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 161
    .local v9, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v9, v8}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 164
    array-length v11, p1

    add-int/2addr v11, v4

    new-array v1, v11, [B

    .line 165
    .local v1, "c2":[B
    invoke-virtual {v9, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 168
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, p1

    if-ge v3, v11, :cond_0

    .line 170
    aget-byte v11, v1, v3

    aget-byte v12, p1, v3

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 175
    array-length v11, p1

    add-int/2addr v11, v3

    aget-byte v12, v1, v11

    aget-byte v13, v6, v3

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_1
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v11

    return-object v11
.end method
