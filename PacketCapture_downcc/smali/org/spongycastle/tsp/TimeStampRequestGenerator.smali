.class public Lorg/spongycastle/tsp/TimeStampRequestGenerator;
.super Ljava/lang/Object;
.source "TimeStampRequestGenerator.java"


# instance fields
.field private extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    .line 29
    return-void
.end method
