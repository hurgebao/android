.class public Lorg/spongycastle/asn1/cmp/ProtectedPart;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ProtectedPart.java"


# instance fields
.field private body:Lorg/spongycastle/asn1/cmp/PKIBody;

.field private header:Lorg/spongycastle/asn1/cmp/PKIHeader;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 66
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
