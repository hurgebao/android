.class public Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CommitmentTypeIndication.java"


# instance fields
.field private commitmentTypeId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private commitmentTypeQualifier:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
