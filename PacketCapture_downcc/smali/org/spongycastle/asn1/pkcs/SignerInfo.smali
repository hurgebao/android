.class public Lorg/spongycastle/asn1/pkcs/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

.field private issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

.field private unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 159
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 173
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
