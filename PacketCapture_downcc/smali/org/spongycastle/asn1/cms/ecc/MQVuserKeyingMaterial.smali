.class public Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "MQVuserKeyingMaterial.java"


# instance fields
.field private addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

.field private ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
