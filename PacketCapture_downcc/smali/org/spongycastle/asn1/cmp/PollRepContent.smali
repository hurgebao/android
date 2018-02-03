.class public Lorg/spongycastle/asn1/cmp/PollRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PollRepContent.java"


# instance fields
.field private certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

.field private checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

.field private reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v1, "outer":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    array-length v3, v3

    if-eq v0, v3, :cond_1

    .line 104
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
