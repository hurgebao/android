.class public Lorg/spongycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"


# instance fields
.field private resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 193
    if-ne p1, p0, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 205
    :goto_0
    return v1

    .line 198
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;

    if-nez v1, :cond_1

    .line 200
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 203
    check-cast v0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;

    .line 205
    .local v0, "r":Lorg/spongycastle/cert/ocsp/BasicOCSPResp;
    iget-object v1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object v2, v0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method
