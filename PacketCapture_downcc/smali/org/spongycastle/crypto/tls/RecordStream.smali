.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private readSeqNo:J

.field private readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:J

.field private writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x4000

    sput v0, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    return-void
.end method

.method private static checkLength(IIS)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "limit"    # I
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    if-le p0, p1, :cond_0

    .line 362
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method private static checkType(SS)V
    .locals 1
    .param p0, "type"    # S
    .param p1, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    packed-switch p0, :pswitch_data_0

    .line 353
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 355
    :pswitch_0
    return-void

    .line 344
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 337
    .local v0, "contents":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 338
    return-object v0
.end method


# virtual methods
.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 12
    .param p1, "type"    # S
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x16

    const/4 v6, 0x0

    .line 179
    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {p3, v1, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 181
    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v5

    .line 182
    .local v5, "buf":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    iput-wide v10, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v8

    .line 184
    .local v8, "decoded":[B
    array-length v1, v8

    iget v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    invoke-static {v1, v2, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 190
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 191
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq v0, v1, :cond_0

    .line 193
    array-length v1, v8

    invoke-virtual {v0, v8, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v8

    .line 203
    :cond_0
    array-length v1, v8

    iget v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 209
    array-length v1, v8

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 211
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 214
    :cond_1
    return-object v8
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 332
    return-void
.end method

.method getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method getPlaintextLimit()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method notifyHelloComplete()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 290
    return-void
.end method

.method prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 300
    .local v0, "result":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 301
    return-object v0
.end method

.method public readRecord()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 136
    .local v2, "recordHeader":[B
    if-nez v2, :cond_0

    .line 173
    :goto_0
    return v5

    .line 141
    :cond_0
    invoke-static {v2, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    .line 147
    .local v3, "type":S
    const/16 v7, 0xa

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 149
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-nez v7, :cond_1

    .line 151
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v4

    .line 152
    .local v4, "version":I
    and-int/lit16 v7, v4, -0x100

    const/16 v8, 0x300

    if-eq v7, v8, :cond_2

    .line 154
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 159
    .end local v4    # "version":I
    :cond_1
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    .line 160
    .local v4, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v7, :cond_3

    .line 162
    iput-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 170
    .end local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_2
    const/4 v7, 0x3

    invoke-static {v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 171
    .local v0, "length":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v7, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v1

    .line 172
    .local v1, "plaintext":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v8, v1

    invoke-virtual {v7, v3, v1, v5, v8}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    move v5, v6

    .line 173
    goto :goto_0

    .line 164
    .end local v0    # "length":I
    .end local v1    # "plaintext":[B
    .restart local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4, v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 166
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method receivedReadCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    .line 118
    return-void
.end method

.method protected safeClose()V
    .locals 1

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :goto_1
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_1

    .line 315
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method sentWriteCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    .line 106
    return-void
.end method

.method setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0
    .param p1, "tlsCompression"    # Lorg/spongycastle/crypto/tls/TlsCompression;
    .param p2, "tlsCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 93
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 94
    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 1
    .param p1, "plaintextLimit"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    .line 59
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    .line 60
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    .line 61
    return-void
.end method

.method setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "readVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 71
    return-void
.end method

.method setRestrictReadVersion(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 88
    return-void
.end method

.method setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "writeVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 76
    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 307
    return-void
.end method

.method protected writeRecord(S[BII)V
    .locals 10
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "plaintextOffset"    # I
    .param p4, "plaintextLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v1, 0x50

    invoke-static {p1, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 235
    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v2, 0x50

    invoke-static {p4, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 241
    const/4 v1, 0x1

    if-ge p4, v1, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 243
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 246
    :cond_1
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 248
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 254
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v0, v1, :cond_3

    .line 256
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .line 276
    .local v8, "ciphertext":[B
    :goto_1
    array-length v1, v8

    iget v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 278
    array-length v1, v8

    add-int/lit8 v1, v1, 0x5

    new-array v9, v1, [B

    .line 279
    .local v9, "record":[B
    const/4 v1, 0x0

    invoke-static {p1, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 280
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 281
    array-length v1, v8

    const/4 v2, 0x3

    invoke-static {v1, v9, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 282
    const/4 v1, 0x0

    const/4 v2, 0x5

    array-length v3, v8

    invoke-static {v8, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 260
    .end local v8    # "ciphertext":[B
    .end local v9    # "record":[B
    :cond_3
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 261
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v5

    .line 268
    .local v5, "compressed":[B
    array-length v1, v5

    add-int/lit16 v2, p4, 0x400

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 270
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const/4 v6, 0x0

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .restart local v8    # "ciphertext":[B
    goto :goto_1
.end method
