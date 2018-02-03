.class public Lorg/spongycastle/asn1/crmf/Controls;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Controls.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/Controls;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
