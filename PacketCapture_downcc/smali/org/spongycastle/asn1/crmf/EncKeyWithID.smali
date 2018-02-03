.class public Lorg/spongycastle/asn1/crmf/EncKeyWithID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncKeyWithID.java"


# instance fields
.field private final identifier:Lorg/spongycastle/asn1/ASN1Encodable;

.field private final privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 108
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
