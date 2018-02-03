.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsServer;
.super Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.source "AbstractTlsServer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsServer;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 43
    return-void
.end method
