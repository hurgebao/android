.class public Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;
.super Ljava/lang/Object;
.source "JcaX509CertificateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;,
        Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/cert/jcajce/CertHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    .line 26
    new-instance v0, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "certHolder"    # Lorg/spongycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    const-string v3, "X.509"

    invoke-virtual {v2, v3}, Lorg/spongycastle/cert/jcajce/CertHelper;->getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 69
    .local v0, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 71
    .end local v0    # "cFact":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception parsing certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;-><init>(Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find required provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;-><init>(Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/cert/jcajce/NamedCertHelper;

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/jcajce/NamedCertHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/spongycastle/cert/jcajce/CertHelper;

    .line 52
    return-object p0
.end method
