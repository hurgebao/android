.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsSigner;
.super Ljava/lang/Object;
.source "AbstractTlsSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsSigner;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateRawSignature(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 1
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "md5AndSha1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;->generateRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 14
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 15
    return-void
.end method
