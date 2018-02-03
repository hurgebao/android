.class public Lorg/spongycastle/cert/ocsp/OCSPResp;
.super Ljava/lang/Object;
.source "OCSPResp.java"


# instance fields
.field private resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    if-ne p1, p0, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    .line 122
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/ocsp/OCSPResp;

    if-nez v1, :cond_1

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Lorg/spongycastle/cert/ocsp/OCSPResp;

    .line 129
    .local v0, "r":Lorg/spongycastle/cert/ocsp/OCSPResp;
    iget-object v1, p0, Lorg/spongycastle/cert/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    iget-object v2, v0, Lorg/spongycastle/cert/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method
