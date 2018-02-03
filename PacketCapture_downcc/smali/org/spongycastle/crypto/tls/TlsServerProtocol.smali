.class public Lorg/spongycastle/crypto/tls/TlsServerProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsServerProtocol.java"


# instance fields
.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected clientCertificateType:S

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field protected tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

.field protected tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;


# virtual methods
.method protected expectCertificateVerifyMessage()Z
    .locals 1

    .prologue
    .line 776
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 8
    .param p1, "type"    # S
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 92
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    sparse-switch p1, :sswitch_data_0

    .line 345
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 98
    :sswitch_0
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_0

    .line 182
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 102
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 103
    const/4 v5, 0x1

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    .line 106
    const/4 v5, 0x2

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 108
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v4

    .line 109
    .local v4, "serverSupplementalData":Ljava/util/Vector;
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    .line 113
    :cond_0
    const/4 v5, 0x3

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 115
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 116
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 118
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-nez v5, :cond_6

    .line 124
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 133
    :goto_0
    const/4 v5, 0x4

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 136
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 141
    :cond_2
    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    if-eqz v5, :cond_3

    .line 143
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v1

    .line 144
    .local v1, "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V

    .line 150
    .end local v1    # "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    :cond_3
    const/4 v5, 0x5

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 152
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v3

    .line 153
    .local v3, "serverKeyExchange":[B
    if-eqz v3, :cond_4

    .line 155
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    .line 157
    :cond_4
    const/4 v5, 0x6

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 159
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v5, :cond_5

    .line 161
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 162
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v5, :cond_5

    .line 164
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 166
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 168
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 172
    :cond_5
    const/4 v5, 0x7

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 174
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    .line 175
    const/16 v5, 0x8

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 177
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 347
    .end local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v3    # "serverKeyExchange":[B
    .end local v4    # "serverSupplementalData":Ljava/util/Vector;
    :goto_1
    return-void

    .line 128
    .restart local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .restart local v4    # "serverSupplementalData":Ljava/util/Vector;
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 130
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 188
    .end local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v4    # "serverSupplementalData":Ljava/util/Vector;
    :sswitch_1
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_1

    .line 197
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 192
    :pswitch_1
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 193
    const/16 v5, 0x9

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 203
    :sswitch_2
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_2

    .line 221
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 207
    :pswitch_2
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 212
    :pswitch_3
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v5, :cond_7

    .line 214
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 216
    :cond_7
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    .line 217
    iput-short v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 227
    :sswitch_3
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_3

    .line 273
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 231
    :pswitch_4
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 236
    :pswitch_5
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v5, :cond_9

    .line 238
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 268
    :cond_8
    :goto_2
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    .line 269
    const/16 v5, 0xb

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 242
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 250
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 252
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 254
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-nez v5, :cond_8

    .line 256
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 261
    :cond_b
    sget-object v5, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_2

    .line 279
    :sswitch_4
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_4

    .line 299
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 288
    :pswitch_7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v5

    if-nez v5, :cond_c

    .line 290
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 293
    :cond_c
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    .line 294
    const/16 v5, 0xc

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_1

    .line 305
    :sswitch_5
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_5

    .line 333
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 309
    :pswitch_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 311
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 317
    :cond_d
    :pswitch_9
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 318
    const/16 v5, 0xd

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 320
    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz v5, :cond_e

    .line 322
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 323
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    .line 325
    :cond_e
    const/16 v5, 0xe

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 327
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendFinishedMessage()V

    .line 328
    const/16 v5, 0xf

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 329
    const/16 v5, 0x10

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_3
        0x14 -> :sswitch_5
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    .line 203
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 227
    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 279
    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_7
    .end packed-switch

    .line 305
    :pswitch_data_5
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected handleWarningMessage(S)V
    .locals 1
    .param p1, "description"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 368
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_1

    .line 383
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 386
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 388
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 415
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 416
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 423
    .local v0, "clientCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 425
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 426
    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v1

    .line 433
    .local v1, "clientCertificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 436
    const/4 v5, 0x0

    .line 440
    .local v5, "verified":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 442
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v8

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v0

    .line 449
    .local v0, "certificateVerifyHash":[B
    :goto_0
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v6

    .line 450
    .local v6, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 451
    .local v2, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v2}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 453
    .local v3, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    iget-short v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v4

    .line 454
    .local v4, "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 455
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v8

    invoke-interface {v4, v7, v8, v3, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 462
    .end local v0    # "certificateVerifyHash":[B
    .end local v2    # "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v3    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    .end local v6    # "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    :goto_1
    if-nez v5, :cond_1

    .line 464
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x33

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 446
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "certificateVerifyHash":[B
    goto :goto_0

    .line 466
    .end local v0    # "certificateVerifyHash":[B
    :cond_1
    return-void

    .line 458
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v7, 0x2f

    const/4 v8, 0x1

    .line 471
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 472
    .local v2, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 474
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 477
    :cond_0
    invoke-static {v9, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    .line 483
    .local v1, "client_random":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 484
    .local v5, "sessionID":[B
    array-length v6, v5

    if-le v6, v9, :cond_1

    .line 486
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 494
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 495
    .local v0, "cipher_suites_length":I
    const/4 v6, 0x2

    if-lt v0, v6, :cond_2

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_3

    .line 497
    :cond_2
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 499
    :cond_3
    div-int/lit8 v6, v0, 0x2

    invoke-static {v6, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    .line 505
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v3

    .line 506
    .local v3, "compression_methods_length":I
    if-ge v3, v8, :cond_4

    .line 508
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 510
    :cond_4
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    .line 517
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 519
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 521
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v6, v2}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 523
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-object v1, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 525
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 526
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 543
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v7, 0xff

    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 545
    iput-boolean v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 552
    :cond_5
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v7, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v4

    .line 553
    .local v4, "renegExtData":[B
    if-eqz v4, :cond_6

    .line 560
    iput-boolean v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 562
    sget-object v6, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 564
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 569
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    .line 571
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v6, :cond_7

    .line 573
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    .line 575
    :cond_7
    return-void
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 582
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 584
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 585
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 587
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 589
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    .line 593
    :cond_0
    return-void
.end method

.method protected sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 600
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 602
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 603
    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V
    .locals 2
    .param p1, "certificateStatus"    # Lorg/spongycastle/crypto/tls/CertificateStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 610
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 612
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 613
    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 3
    .param p1, "newSessionTicket"    # Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 620
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 623
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 625
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 627
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 628
    return-void
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 757
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 758
    .local v0, "message":[B
    const/16 v1, 0xe

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 759
    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 761
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeHandshakeMessage([BII)V

    .line 762
    return-void
.end method

.method protected sendServerHelloMessage()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v12, 0x50

    .line 633
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v7, 0x2

    invoke-direct {v0, p0, v7}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 635
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 636
    .local v6, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 638
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 641
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 642
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 643
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v8}, Lorg/spongycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 644
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 646
    invoke-static {v6, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 648
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v0, v7}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 654
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v7, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 656
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v4

    .line 657
    .local v4, "selectedCipherSuite":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v7, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    const/16 v7, 0xff

    if-eq v4, v7, :cond_1

    invoke-static {v4, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 662
    :cond_1
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 664
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v4, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 666
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    .line 667
    .local v5, "selectedCompressionMethod":S
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {v7, v5}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v7

    if-nez v7, :cond_3

    .line 669
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 671
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v5, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 673
    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 674
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 676
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 681
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    if-eqz v7, :cond_4

    .line 683
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v7, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    .line 684
    .local v3, "renegExtData":[B
    if-nez v3, :cond_8

    move v1, v8

    .line 686
    .local v1, "noRenegExt":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 700
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 701
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v11, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v11}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .end local v1    # "noRenegExt":Z
    .end local v3    # "renegExtData":[B
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_6

    .line 713
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v10}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v10

    iput-boolean v10, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 715
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, v10, v11, v12}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v10

    iput-short v10, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 718
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v10}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v10

    iput-boolean v10, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 724
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v7, v10, v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 728
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v7, v10, v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    if-eqz v7, :cond_5

    move v9, v8

    :cond_5
    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    .line 732
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 735
    :cond_6
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v7, :cond_7

    .line 737
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v7, v7, 0x8

    shl-int v2, v8, v7

    .line 738
    .local v2, "plainTextLimit":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 741
    .end local v2    # "plainTextLimit":I
    :cond_7
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v9

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v8

    iput v8, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 747
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v8, 0xc

    iput v8, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 749
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 751
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 752
    return-void

    .restart local v3    # "renegExtData":[B
    :cond_8
    move v1, v9

    .line 684
    goto/16 :goto_0

    .end local v3    # "renegExtData":[B
    :cond_9
    move v7, v9

    .line 724
    goto :goto_1
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 3
    .param p1, "serverKeyExchange"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xc

    array-length v2, p1

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 769
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 771
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 772
    return-void
.end method
