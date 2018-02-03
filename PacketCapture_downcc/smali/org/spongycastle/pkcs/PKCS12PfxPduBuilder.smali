.class public Lorg/spongycastle/pkcs/PKCS12PfxPduBuilder;
.super Ljava/lang/Object;
.source "PKCS12PfxPduBuilder.java"


# instance fields
.field private dataVector:Lorg/spongycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method
