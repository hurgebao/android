.class public Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CommitmentTypeQualifier.java"


# instance fields
.field private commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, "dev":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
