.class public Lorg/spongycastle/asn1/cmp/PKIMessages;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIMessages.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIMessages;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
