.class public Lorg/spongycastle/asn1/ocsp/ServiceLocator;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ServiceLocator.java"


# instance fields
.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field locator:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 27
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 29
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 34
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
