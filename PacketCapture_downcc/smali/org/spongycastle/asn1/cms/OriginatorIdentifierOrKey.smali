.class public Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OriginatorIdentifierOrKey.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
