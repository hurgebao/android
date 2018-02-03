.class Lorg/spongycastle/x509/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source "ExtCertificateEncodingException.java"


# instance fields
.field cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/x509/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
