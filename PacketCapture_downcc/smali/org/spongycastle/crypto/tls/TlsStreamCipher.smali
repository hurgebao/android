.class public Lorg/spongycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;
.source "TlsStreamCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected usesNonce:Z

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V
    .locals 23
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p4, "clientWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "serverWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p6, "cipherKeySize"    # I
    .param p7, "usesNonce"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v20

    .line 41
    .local v20, "isServer":Z
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 42
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    .line 44
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 45
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 47
    mul-int/lit8 v4, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    add-int v21, v4, v5

    .line 50
    .local v21, "key_block_size":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v6

    .line 52
    .local v6, "key_block":[B
    const/4 v7, 0x0

    .line 55
    .local v7, "offset":I
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 57
    .local v3, "clientWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/2addr v7, v4

    .line 58
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 60
    .local v8, "serverWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/2addr v7, v4

    .line 63
    new-instance v14, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v14, v6, v7, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 64
    .local v14, "clientWriteKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v7, v7, p6

    .line 65
    new-instance v22, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, v22

    move/from16 v1, p6

    invoke-direct {v0, v6, v7, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 66
    .local v22, "serverWriteKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v7, v7, p6

    .line 68
    move/from16 v0, v21

    if-eq v7, v0, :cond_0

    .line 70
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 74
    :cond_0
    if-eqz v20, :cond_1

    .line 76
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 77
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 79
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 80
    move-object/from16 v18, v22

    .line 81
    .local v18, "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object v15, v14

    .local v15, "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v16, v15

    .end local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .local v16, "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v19, v18

    .line 93
    .end local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .local v19, "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p7, :cond_2

    .line 95
    const/16 v4, 0x8

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 96
    .local v17, "dummyNonce":[B
    new-instance v18, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 97
    .end local v19    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v15, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct/range {v15 .. v17}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 100
    .end local v16    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .end local v17    # "dummyNonce":[B
    .restart local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v4, v5, v0}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v15}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 102
    return-void

    .line 85
    .end local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .end local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 86
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 88
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 89
    move-object/from16 v18, v14

    .line 90
    .restart local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v15, v22

    .restart local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v16, v15

    .end local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v16    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v19, v18

    .end local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v19    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_2
    move-object/from16 v15, v16

    .end local v16    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v15    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v18, v19

    .end local v19    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v18    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_1
.end method

.method private checkMAC(JS[BII[BII)V
    .locals 9
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "recBuf"    # [B
    .param p5, "recStart"    # I
    .param p6, "recEnd"    # I
    .param p7, "calcBuf"    # [B
    .param p8, "calcOff"    # I
    .param p9, "calcLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p4, p5, p6}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 164
    .local v8, "receivedMac":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v0

    .line 166
    .local v0, "computedMac":[B
    invoke-static {v8, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 170
    :cond_0
    return-void
.end method

.method private updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p2, "forEncryption"    # Z
    .param p3, "seqNo"    # J

    .prologue
    .line 174
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 175
    .local v0, "nonce":[B
    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 176
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 177
    return-void
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 13
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
    .line 141
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v11

    .line 147
    .local v11, "macSize":I
    move/from16 v0, p6

    if-ge v0, v11, :cond_1

    .line 149
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 152
    :cond_1
    sub-int v12, p6, v11

    .line 154
    .local v12, "plaintextLength":I
    move/from16 v0, p6

    new-array v5, v0, [B

    .line 155
    .local v5, "deciphered":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 156
    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move v6, v12

    move/from16 v7, p6

    move-object v8, v5

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    .line 157
    const/4 v1, 0x0

    invoke-static {v5, v1, v12}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 13
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "plaintext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p1, p2}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    add-int v0, v0, p6

    new-array v4, v0, [B

    .line 124
    .local v4, "outBuf":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 126
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    .line 127
    .local v1, "mac":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    array-length v3, v1

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 129
    return-object v4
.end method
