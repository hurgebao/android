.class public Lorg/spongycastle/asn1/ess/ContentIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ContentIdentifier.java"


# instance fields
.field value:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentIdentifier;->value:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method
