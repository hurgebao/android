.class public Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ProcurationSyntax.java"


# instance fields
.field private certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 217
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 218
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    .line 224
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2

    .line 228
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 232
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
