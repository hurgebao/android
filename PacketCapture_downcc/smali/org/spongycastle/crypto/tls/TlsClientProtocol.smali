.class public Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsClientProtocol.java"


# instance fields
.field protected authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field protected tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;


# virtual methods
.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 15
    .param p1, "type"    # S
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    .local v1, "buf":Ljava/io/ByteArrayInputStream;
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v12, :cond_3

    .line 134
    const/16 v12, 0x14

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 136
    :cond_0
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 139
    :cond_1
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 140
    const/16 v12, 0xf

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 142
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 143
    const/16 v12, 0xd

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 144
    const/16 v12, 0x10

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 578
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 576
    :pswitch_0
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 153
    :pswitch_1
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_1

    .line 182
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 157
    :pswitch_2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 164
    :pswitch_3
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 166
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 169
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 171
    :cond_4
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 174
    :cond_5
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 176
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 177
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 185
    const/4 v12, 0x4

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    .line 190
    :pswitch_4
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_2

    .line 214
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 194
    :pswitch_5
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-nez v12, :cond_6

    .line 201
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 204
    :cond_6
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 206
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 210
    const/4 v12, 0x5

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    .line 220
    :pswitch_6
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_3

    .line 243
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 224
    :pswitch_7
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz v12, :cond_7

    .line 230
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 237
    :cond_7
    :pswitch_8
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 238
    const/16 v12, 0xf

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 239
    const/16 v12, 0x10

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 249
    :pswitch_9
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_4

    .line 294
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 253
    :pswitch_a
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 254
    const/4 v12, 0x2

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 256
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v12, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v12, :cond_8

    .line 258
    const/4 v12, 0x1

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v13, v13, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v13, v13, 0x8

    shl-int v7, v12, v13

    .line 259
    .local v7, "plainTextLimit":I
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 262
    .end local v7    # "plainTextLimit":I
    :cond_8
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v13

    iget-object v14, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v14

    invoke-static {v13, v14}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v13

    iput v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 270
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v13, 0xc

    iput v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 272
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 274
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v12, :cond_9

    .line 276
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v13

    invoke-static {v13}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    iput-object v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 277
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v13

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v13

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    goto/16 :goto_0

    .line 283
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 285
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v12, v12

    if-lez v12, :cond_2

    .line 287
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    goto/16 :goto_0

    .line 300
    :pswitch_b
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_5

    .line 308
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 304
    :pswitch_c
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 314
    :pswitch_d
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_6

    .line 435
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 318
    :pswitch_e
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 324
    :pswitch_f
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 325
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 333
    :pswitch_10
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 340
    :pswitch_11
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 342
    const/16 v12, 0x8

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 344
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v12

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 346
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v4

    .line 347
    .local v4, "clientSupplementalData":Ljava/util/Vector;
    if-eqz v4, :cond_a

    .line 349
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    .line 351
    :cond_a
    const/16 v12, 0x9

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v12, :cond_b

    .line 356
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 382
    :goto_1
    const/16 v12, 0xa

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 388
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    .line 389
    const/16 v12, 0xb

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 391
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v12, v13}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 392
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v13

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v13

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 394
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    .line 396
    .local v8, "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    if-eqz v3, :cond_e

    instance-of v12, v3, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v12, :cond_e

    move-object v11, v3

    .line 398
    check-cast v11, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 406
    .local v11, "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 408
    invoke-interface {v11}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v10

    .line 409
    .local v10, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez v10, :cond_d

    .line 411
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x50

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 360
    .end local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_b
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v3

    .line 362
    if-nez v3, :cond_c

    .line 364
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 372
    sget-object v12, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 376
    :cond_c
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12, v3}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 378
    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 414
    .restart local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .restart local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .restart local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_d
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v12

    invoke-interface {v8, v12}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v5

    .line 422
    .local v5, "hash":[B
    :goto_2
    invoke-interface {v11, v5}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v9

    .line 423
    .local v9, "signature":[B
    new-instance v2, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v2, v10, v9}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 424
    .local v2, "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V

    .line 426
    const/16 v12, 0xc

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 429
    .end local v2    # "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    .end local v5    # "hash":[B
    .end local v9    # "signature":[B
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_e
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    .line 430
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 431
    const/16 v12, 0xd

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 418
    .restart local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_f
    const/4 v10, 0x0

    .line 419
    .restart local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v8, v13}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    .restart local v5    # "hash":[B
    goto :goto_2

    .line 441
    .end local v3    # "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    .end local v4    # "clientSupplementalData":Ljava/util/Vector;
    .end local v5    # "hash":[B
    .end local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :pswitch_12
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_7

    .line 465
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 445
    :pswitch_13
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 451
    :pswitch_14
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 452
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 459
    :pswitch_15
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 461
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 468
    const/4 v12, 0x6

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 473
    :pswitch_16
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_8

    .line 510
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 479
    :pswitch_17
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 485
    :pswitch_18
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-nez v12, :cond_10

    .line 491
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 494
    :cond_10
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12, v1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 496
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 498
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 504
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 513
    const/4 v12, 0x7

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 518
    :pswitch_19
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_9

    .line 542
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 522
    :pswitch_1a
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez v12, :cond_11

    .line 528
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 535
    :cond_11
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 537
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    .line 538
    const/16 v12, 0xe

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 547
    :pswitch_1b
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 555
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/16 v13, 0x10

    if-ne v12, v13, :cond_2

    .line 561
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 563
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 566
    :cond_12
    const-string v6, "Renegotiation not supported"

    .line 567
    .local v6, "message":Ljava/lang/String;
    const/16 v12, 0x64

    invoke-virtual {p0, v12, v6}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->raiseWarning(SLjava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_12
        :pswitch_16
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_b
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 190
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch

    .line 220
    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 249
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    .line 300
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch

    .line 314
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 441
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 473
    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_17
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 518
    :pswitch_data_9
    .packed-switch 0xd
        :pswitch_1a
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .param p1, "serverSupplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 584
    const/4 v0, 0x3

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 586
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 587
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 588
    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    .line 595
    .local v0, "newSessionTicket":Lorg/spongycastle/crypto/tls/NewSessionTicket;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 597
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 598
    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 12
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v7

    .line 604
    .local v7, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 606
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 610
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 612
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 615
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 616
    .local v0, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v7, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 618
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 621
    :cond_2
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v10, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 622
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 623
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10, v7}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 628
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v11, 0x20

    invoke-static {v11, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v11

    iput-object v11, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 630
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v10

    iput-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 631
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v10, v10

    const/16 v11, 0x20

    if-le v10, v11, :cond_3

    .line 633
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 636
    :cond_3
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-interface {v10, v11}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 638
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v10, v10

    if-lez v10, :cond_5

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v11}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v11

    invoke-static {v10, v11}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    .line 645
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v4

    .line 646
    .local v4, "selectedCipherSuite":I
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v10, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v4, :cond_4

    const/16 v10, 0xff

    if-eq v4, v10, :cond_4

    invoke-static {v4, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 651
    :cond_4
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 638
    .end local v4    # "selectedCipherSuite":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 654
    .restart local v4    # "selectedCipherSuite":I
    :cond_6
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10, v4}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 660
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 661
    .local v5, "selectedCompressionMethod":S
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v10, v5}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v10

    if-nez v10, :cond_7

    .line 663
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 666
    :cond_7
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 676
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v10

    iput-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 685
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v10, :cond_a

    .line 687
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 688
    .local v1, "e":Ljava/util/Enumeration;
    :cond_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 690
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 699
    .local v2, "extType":Ljava/lang/Integer;
    sget-object v10, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 709
    iget-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v10, :cond_9

    .line 724
    :cond_9
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v10, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v10

    if-nez v10, :cond_8

    .line 726
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x6e

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 739
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "extType":Ljava/lang/Integer;
    :cond_a
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v11, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    .line 740
    .local v3, "renegExtData":[B
    if-eqz v3, :cond_b

    .line 748
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    .line 750
    sget-object v10, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v10}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v10

    invoke-static {v3, v10}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v10

    if-nez v10, :cond_b

    .line 752
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 758
    :cond_b
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v11, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {v10, v11}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 760
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    .local v8, "sessionClientExtensions":Ljava/util/Hashtable;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 761
    .local v9, "sessionServerExtensions":Ljava/util/Hashtable;
    iget-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v10, :cond_e

    .line 763
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v10

    if-ne v4, v10, :cond_c

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v10

    if-eq v5, v10, :cond_d

    .line 766
    :cond_c
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 769
    :cond_d
    const/4 v8, 0x0

    .line 770
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v9

    .line 773
    :cond_e
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v4, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 774
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v5, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 776
    if-eqz v9, :cond_10

    .line 783
    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v6

    .line 784
    .local v6, "serverSentEncryptThenMAC":Z
    if-eqz v6, :cond_f

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v10

    if-nez v10, :cond_f

    .line 786
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2f

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 789
    :cond_f
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-boolean v6, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 791
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v11, 0x2f

    invoke-virtual {p0, v8, v9, v11}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v11

    iput-short v11, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 794
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v11

    iput-boolean v11, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 800
    iget-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v10, :cond_12

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    const/16 v11, 0x2f

    invoke-static {v9, v10, v11}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 804
    iget-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v10, :cond_13

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    const/16 v11, 0x2f

    invoke-static {v9, v10, v11}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    .line 809
    .end local v6    # "serverSentEncryptThenMAC":Z
    :cond_10
    if-eqz v8, :cond_11

    .line 811
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10, v9}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 813
    :cond_11
    return-void

    .line 800
    .restart local v6    # "serverSentEncryptThenMAC":Z
    :cond_12
    const/4 v10, 0x0

    goto :goto_1

    .line 804
    :cond_13
    const/4 v10, 0x0

    goto :goto_2
.end method

.method protected sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .param p1, "certificateVerify"    # Lorg/spongycastle/crypto/tls/DigitallySigned;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 820
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 822
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 823
    return-void
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 913
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 915
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 916
    return-void
.end method
