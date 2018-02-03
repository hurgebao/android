.class public Lorg/spongycastle/asn1/ess/SigningCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SigningCertificate.java"


# instance fields
.field certs:Lorg/spongycastle/asn1/ASN1Sequence;

.field policies:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ess/ESSCertID;)V
    .locals 1
    .param p1, "essCertID"    # Lorg/spongycastle/asn1/ess/ESSCertID;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/SigningCertificate;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificate;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificate;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/SigningCertificate;->policies:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
