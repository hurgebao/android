.class Lorg/spongycastle/asn1/ASN1Sequence$1;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/ASN1Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$outer:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence$1;->val$outer:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence$1;->val$outer:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
