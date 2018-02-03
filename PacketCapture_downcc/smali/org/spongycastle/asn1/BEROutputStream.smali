.class public Lorg/spongycastle/asn1/BEROutputStream;
.super Lorg/spongycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    return-void
.end method
