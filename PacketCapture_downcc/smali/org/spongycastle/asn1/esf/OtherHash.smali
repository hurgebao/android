.class public Lorg/spongycastle/asn1/esf/OtherHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherHash.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

.field private sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
