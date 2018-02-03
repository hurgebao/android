.class public Lorg/spongycastle/asn1/cmp/OOBCertHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OOBCertHash.java"


# instance fields
.field private certId:Lorg/spongycastle/asn1/crmf/CertId;

.field private hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private hashVal:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 112
    if-eqz p3, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
