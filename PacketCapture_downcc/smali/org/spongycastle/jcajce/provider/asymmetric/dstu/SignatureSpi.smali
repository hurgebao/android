.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SignatureSpi.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# static fields
.field private static DEFAULT_SBOX:[B


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x9t
        0xdt
        0x6t
        0xet
        0xbt
        0x4t
        0x5t
        0xft
        0x1t
        0x3t
        0xct
        0x7t
        0x0t
        0x8t
        0x2t
        0x8t
        0x0t
        0xct
        0x4t
        0x9t
        0x6t
        0x7t
        0xbt
        0x2t
        0x3t
        0x1t
        0xft
        0x5t
        0xet
        0xat
        0xdt
        0xft
        0x6t
        0x5t
        0x8t
        0xet
        0xbt
        0xat
        0x4t
        0xct
        0x0t
        0x3t
        0x7t
        0x2t
        0x9t
        0x1t
        0xdt
        0x3t
        0x8t
        0xdt
        0x9t
        0x6t
        0xbt
        0xft
        0x0t
        0x2t
        0x5t
        0xct
        0xat
        0x4t
        0xet
        0x1t
        0x7t
        0xft
        0x8t
        0xet
        0x9t
        0x7t
        0x2t
        0x0t
        0xdt
        0xct
        0x6t
        0x1t
        0x5t
        0xbt
        0x4t
        0x3t
        0xat
        0x2t
        0x8t
        0x9t
        0x7t
        0x5t
        0xft
        0x0t
        0xbt
        0xct
        0x1t
        0xdt
        0xet
        0xat
        0x3t
        0x6t
        0x4t
        0x3t
        0x8t
        0xbt
        0x5t
        0x6t
        0x4t
        0xet
        0xat
        0x2t
        0xct
        0x1t
        0x7t
        0x9t
        0xft
        0xdt
        0x0t
        0x1t
        0x2t
        0x3t
        0xet
        0x6t
        0xdt
        0xbt
        0x8t
        0xft
        0xat
        0xct
        0x5t
        0x7t
        0x9t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    .line 49
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    instance-of v1, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 111
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 113
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 57
    instance-of v3, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 59
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 84
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    new-instance v3, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    check-cast p1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getSbox()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->expandSbox([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 85
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    return-void

    .line 65
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 67
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    .line 69
    instance-of v3, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_1

    .line 71
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 75
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 142
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v1, v6, [B

    .line 144
    .local v1, "hash":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v1, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 148
    :try_start_0
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v6, v1}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v4

    .line 149
    .local v4, "sig":[Ljava/math/BigInteger;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 150
    .local v2, "r":[B
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 152
    .local v3, "s":[B
    array-length v6, v2

    array-length v7, v3

    if-le v6, v7, :cond_0

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    :goto_0
    new-array v5, v6, [B

    .line 153
    .local v5, "sigBytes":[B
    const/4 v6, 0x0

    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v3

    sub-int/2addr v7, v8

    array-length v8, v3

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    const/4 v6, 0x0

    array-length v7, v5

    array-length v8, v2

    sub-int/2addr v7, v8

    array-length v8, v2

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v6, v5}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v6

    return-object v6

    .line 152
    .end local v5    # "sigBytes":[B
    :cond_0
    array-length v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 158
    .end local v2    # "r":[B
    .end local v3    # "s":[B
    .end local v4    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 128
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 137
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 11
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 168
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v2, v6, [B

    .line 170
    .local v2, "hash":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v2, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 176
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 178
    .local v0, "bytes":[B
    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    new-array v3, v6, [B

    .line 179
    .local v3, "r":[B
    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    new-array v4, v6, [B

    .line 181
    .local v4, "s":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    array-length v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-static {v0, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/math/BigInteger;

    .line 186
    .local v5, "sig":[Ljava/math/BigInteger;
    const/4 v6, 0x0

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v5, v6

    .line 187
    const/4 v6, 0x1

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object v7, v5, v9

    aget-object v8, v5, v10

    invoke-interface {v6, v2, v7, v8}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v6

    return v6

    .line 189
    .end local v0    # "bytes":[B
    .end local v3    # "r":[B
    .end local v4    # "s":[B
    .end local v5    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "error decoding signature bytes."

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method expandSbox([B)[B
    .locals 4
    .param p1, "compressed"    # [B

    .prologue
    .line 90
    const/16 v2, 0x80

    new-array v0, v2, [B

    .line 92
    .local v0, "expanded":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 94
    mul-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 95
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-object v0
.end method
