.class public Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 2
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .prologue
    .line 304
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 306
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .line 316
    .local v0, "key":[B
    :goto_0
    return-object v0

    .line 308
    .end local v0    # "key":[B
    :cond_0
    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 310
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0

    .line 314
    .end local v0    # "key":[B
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0
.end method

.method private static makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 56
    if-eqz p0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 58
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 70
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 136
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 64
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 65
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 67
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 68
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 73
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    .line 75
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 99
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 79
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 81
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 82
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 84
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 85
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 87
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 88
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 90
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 91
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 93
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 94
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 96
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_a
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 97
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 102
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 104
    packed-switch p1, :pswitch_data_2

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_b
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 108
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 110
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_c
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 111
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 113
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_d
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 114
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 116
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_e
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 117
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 119
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_f
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 120
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 122
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_10
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 123
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 125
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_11
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 126
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 133
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 75
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
    .end packed-switch

    .line 104
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .prologue
    .line 282
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 286
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 288
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 290
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 292
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-eq v1, v4, :cond_0

    .line 294
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v3
.end method

.method public static makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 209
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 212
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 213
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 214
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 217
    .local v2, "key":[B
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 222
    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 226
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_3

    .line 228
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_3
    return-object v3
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .prologue
    .line 245
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 249
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 251
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 253
    if-eqz p4, :cond_0

    .line 255
    invoke-virtual {v0, p3, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 262
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    .line 264
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "i":I
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 267
    .restart local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public static makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 8
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    .line 150
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 153
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 154
    .local v5, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 155
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v3

    .line 158
    .local v3, "key":[B
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    const/4 v6, 0x2

    new-array v3, v6, [B

    .line 163
    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 165
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_4

    .line 167
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 174
    .local v4, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const-string v6, "DES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    instance-of v6, v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_5

    move-object v6, v4

    .line 178
    check-cast v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 180
    .local v2, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 190
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_6

    .line 192
    const/4 v6, 0x0

    aput-byte v6, v3, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    .end local v1    # "i":I
    .end local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 184
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 186
    .restart local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    .line 195
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local v1    # "i":I
    :cond_6
    return-object v4
.end method
