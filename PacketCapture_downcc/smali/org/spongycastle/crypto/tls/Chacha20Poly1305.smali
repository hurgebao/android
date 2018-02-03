.class public Lorg/spongycastle/crypto/tls/Chacha20Poly1305;
.super Ljava/lang/Object;
.source "Chacha20Poly1305.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

.field protected encryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 10
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/4 v9, 0x0

    const/16 v7, 0x20

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 25
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 28
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 30
    const/16 v6, 0x40

    invoke-static {p1, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v4

    .line 32
    .local v4, "key_block":[B
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v4, v9, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 33
    .local v0, "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v4, v7, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 35
    .local v5, "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v6, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    invoke-direct {v6, v8}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    .line 36
    new-instance v6, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    invoke-direct {v6, v8}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    .line 39
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    move-object v3, v5

    .line 42
    .local v3, "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v1, v0

    .line 50
    .local v1, "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    const/16 v6, 0x8

    new-array v2, v6, [B

    .line 52
    .local v2, "dummyNonce":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v7, 0x1

    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v8, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v6, v7, v8}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 53
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v7, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v6, v9, v7}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 54
    return-void

    .line 46
    .end local v1    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v2    # "dummyNonce":[B
    .end local v3    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_1
    move-object v3, v0

    .line 47
    .restart local v3    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v1, v5

    .restart local v1    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0
.end method


# virtual methods
.method protected calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B
    .locals 4
    .param p1, "macKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .param p2, "additionalData"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/Poly1305;-><init>()V

    .line 124
    .local v0, "mac":Lorg/spongycastle/crypto/Mac;
    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 126
    array-length v2, p2

    invoke-virtual {p0, v0, p2, v3, v2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMAC(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 127
    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMAC(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 129
    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v1, v2, [B

    .line 130
    .local v1, "output":[B
    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 131
    return-object v1
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 19
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "ciphertext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getPlaintextLimit(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 81
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x32

    invoke-direct {v4, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 84
    :cond_0
    add-int/lit8 v9, p6, -0x10

    .line 86
    .local v9, "plaintextLength":I
    add-int v4, p5, v9

    add-int v7, p5, p6

    move-object/from16 v0, p4

    invoke-static {v0, v4, v7}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 88
    .local v17, "receivedMAC":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v7, v1, v2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->initRecordMAC(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    .line 90
    .local v5, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v6

    .local v6, "additionalData":[B
    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 91
    invoke-virtual/range {v4 .. v9}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v16

    .line 93
    .local v16, "calculatedMAC":[B
    invoke-static/range {v16 .. v17}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x14

    invoke-direct {v4, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 98
    :cond_1
    new-array v14, v9, [B

    .line 99
    .local v14, "output":[B
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v15, 0x0

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->processBytes([BII[BI)I

    .line 101
    return-object v14
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 11
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "plaintext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    add-int/lit8 v8, p6, 0x10

    .line 65
    .local v8, "ciphertextLength":I
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->initRecordMAC(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v10

    .line 67
    .local v10, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    new-array v5, v8, [B

    .line 68
    .local v5, "output":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v6, 0x0

    move-object v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->processBytes([BII[BI)I

    .line 70
    move/from16 v0, p6

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v4

    .line 71
    .local v4, "additionalData":[B
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v10

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v9

    .line 72
    .local v9, "mac":[B
    const/4 v1, 0x0

    array-length v2, v9

    move/from16 v0, p6

    invoke-static {v9, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v5
.end method

.method protected getAdditionalData(JSI)[B
    .locals 3
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 149
    .local v0, "additional_data":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 150
    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 152
    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 154
    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 1
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 58
    add-int/lit8 v0, p1, -0x10

    return v0
.end method

.method protected initRecordMAC(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 11
    .param p1, "cipher"    # Lorg/spongycastle/crypto/engines/ChaChaEngine;
    .param p2, "forEncryption"    # Z
    .param p3, "seqNo"    # J

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x10

    const/4 v2, 0x0

    .line 106
    const/16 v0, 0x8

    new-array v7, v0, [B

    .line 107
    .local v7, "nonce":[B
    invoke-static {p3, p4, v7, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 109
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v7}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 112
    .local v1, "firstBlock":[B
    array-length v3, v1

    move-object v0, p1

    move-object v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->processBytes([BII[BI)I

    .line 115
    invoke-static {v1, v2, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, v1, v8, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 117
    .local v6, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->clamp([B)V

    .line 118
    return-object v6
.end method

.method protected updateRecordMAC(Lorg/spongycastle/crypto/Mac;[BII)V
    .locals 6
    .param p1, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 136
    invoke-interface {p1, p2, p3, p4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 138
    int-to-long v2, p4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v0

    .line 139
    .local v0, "longLen":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 140
    return-void
.end method
