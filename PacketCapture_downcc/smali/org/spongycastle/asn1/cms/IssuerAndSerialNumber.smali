.class public Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field private name:Lorg/spongycastle/asn1/x500/X500Name;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 1
    .param p1, "certificate"    # Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x500/X500Name;

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 77
    return-void
.end method


# virtual methods
.method public getName()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
