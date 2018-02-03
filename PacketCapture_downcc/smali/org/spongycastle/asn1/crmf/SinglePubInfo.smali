.class public Lorg/spongycastle/asn1/crmf/SinglePubInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SinglePubInfo.java"


# instance fields
.field private pubLocation:Lorg/spongycastle/asn1/x509/GeneralName;

.field private pubMethod:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 65
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
