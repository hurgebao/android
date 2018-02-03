.class public Lorg/spongycastle/asn1/cmp/PKIFreeText;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIFreeText.java"


# instance fields
.field strings:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
