.class public Lorg/spongycastle/asn1/cmp/CertResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertResponse.java"


# instance fields
.field private certReqId:Lorg/spongycastle/asn1/ASN1Integer;

.field private certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

.field private rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certReqId:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
