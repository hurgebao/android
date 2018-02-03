.class public Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;
.super Lorg/spongycastle/cert/X509CertificateHolder;
.source "JcaX509CertificateHolder.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    .line 25
    return-void
.end method
