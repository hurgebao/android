.class public Lorg/spongycastle/asn1/cms/TimeStampAndCRL;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TimeStampAndCRL.java"


# instance fields
.field private crl:Lorg/spongycastle/asn1/x509/CertificateList;

.field private timeStamp:Lorg/spongycastle/asn1/cms/ContentInfo;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampAndCRL;->timeStamp:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/spongycastle/asn1/x509/CertificateList;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
