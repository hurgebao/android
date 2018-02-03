.class public Lorg/spongycastle/cert/X509CRLHolder;
.super Ljava/lang/Object;
.source "X509CRLHolder.java"


# instance fields
.field private x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 298
    if-ne p1, p0, :cond_0

    .line 300
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    .line 303
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/X509CRLHolder;

    if-nez v1, :cond_1

    .line 305
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 308
    check-cast v0, Lorg/spongycastle/cert/X509CRLHolder;

    .line 310
    .local v0, "other":Lorg/spongycastle/cert/X509CRLHolder;
    iget-object v1, p0, Lorg/spongycastle/cert/X509CRLHolder;->x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;

    iget-object v2, v0, Lorg/spongycastle/cert/X509CRLHolder;->x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/CertificateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/cert/X509CRLHolder;->x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/cert/X509CRLHolder;->x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/spongycastle/cert/X509CRLHolder;->x509CRL:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hashCode()I

    move-result v0

    return v0
.end method
