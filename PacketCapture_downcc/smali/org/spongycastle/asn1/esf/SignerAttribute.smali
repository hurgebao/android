.class public Lorg/spongycastle/asn1/esf/SignerAttribute;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerAttribute.java"


# instance fields
.field private values:[Ljava/lang/Object;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    .line 107
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 109
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 111
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, [Lorg/spongycastle/asn1/x509/Attribute;

    if-eqz v2, :cond_0

    .line 113
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, [Lorg/spongycastle/asn1/x509/Attribute;

    check-cast v2, [Lorg/spongycastle/asn1/x509/Attribute;

    invoke-direct {v5, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-direct {v3, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 121
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
