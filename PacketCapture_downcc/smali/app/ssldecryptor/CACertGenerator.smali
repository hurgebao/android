.class public final Lapp/ssldecryptor/CACertGenerator;
.super Ljava/lang/Object;
.source "CACertGenerator.kt"


# static fields
.field private static final BC:Ljava/lang/String; = "SC"

.field public static final INSTANCE:Lapp/ssldecryptor/CACertGenerator;

.field private static ONEYEAR_IN_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lapp/ssldecryptor/CACertGenerator;

    invoke-direct {v0}, Lapp/ssldecryptor/CACertGenerator;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/ssldecryptor/CACertGenerator;

    .end local p0    # "this":Lapp/ssldecryptor/CACertGenerator;
    sput-object p0, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    .line 31
    const-wide v0, 0x757b12c00L

    sput-wide v0, Lapp/ssldecryptor/CACertGenerator;->ONEYEAR_IN_MS:J

    .line 32
    const-string v0, "SC"

    sput-object v0, Lapp/ssldecryptor/CACertGenerator;->BC:Ljava/lang/String;

    return-void
.end method

.method private final generate(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;
    .locals 11
    .param p1, "storeFileName"    # Ljava/lang/String;

    .prologue
    .line 158
    nop

    .line 161
    :try_start_0
    invoke-direct {p0}, Lapp/ssldecryptor/CACertGenerator;->generateRSAKeyPair()Ljava/security/KeyPair;

    move-result-object v10

    .line 162
    .local v10, "pair":Ljava/security/KeyPair;
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 163
    .local v5, "privKey":Ljava/security/PrivateKey;
    invoke-direct {p0, v10}, Lapp/ssldecryptor/CACertGenerator;->generateV3Certificate(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 166
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 167
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 169
    const-string v0, "password"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "alias"

    const-string v0, "keypass"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privKey"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lapp/ssldecryptor/CACertGenerator;->save(Ljava/lang/String;[CLjava/lang/String;[CLjava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/KeyStore;

    move-result-object v9

    .line 171
    .local v9, "keyStore":Ljava/security/KeyStore;
    new-instance v7, Lapp/ssldecryptor/CertKeyStore;

    const-string v0, "password"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privKey"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v0, v6, v5}, Lapp/ssldecryptor/CertKeyStore;-><init>(Ljava/security/KeyStore;[CLjava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v7, "certKeyStore":Lapp/ssldecryptor/CertKeyStore;
    return-object v7

    .line 179
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certKeyStore":Lapp/ssldecryptor/CertKeyStore;
    .end local v9    # "keyStore":Ljava/security/KeyStore;
    .end local v10    # "pair":Ljava/security/KeyPair;
    :catch_0
    move-exception v8

    .line 180
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "cacert store create error %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 181
    check-cast v8, Ljava/lang/Throwable;

    .end local v8    # "e":Ljava/lang/Exception;
    throw v8
.end method

.method private final generateRSAKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    const-string v1, "RSA"

    sget-object v2, Lapp/ssldecryptor/CACertGenerator;->BC:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 240
    .local v0, "kpGen":Ljava/security/KeyPairGenerator;
    const/16 v1, 0x400

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 241
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    const-string v2, "kpGen.generateKeyPair()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final generateV3Certificate(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;
    .locals 14
    .param p1, "pair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 205
    new-instance v0, Lorg/spongycastle/cert/X509v3CertificateBuilder;

    new-instance v1, Lorg/spongycastle/asn1/x500/X500Name;

    const-string v2, "CN=Packet Capture CA Certificate"

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lapp/ssldecryptor/CACertGenerator;->ONEYEAR_IN_MS:J

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v10, Lapp/ssldecryptor/CACertGenerator;->ONEYEAR_IN_MS:J

    const/16 v5, 0xa

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v6, v10

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v6, Lorg/spongycastle/asn1/x500/X500Name;

    const-string v7, "CN=Packet Capture CA Certificate"

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 227
    .local v0, "builder":Lorg/spongycastle/cert/X509v3CertificateBuilder;
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2, v9, v1}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/X509v3CertificateBuilder;

    .line 228
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/x509/KeyUsage;

    const/16 v3, 0xa4

    invoke-direct {v1, v3}, Lorg/spongycastle/asn1/x509/KeyUsage;-><init>(I)V

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2, v9, v1}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/X509v3CertificateBuilder;

    .line 229
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;

    sget-object v3, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    invoke-direct {v1, v3}, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;-><init>(Lorg/spongycastle/asn1/x509/KeyPurposeId;)V

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2, v9, v1}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/X509v3CertificateBuilder;

    .line 231
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v4, Lorg/spongycastle/asn1/x509/GeneralName;

    const-string v5, "test@test.test"

    invoke-direct {v4, v9, v5}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2, v3, v1}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/X509v3CertificateBuilder;

    .line 233
    new-instance v1, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v2, "SHA256WithRSAEncryption"

    invoke-direct {v1, v2}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;

    move-result-object v8

    .line 234
    .local v8, "signer":Lorg/spongycastle/operator/ContentSigner;
    new-instance v1, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v1

    invoke-virtual {v0, v8}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const-string v2, "JcaX509CertificateConver\u2026te(builder.build(signer))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final loadFsCert(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;
    .locals 13
    .param p1, "storeFileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 122
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .local v5, "keyStore":Ljava/security/KeyStore;
    move-object v3, v7

    .line 125
    check-cast v3, Ljava/io/FileInputStream;

    .line 126
    .local v3, "fin":Ljava/io/FileInputStream;
    nop

    .line 129
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    if-nez v5, :cond_0

    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v8, v0

    const-string v9, "password"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const-string v10, "(this as java.lang.String).toCharArray()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 131
    const-string v8, "alias"

    const-string v9, "keypass"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const-string v10, "(this as java.lang.String).toCharArray()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    .line 132
    .local v6, "privKey":Ljava/security/PrivateKey;
    const-string v8, "alias"

    invoke-virtual {v5, v8}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 134
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "store load error %s\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v3, :cond_1

    .line 138
    nop

    .line 139
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v7

    .line 132
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "privKey":Ljava/security/PrivateKey;
    :cond_2
    :try_start_4
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    nop

    .line 139
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 144
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 147
    new-instance v7, Lapp/ssldecryptor/CertKeyStore;

    const-string v8, "password"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const-string v9, "(this as java.lang.String).toCharArray()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v5, v8, v1, v6}, Lapp/ssldecryptor/CertKeyStore;-><init>(Ljava/security/KeyStore;[CLjava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 137
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 138
    nop

    .line 139
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 141
    :cond_3
    :goto_4
    throw v7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "privKey":Ljava/security/PrivateKey;
    :cond_4
    move-object v3, v4

    .line 149
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 140
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 137
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 133
    :catch_4
    move-exception v2

    goto :goto_0
.end method

.method private final save(Ljava/lang/String;[CLjava/lang/String;[CLjava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/KeyStore;
    .locals 4
    .param p1, "storeFileName"    # Ljava/lang/String;
    .param p2, "storePass"    # [C
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "keyPass"    # [C
    .param p5, "privKey"    # Ljava/security/PrivateKey;
    .param p6, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 187
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 188
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 189
    check-cast p5, Ljava/security/Key;

    .end local p5    # "privKey":Ljava/security/PrivateKey;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    check-cast p6, Ljava/security/cert/Certificate;

    .end local p6    # "cert":Ljava/security/cert/X509Certificate;
    aput-object p6, v2, v3

    invoke-virtual {v1, p3, p5, p4, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 192
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v0, "fout":Ljava/io/FileOutputStream;
    move-object v2, v0

    .line 193
    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v1, v2, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 194
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 196
    const-string v2, "keyStore"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final generateFsCertStore(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-string v4, "context"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lapp/ssldecryptor/CACertGenerator;->makeStoreFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "storeFileName":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v1, v3

    .line 52
    :goto_0
    return-object v1

    .line 47
    :cond_0
    nop

    .line 48
    :try_start_0
    invoke-direct {p0, v2}, Lapp/ssldecryptor/CACertGenerator;->generate(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v1

    .line 49
    .local v1, "generated":Lapp/ssldecryptor/CertKeyStore;
    sget-object v4, Lapp/ssldecryptor/ProxyCertCache;->INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

    invoke-virtual {v4}, Lapp/ssldecryptor/ProxyCertCache;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "generated":Lapp/ssldecryptor/CertKeyStore;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v3

    .line 52
    goto :goto_0
.end method

.method public final isCertInstalled(Lapp/ssldecryptor/CertKeyStore;)Z
    .locals 6
    .param p1, "fsCert"    # Lapp/ssldecryptor/CertKeyStore;

    .prologue
    const/4 v5, 0x0

    const-string v4, "fsCert"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v4, "AndroidCAStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 78
    .local v3, "ks":Ljava/security/KeyStore;
    invoke-virtual {v3, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 79
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 80
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 83
    .local v2, "installedCert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    instance-of v4, v2, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "SSL"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v5, "SSL"

    move-object v4, v2

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v5, "SSL"

    move-object v4, v2

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    check-cast v2, Ljava/security/cert/X509Certificate;

    .end local v2    # "installedCert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v4

    invoke-virtual {p1}, Lapp/ssldecryptor/CertKeyStore;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const-string v4, "SSL"

    const-string v5, "signature match"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v4, 0x1

    .line 94
    .end local v0    # "alias":Ljava/lang/String;
    :goto_0
    return v4

    .line 93
    :cond_1
    const-string v4, "SSL"

    const-string v5, "no matching signagure"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final loadCert(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lapp/ssldecryptor/CACertGenerator;->makeStoreFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "storeFileName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-direct {p0, v1}, Lapp/ssldecryptor/CACertGenerator;->loadFsCert(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 62
    .local v0, "fsCert":Lapp/ssldecryptor/CertKeyStore;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 63
    goto :goto_0
.end method

.method public final loadOrGenerate(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lapp/ssldecryptor/CACertGenerator;->makeStoreFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "storeFileName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    invoke-direct {p0, v2}, Lapp/ssldecryptor/CACertGenerator;->loadFsCert(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v1

    .line 110
    .local v1, "loaded":Lapp/ssldecryptor/CertKeyStore;
    if-nez v1, :cond_0

    .line 114
    invoke-direct {p0, v2}, Lapp/ssldecryptor/CACertGenerator;->generate(Ljava/lang/String;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 115
    .local v0, "generated":Lapp/ssldecryptor/CertKeyStore;
    sget-object v3, Lapp/ssldecryptor/ProxyCertCache;->INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

    invoke-virtual {v3}, Lapp/ssldecryptor/ProxyCertCache;->clear()V

    move-object v1, v0

    .line 116
    goto :goto_0
.end method

.method public final makeStoreFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "castore"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final save(Landroid/content/Context;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lapp/ssldecryptor/CACertGenerator;->makeStoreFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "storeFileName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "password"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "alias"

    const-string v0, "keypass"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lapp/ssldecryptor/CACertGenerator;->save(Ljava/lang/String;[CLjava/lang/String;[CLjava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/KeyStore;

    goto :goto_0
.end method
