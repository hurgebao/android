.class public Lorg/spongycastle/asn1/cms/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

.field private sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "sid"    # Lorg/spongycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 141
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    .line 142
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 143
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 144
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 145
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 146
    iput-object p6, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 147
    return-void

    .line 138
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 263
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 265
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 267
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 273
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 280
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
