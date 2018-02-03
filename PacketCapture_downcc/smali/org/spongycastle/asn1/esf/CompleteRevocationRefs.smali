.class public Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CompleteRevocationRefs.java"


# instance fields
.field private crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
