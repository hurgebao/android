.class public Lorg/spongycastle/asn1/x509/qualified/BiometricData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BiometricData.java"


# instance fields
.field private biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

.field private hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

.field private typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
