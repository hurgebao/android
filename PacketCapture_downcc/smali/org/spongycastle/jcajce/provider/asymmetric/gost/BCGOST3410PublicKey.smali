.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
.super Ljava/lang/Object;
.source "BCGOST3410PublicKey.java"

# interfaces
.implements Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;


# instance fields
.field private transient gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 8
    .param p1, "info"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v5, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 69
    .local v5, "params":Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DEROctetString;

    .line 71
    .local v0, "derY":Lorg/spongycastle/asn1/DEROctetString;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    .line 72
    .local v4, "keyEnc":[B
    array-length v6, v4

    new-array v3, v6, [B

    .line 74
    .local v3, "keyBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-eq v2, v6, :cond_0

    .line 76
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget-byte v6, v4, v6

    aput-byte v6, v3, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-static {v5}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->fromPublicKeyAlg(Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 87
    return-void

    .line 81
    .end local v0    # "derY":Lorg/spongycastle/asn1/DEROctetString;
    .end local v2    # "i":I
    .end local v3    # "keyBytes":[B
    .end local v4    # "keyEnc":[B
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid info structure in GOST3410 public key"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;
    .param p2, "spec"    # Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;)V
    .locals 1
    .param p1, "key"    # Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;)V
    .locals 5
    .param p1, "spec"    # Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    .line 35
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 168
    instance-of v2, p1, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 170
    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    .line 172
    .local v0, "other":Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 175
    .end local v0    # "other":Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 105
    .local v4, "keyEnc":[B
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-nez v5, :cond_0

    .line 107
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [B

    .line 114
    .local v3, "keyBytes":[B
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-eq v1, v5, :cond_1

    .line 116
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    aget-byte v5, v4, v5

    aput-byte v5, v3, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "i":I
    .end local v3    # "keyBytes":[B
    :cond_0
    array-length v5, v4

    new-array v3, v5, [B

    .restart local v3    # "keyBytes":[B
    goto :goto_0

    .line 121
    .restart local v1    # "i":I
    :cond_1
    :try_start_0
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    instance-of v5, v5, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v5, :cond_3

    .line 123
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getEncryptionParamSetOID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 125
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v9}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v10}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v10, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v11}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getEncryptionParamSetOID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    .local v2, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_2
    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v5

    .line 141
    .end local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_3
    return-object v5

    .line 129
    :cond_2
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v9}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v10}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .restart local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    goto :goto_2

    .line 134
    .end local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_3
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    goto :goto_2

    .line 139
    .end local v2    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "GOST3410 Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v2, "            y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
