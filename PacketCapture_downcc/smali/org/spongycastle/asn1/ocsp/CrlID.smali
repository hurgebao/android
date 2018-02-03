.class public Lorg/spongycastle/asn1/ocsp/CrlID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CrlID.java"


# instance fields
.field private crlNum:Lorg/spongycastle/asn1/ASN1Integer;

.field private crlTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private crlUrl:Lorg/spongycastle/asn1/DERIA5String;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlNum:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlNum:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_2

    .line 105
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->crlTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
