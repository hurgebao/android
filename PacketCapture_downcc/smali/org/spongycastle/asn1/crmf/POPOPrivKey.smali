.class public Lorg/spongycastle/asn1/crmf/POPOPrivKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "POPOPrivKey.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private obj:Lorg/spongycastle/asn1/ASN1Encodable;

.field private tagNo:I


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
