.class public Lorg/spongycastle/asn1/esf/SPUserNotice;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SPUserNotice.java"


# instance fields
.field private explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

.field private noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
