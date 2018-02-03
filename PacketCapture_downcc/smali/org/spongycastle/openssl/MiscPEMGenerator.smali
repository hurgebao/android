.class public Lorg/spongycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;
.source "MiscPEMGenerator.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final hexEncodingTable:[B


# instance fields
.field private final encryptor:Lorg/spongycastle/openssl/PEMEncryptor;

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method private createPemObject(Ljava/lang/Object;)Lorg/spongycastle/util/io/pem/PemObject;
    .locals 18
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/util/io/pem/PemObject;

    if-eqz v14, :cond_0

    .line 70
    check-cast p1, Lorg/spongycastle/util/io/pem/PemObject;

    .line 178
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 72
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/util/io/pem/PemObjectGenerator;

    if-eqz v14, :cond_1

    .line 74
    check-cast p1, Lorg/spongycastle/util/io/pem/PemObjectGenerator;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object p1

    goto :goto_0

    .line 76
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/cert/X509CertificateHolder;

    if-eqz v14, :cond_3

    .line 78
    const-string v10, "CERTIFICATE"

    .line 80
    .local v10, "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/cert/X509CertificateHolder;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v5

    .line 156
    .local v5, "encoding":[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/spongycastle/openssl/PEMEncryptor;

    if-eqz v14, :cond_e

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/spongycastle/openssl/PEMEncryptor;

    invoke-interface {v14}, Lorg/spongycastle/openssl/PEMEncryptor;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "dekAlgName":Ljava/lang/String;
    const-string v14, "DESEDE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 163
    const-string v3, "DES-EDE3-CBC"

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/spongycastle/openssl/PEMEncryptor;

    invoke-interface {v14}, Lorg/spongycastle/openssl/PEMEncryptor;->getIV()[B

    move-result-object v8

    .line 169
    .local v8, "iv":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/spongycastle/openssl/PEMEncryptor;

    invoke-interface {v14, v5}, Lorg/spongycastle/openssl/PEMEncryptor;->encrypt([B)[B

    move-result-object v4

    .line 171
    .local v4, "encData":[B
    new-instance v6, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v6, "headers":Ljava/util/List;
    new-instance v14, Lorg/spongycastle/util/io/pem/PemHeader;

    const-string v15, "Proc-Type"

    const-string v16, "4,ENCRYPTED"

    invoke-direct/range {v14 .. v16}, Lorg/spongycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v14, Lorg/spongycastle/util/io/pem/PemHeader;

    const-string v15, "DEK-Info"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/spongycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p1, Lorg/spongycastle/util/io/pem/PemObject;

    move-object/from16 v0, p1

    invoke-direct {v0, v10, v6, v4}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    goto/16 :goto_0

    .line 82
    .end local v3    # "dekAlgName":Ljava/lang/String;
    .end local v4    # "encData":[B
    .end local v5    # "encoding":[B
    .end local v6    # "headers":Ljava/util/List;
    .end local v8    # "iv":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/cert/X509CRLHolder;

    if-eqz v14, :cond_4

    .line 84
    const-string v10, "X509 CRL"

    .line 86
    .restart local v10    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/cert/X509CRLHolder;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/cert/X509CRLHolder;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto :goto_1

    .line 88
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v14, :cond_9

    move-object/from16 v7, p1

    .line 90
    check-cast v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .line 91
    .local v7, "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 93
    .local v2, "algOID":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    sget-object v14, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 95
    const-string v10, "RSA PRIVATE KEY"

    .line 97
    .restart local v10    # "type":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 99
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    :cond_5
    sget-object v14, Lorg/spongycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v2, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Lorg/spongycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v2, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 101
    :cond_6
    const-string v10, "DSA PRIVATE KEY"

    .line 103
    .restart local v10    # "type":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-static {v14}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v9

    .line 104
    .local v9, "p":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v11, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v11, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-static {v14}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    .line 112
    .local v12, "x":Ljava/math/BigInteger;
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 114
    .local v13, "y":Ljava/math/BigInteger;
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v14, v13}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v14, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v14, v12}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    new-instance v14, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v14, v11}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14}, Lorg/spongycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v5

    .line 118
    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 119
    .end local v5    # "encoding":[B
    .end local v9    # "p":Lorg/spongycastle/asn1/x509/DSAParameter;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v12    # "x":Ljava/math/BigInteger;
    .end local v13    # "y":Ljava/math/BigInteger;
    :cond_7
    sget-object v14, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 121
    const-string v10, "EC PRIVATE KEY"

    .line 123
    .restart local v10    # "type":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 127
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Cannot identify private key"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 130
    .end local v2    # "algOID":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_9
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v14, :cond_a

    .line 132
    const-string v10, "PUBLIC KEY"

    .line 134
    .restart local v10    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 136
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    if-eqz v14, :cond_b

    .line 138
    const-string v10, "ATTRIBUTE CERTIFICATE"

    .line 139
    .restart local v10    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 141
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    if-eqz v14, :cond_c

    .line 143
    const-string v10, "CERTIFICATE REQUEST"

    .line 144
    .restart local v10    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 146
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v14, :cond_d

    .line 148
    const-string v10, "PKCS7"

    .line 149
    .restart local v10    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/asn1/cms/ContentInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v5

    .restart local v5    # "encoding":[B
    goto/16 :goto_1

    .line 153
    .end local v5    # "encoding":[B
    .end local v10    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_d
    new-instance v14, Lorg/spongycastle/util/io/pem/PemGenerationException;

    const-string v15, "unknown object passed - can\'t encode."

    invoke-direct {v14, v15}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 178
    .end local p1    # "o":Ljava/lang/Object;
    .restart local v5    # "encoding":[B
    .restart local v10    # "type":Ljava/lang/String;
    :cond_e
    new-instance p1, Lorg/spongycastle/util/io/pem/PemObject;

    move-object/from16 v0, p1

    invoke-direct {v0, v10, v5}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 186
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_0

    .line 188
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 190
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/spongycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 191
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/spongycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method


# virtual methods
.method public generate()Lorg/spongycastle/util/io/pem/PemObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/spongycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/spongycastle/util/io/pem/PemObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
