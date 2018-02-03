.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source "McElieceKobaraImaiCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private k:I

.field key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/spongycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .prologue
    .line 103
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 104
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 106
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 108
    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .prologue
    .line 89
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 94
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    .line 98
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
    .line 55
    if-eqz p1, :cond_1

    .line 57
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 59
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 61
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 62
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 63
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 79
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 68
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 69
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 70
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 75
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 76
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 113
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 115
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 116
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 30
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    shr-int/lit8 v22, v27, 0x3

    .line 220
    .local v22, "nDiv8":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 222
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "Bad Padding: Ciphertext too short."

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 226
    .local v6, "c2Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v27, v0

    shr-int/lit8 v9, v27, 0x3

    .line 227
    .local v9, "c4Len":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v14, v27, v22

    .line 231
    .local v14, "c6Len":I
    if-lez v14, :cond_2

    .line 233
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v13

    .line 234
    .local v13, "c6EncC4":[[B
    const/16 v27, 0x0

    aget-object v12, v13, v27

    .line 235
    .local v12, "c6":[B
    const/16 v27, 0x1

    aget-object v17, v13, v27

    .line 244
    .end local v13    # "c6EncC4":[[B
    .local v17, "encC4":[B
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v18

    .line 247
    .local v18, "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v27, v0

    check-cast v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 249
    .local v10, "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/16 v27, 0x0

    aget-object v27, v10, v27

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v8

    .line 250
    .local v8, "c4":[B
    const/16 v27, 0x1

    aget-object v26, v10, v27

    .line 253
    .local v26, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_1

    .line 256
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v8, v0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v8

    .line 260
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->decode(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v11

    .line 263
    .local v11, "c5":[B
    invoke-static {v12, v11}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v15

    .line 264
    .local v15, "c6c5c4":[B
    invoke-static {v15, v8}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v15

    .line 268
    array-length v0, v15

    move/from16 v27, v0

    sub-int v4, v27, v6

    .line 269
    .local v4, "c1Len":I
    invoke-static {v15, v6}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v7

    .line 270
    .local v7, "c2c1":[[B
    const/16 v27, 0x0

    aget-object v5, v7, v27

    .line 271
    .local v5, "c2":[B
    const/16 v27, 0x1

    aget-object v3, v7, v27

    .line 274
    .local v3, "c1":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 275
    .local v23, "rPrime":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    array-length v0, v3

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 279
    add-int/lit8 v19, v6, -0x1

    .local v19, "i":I
    :goto_1
    if-ltz v19, :cond_3

    .line 281
    aget-byte v27, v23, v19

    aget-byte v28, v5, v19

    xor-int v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v23, v19

    .line 279
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 239
    .end local v3    # "c1":[B
    .end local v4    # "c1Len":I
    .end local v5    # "c2":[B
    .end local v7    # "c2c1":[[B
    .end local v8    # "c4":[B
    .end local v10    # "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .end local v11    # "c5":[B
    .end local v12    # "c6":[B
    .end local v15    # "c6c5c4":[B
    .end local v17    # "encC4":[B
    .end local v18    # "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .end local v19    # "i":I
    .end local v23    # "rPrime":[B
    .end local v26    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    :cond_2
    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v12, v0, [B

    .line 240
    .restart local v12    # "c6":[B
    move-object/from16 v17, p1

    .restart local v17    # "encC4":[B
    goto/16 :goto_0

    .line 285
    .restart local v3    # "c1":[B
    .restart local v4    # "c1Len":I
    .restart local v5    # "c2":[B
    .restart local v7    # "c2c1":[[B
    .restart local v8    # "c4":[B
    .restart local v10    # "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .restart local v11    # "c5":[B
    .restart local v15    # "c6c5c4":[B
    .restart local v18    # "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .restart local v19    # "i":I
    .restart local v23    # "rPrime":[B
    .restart local v26    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    :cond_3
    new-instance v24, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v27, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v27 .. v27}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 288
    .local v24, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 291
    new-array v0, v4, [B

    move-object/from16 v20, v0

    .line 292
    .local v20, "mConstPrime":[B
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 295
    add-int/lit8 v19, v4, -0x1

    :goto_2
    if-ltz v19, :cond_4

    .line 297
    aget-byte v27, v20, v19

    aget-byte v28, v3, v19

    xor-int v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v20, v19

    .line 295
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 300
    :cond_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_5

    .line 302
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "Bad Padding: invalid ciphertext"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 305
    :cond_5
    sget-object v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v4, v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v25

    .line 307
    .local v25, "temp":[[B
    const/16 v27, 0x0

    aget-object v21, v25, v27

    .line 308
    .local v21, "mr":[B
    const/16 v27, 0x1

    aget-object v16, v25, v27

    .line 310
    .local v16, "constPrime":[B
    sget-object v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v27

    if-nez v27, :cond_6

    .line 312
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "Bad Padding: invalid ciphertext"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 315
    :cond_6
    return-object v21
.end method

.method public messageEncrypt([B)[B
    .locals 27
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    .line 123
    .local v8, "c2Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v24, v0

    shr-int/lit8 v11, v24, 0x3

    .line 124
    .local v11, "c4Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    shr-int/lit8 v14, v24, 0x3

    .line 127
    .local v14, "c5Len":I
    add-int v24, v11, v14

    sub-int v24, v24, v8

    sget-object v25, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v20, v24, v25

    .line 128
    .local v20, "mLen":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 130
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 133
    :cond_0
    sget-object v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v6, v20, v24

    .line 134
    .local v6, "c1Len":I
    add-int v24, v6, v8

    sub-int v24, v24, v11

    sub-int v16, v24, v14

    .line 137
    .local v16, "c6Len":I
    new-array v0, v6, [B

    move-object/from16 v19, v0

    .line 138
    .local v19, "mConst":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    sget-object v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    const/16 v25, 0x0

    sget-object v26, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-array v0, v8, [B

    move-object/from16 v21, v0

    .line 144
    .local v21, "r":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 148
    new-instance v22, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v24, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v24 .. v24}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 151
    .local v22, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 154
    new-array v5, v6, [B

    .line 155
    .local v5, "c1":[B
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 158
    add-int/lit8 v18, v6, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_1

    .line 160
    aget-byte v24, v5, v18

    aget-byte v25, v19, v18

    xor-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v18

    .line 158
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 165
    .local v7, "c2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    array-length v0, v5

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 169
    add-int/lit8 v18, v8, -0x1

    :goto_1
    if-ltz v18, :cond_2

    .line 171
    aget-byte v24, v7, v18

    aget-byte v25, v21, v18

    xor-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v7, v18

    .line 169
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v7, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v9

    .line 180
    .local v9, "c2c1":[B
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v15, v0, [B

    .line 181
    .local v15, "c6":[B
    if-lez v16, :cond_3

    .line 183
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 184
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v9, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_3
    new-array v13, v14, [B

    .line 188
    .local v13, "c5":[B
    const/16 v24, 0x0

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v9, v0, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-array v10, v11, [B

    .line 191
    .local v10, "c4":[B
    add-int v24, v16, v14

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v9, v0, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v12

    .line 197
    .local v12, "c4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v13}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v23

    .line 200
    .local v23, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v24, v0

    check-cast v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v17

    .line 204
    .local v17, "encC4":[B
    if-lez v16, :cond_4

    .line 207
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v17

    .line 210
    .end local v17    # "encC4":[B
    :cond_4
    return-object v17
.end method
