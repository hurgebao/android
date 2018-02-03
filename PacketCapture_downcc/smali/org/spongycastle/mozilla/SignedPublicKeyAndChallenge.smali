.class public Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignedPublicKeyAndChallenge.java"


# instance fields
.field private spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
