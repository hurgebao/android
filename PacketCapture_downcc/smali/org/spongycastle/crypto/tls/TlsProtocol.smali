.class public abstract Lorg/spongycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;
.source "TlsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    }
.end annotation


# static fields
.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;


# instance fields
.field private alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected allowCertificateStatus:Z

.field private volatile appDataReady:Z

.field private applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected clientExtensions:Ljava/util/Hashtable;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private expected_verify_data:[B

.field private volatile failedWithError:Z

.field private handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected receivedChangeCipherSpec:Z

.field protected recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

.field protected resumedSession:Z

.field protected secure_renegotiation:Z

.field protected securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

.field private volatile splitApplicationDataRecords:Z

.field protected tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0xff01

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x23

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p0, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 837
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 839
    :cond_0
    return-void
.end method

.method protected static createRenegotiationInfo([B)[B
    .locals 1
    .param p0, "renegotiated_connection"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "keyExchange"    # Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 863
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v0

    .line 867
    .local v0, "pre_master_secret":[B
    :try_start_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    if-eqz v0, :cond_0

    .line 878
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 881
    :cond_0
    return-void

    .line 876
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 878
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_1
    throw v1
.end method

.method protected static getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "handshakeHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .param p2, "sslSender"    # [B

    .prologue
    const/4 v3, 0x0

    .line 888
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->forkPRFHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 890
    .local v1, "d":Lorg/spongycastle/crypto/Digest;
    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    array-length v2, p2

    invoke-interface {v1, p2, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 895
    :cond_0
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v0, v2, [B

    .line 896
    .local v0, "bs":[B
    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 897
    return-object v0
.end method

.method protected static getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1000
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    .line 1002
    .local v0, "isTLSv12":Z
    sparse-switch p1, :sswitch_data_0

    .line 1150
    if-eqz v0, :cond_3

    .line 1154
    :cond_0
    :goto_0
    return v1

    .line 1080
    :sswitch_0
    if-nez v0, :cond_0

    .line 1084
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 1121
    :sswitch_1
    if-eqz v0, :cond_1

    move v1, v2

    .line 1123
    goto :goto_0

    .line 1125
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 1141
    :sswitch_2
    if-eqz v0, :cond_2

    move v1, v2

    .line 1143
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1145
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1154
    goto :goto_0

    .line 1002
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
        0x9e -> :sswitch_0
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_1
        0xac -> :sswitch_0
        0xad -> :sswitch_1
        0xaf -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb9 -> :sswitch_2
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_1
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_1
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_1
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_1
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_1
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_1
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_1
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_1
        0xc038 -> :sswitch_2
        0xc03b -> :sswitch_2
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_1
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_1
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_1
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_1
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_1
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_1
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_1
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_1
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_1
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_1
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_1
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_1
        0xc095 -> :sswitch_2
        0xc097 -> :sswitch_2
        0xc099 -> :sswitch_2
        0xc09b -> :sswitch_2
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
    .end sparse-switch
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    .line 329
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v6, v4}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v2

    .line 330
    .local v2, "tmp":[B
    aget-byte v3, v2, v4

    int-to-short v1, v3

    .line 331
    .local v1, "level":S
    aget-byte v3, v2, v5

    int-to-short v0, v3

    .line 333
    .local v0, "description":S
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    .line 335
    if-ne v1, v6, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 343
    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    .line 344
    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 346
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->safeClose()V

    .line 348
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    if-nez v0, :cond_1

    .line 360
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    .line 366
    :cond_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_0

    .line 369
    .end local v0    # "description":S
    .end local v1    # "level":S
    .end local v2    # "tmp":[B
    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method private processChangeCipherSpec([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 382
    add-int v2, p2, v0

    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    .line 384
    .local v1, "message":S
    if-eq v1, v3, :cond_0

    .line 386
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 389
    :cond_0
    iget-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 393
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 396
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/RecordStream;->receivedReadCipherSpec()V

    .line 398
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    .line 400
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "message":S
    :cond_3
    return-void
.end method

.method private processHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 255
    :cond_0
    const/4 v4, 0x0

    .line 259
    .local v4, "read":Z
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    if-lt v6, v9, :cond_2

    .line 261
    new-array v0, v9, [B

    .line 262
    .local v0, "beginning":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v0, v7, v9, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 263
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 264
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 265
    .local v5, "type":S
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    .line 270
    .local v3, "len":I
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    add-int/lit8 v8, v3, 0x4

    if-lt v6, v8, :cond_2

    .line 275
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v3, v9}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v2

    .line 282
    .local v2, "buf":[B
    sparse-switch v5, :sswitch_data_0

    .line 296
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v0, v7, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 297
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v2, v7, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 304
    :sswitch_0
    invoke-virtual {p0, v5, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleHandshakeMessage(S[B)V

    .line 305
    const/4 v4, 0x1

    .line 309
    .end local v0    # "beginning":[B
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v5    # "type":S
    :cond_2
    if-nez v4, :cond_0

    .line 310
    return-void

    .line 288
    .restart local v0    # "beginning":[B
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "len":I
    .restart local v5    # "type":S
    :sswitch_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v6, :cond_1

    .line 290
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 7
    .param p0, "input"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 905
    const/4 v4, 0x0

    .line 931
    :cond_0
    return-object v4

    .line 908
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 910
    .local v1, "extBytes":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 912
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 915
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 917
    .local v4, "extensions":Ljava/util/Hashtable;
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 919
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v5}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 920
    .local v3, "extension_type":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 925
    .local v2, "extension_data":[B
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 927
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 6
    .param p0, "input"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 939
    .local v2, "supp_data":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 941
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 943
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 945
    .local v4, "supplementalData":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 947
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 948
    .local v3, "supp_data_type":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 950
    .local v1, "data":[B
    new-instance v5, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v5, v3, v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 953
    .end local v1    # "data":[B
    .end local v3    # "supp_data_type":I
    :cond_0
    return-object v4
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 7
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 961
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 962
    .local v5, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 964
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 965
    .local v4, "key":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 966
    .local v3, "extension_type":I
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    .line 968
    .local v2, "extension_data":[B
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 969
    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 970
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 973
    .end local v2    # "extension_data":[B
    .end local v3    # "extension_type":I
    .end local v4    # "key":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 975
    .local v1, "extBytes":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 976
    return-void
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "supplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 983
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 985
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    .line 987
    .local v1, "entry":Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v4

    .line 988
    .local v4, "supp_data_type":I
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 989
    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 990
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v5

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 983
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    .end local v1    # "entry":Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
    .end local v4    # "supp_data_type":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 995
    .local v3, "supp_data":[B
    invoke-static {v3, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 996
    return-void
.end method


# virtual methods
.method protected applicationDataAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    .line 791
    return-void
.end method

.method protected createVerifyData(Z)[B
    .locals 5
    .param p1, "isServer"    # Z

    .prologue
    .line 770
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    .line 772
    .local v0, "context":Lorg/spongycastle/crypto/tls/TlsContext;
    if-eqz p1, :cond_0

    .line 774
    const-string v1, "server finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-static {v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 778
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "client finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    invoke-static {v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_0
.end method

.method protected failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 627
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 632
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 634
    if-ne p1, v2, :cond_0

    .line 641
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 643
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    .line 645
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 646
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->safeClose()V

    .line 647
    if-eq p1, v2, :cond_1

    .line 649
    return-void

    .line 653
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->flush()V

    .line 810
    return-void
.end method

.method protected abstract getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.end method

.method protected abstract getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
.end method

.method protected handleChangeCipherSpecMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method protected handleClose(Z)V
    .locals 4
    .param p1, "user_canceled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 798
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    .line 800
    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    .line 802
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Connection closed"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 804
    :cond_1
    return-void
.end method

.method protected abstract handleHandshakeMessage(S[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleWarningMessage(S)V
    .locals 0
    .param p1, "description"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    return-void
.end method

.method protected invalidateSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->clear()V

    .line 661
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSession;->invalidate()V

    .line 667
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 669
    :cond_1
    return-void
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    array-length v1, v1

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    .line 676
    .local v0, "verify_data":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 681
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 688
    :cond_0
    return-void
.end method

.method protected processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .param p1, "clientExtensions"    # Ljava/util/Hashtable;
    .param p2, "serverExtensions"    # Ljava/util/Hashtable;
    .param p3, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v0

    .line 816
    .local v0, "maxFragmentLength":S
    if-ltz v0, :cond_0

    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v1, :cond_0

    .line 818
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v1

    if-eq v0, v1, :cond_0

    .line 820
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 823
    :cond_0
    return v0
.end method

.method protected processRecord(S[BII)V
    .locals 2
    .param p1, "protocol"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 206
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processAlert()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 216
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processApplicationData()V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processChangeCipherSpec([BII)V

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 227
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processHandshake()V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 693
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 695
    new-array v0, v4, [B

    .line 696
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 697
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 699
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 700
    return-void
.end method

.method protected raiseWarning(SLjava/lang/String;)V
    .locals 2
    .param p1, "alertDescription"    # S
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 706
    return-void
.end method

.method protected readApplicationData([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    .line 428
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 433
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_0

    .line 435
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v0, :cond_2

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 452
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 453
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    move v0, p3

    .line 454
    goto :goto_0
.end method

.method protected safeReadRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    const/4 v3, 0x2

    .line 462
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->readRecord()Z

    move-result v1

    if-nez v1, :cond_3

    .line 466
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 469
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to read record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 475
    :cond_0
    throw v0

    .line 477
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    .line 481
    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 483
    :cond_1
    throw v0

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    .line 489
    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 491
    :cond_2
    throw v0

    .line 493
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void
.end method

.method protected safeWriteRecord(S[BII)V
    .locals 4
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    const/4 v3, 0x2

    .line 500
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 526
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to write record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 508
    :cond_0
    throw v0

    .line 510
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    .line 514
    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 516
    :cond_1
    throw v0

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    .line 522
    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 524
    :cond_2
    throw v0
.end method

.method protected sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5
    .param p1, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 713
    sget-object p1, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 716
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->getLength()I

    move-result v3

    if-nez v3, :cond_1

    .line 718
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    .line 719
    .local v0, "context":Lorg/spongycastle/crypto/tls/TlsContext;
    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v3

    if-nez v3, :cond_1

    .line 721
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 722
    .local v2, "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client didn\'t provide credentials"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "message":Ljava/lang/String;
    const/16 v3, 0x29

    invoke-virtual {p0, v3, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    .line 736
    .end local v0    # "context":Lorg/spongycastle/crypto/tls/TlsContext;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :goto_0
    return-void

    .line 731
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v3, 0xb

    invoke-direct {v1, p0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 733
    .local v1, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 735
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    goto :goto_0
.end method

.method protected sendChangeCipherSpecMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 741
    new-array v0, v1, [B

    aput-byte v1, v0, v3

    .line 742
    .local v0, "message":[B
    const/16 v1, 0x14

    array-length v2, v0

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 743
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->sentWriteCipherSpec()V

    .line 744
    return-void
.end method

.method protected sendFinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v1

    .line 751
    .local v1, "verify_data":[B
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v2, 0x14

    array-length v3, v1

    invoke-direct {v0, p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 753
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 755
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 756
    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .locals 2
    .param p1, "supplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 763
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    .line 765
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 766
    return-void
.end method

.method protected writeData([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x17

    .line 541
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_1

    .line 543
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 560
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    if-eqz v1, :cond_2

    .line 567
    const/4 v1, 0x1

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 568
    add-int/lit8 p2, p2, 0x1

    .line 569
    add-int/lit8 p3, p3, -0x1

    .line 572
    :cond_2
    if-lez p3, :cond_1

    .line 575
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 576
    .local v0, "toWrite":I
    invoke-virtual {p0, v2, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 577
    add-int/2addr p2, v0

    .line 578
    sub-int/2addr p3, v0

    .line 579
    goto :goto_0

    .line 581
    .end local v0    # "toWrite":I
    :cond_3
    return-void
.end method

.method protected writeHandshakeMessage([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    :goto_0
    if-lez p3, :cond_0

    .line 588
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 589
    .local v0, "toWrite":I
    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 590
    add-int/2addr p2, v0

    .line 591
    sub-int/2addr p3, v0

    .line 592
    goto :goto_0

    .line 593
    .end local v0    # "toWrite":I
    :cond_0
    return-void
.end method
