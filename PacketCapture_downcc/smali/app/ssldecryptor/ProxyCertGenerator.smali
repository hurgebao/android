.class public final Lapp/ssldecryptor/ProxyCertGenerator;
.super Ljava/lang/Object;
.source "ProxyCertGenerator.kt"


# static fields
.field private static final BC:Ljava/lang/String; = "SC"

.field public static final INSTANCE:Lapp/ssldecryptor/ProxyCertGenerator;

.field private static ONEYEAR_IN_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lapp/ssldecryptor/ProxyCertGenerator;

    invoke-direct {v0}, Lapp/ssldecryptor/ProxyCertGenerator;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/ssldecryptor/ProxyCertGenerator;

    .end local p0    # "this":Lapp/ssldecryptor/ProxyCertGenerator;
    sput-object p0, Lapp/ssldecryptor/ProxyCertGenerator;->INSTANCE:Lapp/ssldecryptor/ProxyCertGenerator;

    .line 24
    const-string v0, "SC"

    sput-object v0, Lapp/ssldecryptor/ProxyCertGenerator;->BC:Ljava/lang/String;

    .line 25
    const-wide v0, 0x757b12c00L

    sput-wide v0, Lapp/ssldecryptor/ProxyCertGenerator;->ONEYEAR_IN_MS:J

    return-void
.end method

.method private final generateRSAKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const-string v1, "RSA"

    sget-object v2, Lapp/ssldecryptor/ProxyCertGenerator;->BC:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 83
    .local v0, "kpGen":Ljava/security/KeyPairGenerator;
    const/16 v1, 0x400

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    const-string v2, "kpGen.generateKeyPair()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final generateV3Certificate(Ljava/security/PublicKey;Lapp/ssldecryptor/CertKeyStore;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 20
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "caCert"    # Lapp/ssldecryptor/CertKeyStore;
    .param p3, "orgCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Lorg/spongycastle/cert/X509v3CertificateBuilder;

    invoke-virtual/range {p2 .. p2}, Lapp/ssldecryptor/CertKeyStore;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lapp/ssldecryptor/ProxyCertGenerator;->ONEYEAR_IN_MS:J

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v16, Lapp/ssldecryptor/ProxyCertGenerator;->ONEYEAR_IN_MS:J

    const/16 v7, 0xa

    int-to-long v0, v7

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v8, v8, v16

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p3 .. p3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lorg/spongycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 57
    .local v2, "builder":Lorg/spongycastle/cert/X509v3CertificateBuilder;
    nop

    .line 58
    :try_start_0
    sget-object v4, Lorg/spongycastle/asn1/x509/X509Extension;->subjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x0

    new-instance v3, Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    check-cast v3, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v2, v4, v5, v3}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->copyAndAddExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/cert/X509v3CertificateBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    new-instance v3, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v4, "SHA256WithRSAEncryption"

    invoke-direct {v3, v4}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lapp/ssldecryptor/ProxyCertGenerator;->BC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lapp/ssldecryptor/CertKeyStore;->getPrivKey()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;

    move-result-object v14

    const-string v3, "JcaContentSignerBuilder(\u2026BC).build(caCert.privKey)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .local v14, "sigGen":Lorg/spongycastle/operator/ContentSigner;
    invoke-virtual {v2, v14}, Lorg/spongycastle/cert/X509v3CertificateBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v13

    .line 71
    .local v13, "holder":Lorg/spongycastle/cert/X509CertificateHolder;
    new-instance v11, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v11}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 72
    .local v11, "converter":Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;
    sget-object v3, Lapp/ssldecryptor/ProxyCertGenerator;->BC:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 73
    invoke-virtual {v11, v13}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v10

    const-string v3, "converter.getCertificate(holder)"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    return-object v10

    .line 59
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "converter":Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;
    .end local v13    # "holder":Lorg/spongycastle/cert/X509CertificateHolder;
    .end local v14    # "sigGen":Lorg/spongycastle/operator/ContentSigner;
    :catch_0
    move-exception v12

    .line 60
    .local v12, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "failed to copy extension %s\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method


# virtual methods
.method public final generate(Ljava/security/cert/X509Certificate;Lapp/ssldecryptor/CertKeyStore;)Lapp/ssldecryptor/CertKeyStore;
    .locals 9
    .param p1, "orgCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "caCert"    # Lapp/ssldecryptor/CertKeyStore;

    .prologue
    const-string v4, "orgCert"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "caCert"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lapp/ssldecryptor/ProxyCertGenerator;->generateRSAKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 29
    .local v3, "pair":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    const-string v5, "pair.getPublic()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, p2, p1}, Lapp/ssldecryptor/ProxyCertGenerator;->generateV3Certificate(Ljava/security/PublicKey;Lapp/ssldecryptor/CertKeyStore;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 30
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 31
    invoke-virtual {p2}, Lapp/ssldecryptor/CertKeyStore;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 33
    const-string v4, "keypass"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v4, "(this as java.lang.String).toCharArray()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .local v1, "keyPass":[C
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 37
    .local v2, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 39
    const-string v6, "alias"

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    check-cast v4, Ljava/security/Key;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/Certificate;

    aput-object v5, v7, v8

    invoke-virtual {v2, v6, v4, v1, v7}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 41
    new-instance v4, Lapp/ssldecryptor/CertKeyStore;

    const-string v5, "keyStore"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    const-string v6, "pair.getPrivate()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v1, v0, v5}, Lapp/ssldecryptor/CertKeyStore;-><init>(Ljava/security/KeyStore;[CLjava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    return-object v4
.end method
