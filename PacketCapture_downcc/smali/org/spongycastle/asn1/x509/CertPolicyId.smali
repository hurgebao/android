.class public Lorg/spongycastle/asn1/x509/CertPolicyId;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertPolicyId.java"


# instance fields
.field private id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertPolicyId;->id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
