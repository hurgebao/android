.class public Lorg/spongycastle/asn1/crmf/CertTemplate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertTemplate.java"


# instance fields
.field private seq:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertTemplate;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
