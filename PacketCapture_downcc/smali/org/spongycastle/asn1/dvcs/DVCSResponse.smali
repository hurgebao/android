.class public Lorg/spongycastle/asn1/dvcs/DVCSResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DVCSResponse.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

.field private dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvCertInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvErrorNote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
