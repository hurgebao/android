.class public Lorg/spongycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# instance fields
.field v:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public get(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
