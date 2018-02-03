.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.super Ljava/lang/Object;
.source "AbstractTlsKeyExchange.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected keyExchange:I

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(ILjava/util/Vector;)V
    .locals 0
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    .line 18
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    .line 19
    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 4
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 25
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 27
    .local v0, "clientVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 44
    iget v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    packed-switch v1, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported key exchange algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :pswitch_1
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    .line 89
    :cond_0
    :goto_0
    :pswitch_2
    return-void

    .line 57
    :pswitch_3
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->getDefaultRSASignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported_signature_algorithms not allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 0
    .param p1, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 1
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 109
    :cond_0
    return-void
.end method

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .param p1, "serverCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 115
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public skipClientCredentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public skipServerKeyExchange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method
