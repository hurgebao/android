.class Lorg/spongycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/ASN1Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$outer:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->val$outer:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->val$outer:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method
