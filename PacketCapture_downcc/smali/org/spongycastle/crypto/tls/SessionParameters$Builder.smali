.class public final Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
.super Ljava/lang/Object;
.source "SessionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/SessionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private masterSecret:[B

.field private peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    .line 15
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    .line 16
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    .line 17
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    .line 22
    return-void
.end method
