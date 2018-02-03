.class public Lorg/spongycastle/asn1/tsp/TimeStampResp;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TimeStampResp.java"


# instance fields
.field pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
