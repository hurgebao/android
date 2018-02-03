.class public Lorg/spongycastle/asn1/isismtt/x509/Admissions;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Admissions.java"


# instance fields
.field private admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

.field private namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

.field private professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 171
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->admissionAuthority:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->namingAuthority:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->professionInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 183
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
