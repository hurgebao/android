.class public Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
    }
.end annotation


# static fields
.field private static final PEM_CERT_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final PEM_CRL_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lorg/spongycastle/asn1/ASN1Set;

.field private sCrlDataObjectCount:I

.field private sData:Lorg/spongycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 39
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 42
    iput v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 43
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 45
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    .line 46
    iput v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 47
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 373
    return-void
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    goto :goto_0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 80
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    .line 88
    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readDERCRL(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .param p1, "aIn"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 133
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    .line 141
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object v1

    .line 145
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    goto :goto_0
.end method

.method private readDERCertificate(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "dIn"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 55
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    goto :goto_0
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 116
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 118
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 97
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createCRL(Lorg/spongycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .locals 1
    .param p1, "c"    # Lorg/spongycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 6
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 251
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 253
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 254
    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    .line 255
    iput v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 266
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v4, :cond_4

    .line 268
    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 270
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 296
    :cond_1
    :goto_1
    return-object v3

    .line 257
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-eq v4, p1, :cond_0

    .line 259
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 260
    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    .line 261
    iput v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_0

    .line 274
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lorg/spongycastle/asn1/ASN1Set;

    .line 275
    const/4 v4, 0x0

    iput v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/security/cert/CRLException;
    throw v0

    .line 280
    .end local v0    # "e":Ljava/security/cert/CRLException;
    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 281
    .local v1, "pis":Ljava/io/PushbackInputStream;
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 283
    .local v2, "tag":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 288
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 290
    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    .line 292
    invoke-direct {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v3

    goto :goto_1

    .line 296
    :cond_5
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCRL(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_2
    .catch Ljava/security/cert/CRLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 303
    .end local v1    # "pis":Ljava/io/PushbackInputStream;
    .end local v2    # "tag":I
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "crls":Ljava/util/List;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    .local v0, "crl":Ljava/security/cert/CRL;
    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    return-object v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 5
    .param p1, "certificates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 362
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 364
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v2, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 170
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 172
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 173
    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 174
    iput v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 185
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v4, :cond_4

    .line 187
    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 189
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 215
    :cond_1
    :goto_1
    return-object v3

    .line 176
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v4, p1, :cond_0

    .line 178
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 179
    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 180
    iput v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    goto :goto_0

    .line 193
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 194
    const/4 v4, 0x0

    iput v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    invoke-direct {v3, p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V

    throw v3

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v1, "pis":Ljava/io/PushbackInputStream;
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 202
    .local v2, "tag":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 207
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 209
    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    .line 211
    invoke-direct {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_1

    .line 215
    :cond_5
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCertificate(Lorg/spongycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "certs":Ljava/util/List;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    return-object v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
