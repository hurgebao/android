.class public Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;
.super Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
