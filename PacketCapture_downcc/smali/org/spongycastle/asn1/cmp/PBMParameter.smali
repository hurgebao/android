.class public Lorg/spongycastle/asn1/cmp/PBMParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PBMParameter.java"


# instance fields
.field private iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

.field private mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private salt:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->salt:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
