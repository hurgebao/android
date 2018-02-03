.class public Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 159
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
