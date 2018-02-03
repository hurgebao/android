.class public Lorg/spongycastle/asn1/cms/MetaData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "MetaData.java"


# instance fields
.field private fileName:Lorg/spongycastle/asn1/DERUTF8String;

.field private hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

.field private mediaType:Lorg/spongycastle/asn1/DERIA5String;

.field private otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
