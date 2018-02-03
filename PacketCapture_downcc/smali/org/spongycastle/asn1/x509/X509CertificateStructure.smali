.class public Lorg/spongycastle/asn1/x509/X509CertificateStructure;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X509CertificateStructure.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field seq:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
