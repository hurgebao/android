.class public abstract Lorg/spongycastle/crypto/tls/SRPTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "SRPTlsClient.java"


# static fields
.field public static final EXT_SRP:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    sput-object v0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    return-void
.end method
