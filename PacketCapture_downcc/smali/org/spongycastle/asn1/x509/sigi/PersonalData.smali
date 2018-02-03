.class public Lorg/spongycastle/asn1/x509/sigi/PersonalData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PersonalData.java"


# instance fields
.field private dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 190
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v5, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1

    .line 197
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v5, v6, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 205
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    new-instance v3, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 207
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_4

    .line 209
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
