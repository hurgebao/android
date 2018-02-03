.class public Lorg/spongycastle/eac/EACCertificateBuilder;
.super Ljava/lang/Object;
.source "EACCertificateBuilder.java"


# static fields
.field private static final ZeroArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/spongycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    return-void
.end method
