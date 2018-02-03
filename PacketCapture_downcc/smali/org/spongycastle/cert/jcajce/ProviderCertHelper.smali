.class Lorg/spongycastle/cert/jcajce/ProviderCertHelper;
.super Lorg/spongycastle/cert/jcajce/CertHelper;
.source "ProviderCertHelper.java"


# instance fields
.field private final provider:Ljava/security/Provider;


# virtual methods
.method protected createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/ProviderCertHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method
