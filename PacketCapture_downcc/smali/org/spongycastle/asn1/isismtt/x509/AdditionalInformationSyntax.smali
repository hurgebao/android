.class public Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AdditionalInformationSyntax.java"


# instance fields
.field private information:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/DirectoryString;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
