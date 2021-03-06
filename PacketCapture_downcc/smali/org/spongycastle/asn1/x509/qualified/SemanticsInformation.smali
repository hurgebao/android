.class public Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SemanticsInformation.java"


# instance fields
.field private nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

.field private semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 113
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 115
    .local v1, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_2

    .line 121
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v2, "seqname":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 124
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    .end local v0    # "i":I
    .end local v2    # "seqname":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
