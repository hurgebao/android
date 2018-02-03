.class public Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PublicKeyAndChallenge.java"


# instance fields
.field private pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;->pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
