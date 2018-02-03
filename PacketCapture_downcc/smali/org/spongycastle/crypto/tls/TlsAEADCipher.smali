.class public Lorg/spongycastle/crypto/tls/TlsAEADCipher;
.super Ljava/lang/Object;
.source "TlsAEADCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected decryptImplicitNonce:[B

.field protected encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected encryptImplicitNonce:[B

.field protected macSize:I

.field protected nonce_explicit_length:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V
    .locals 17
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p4, "cipherKeySize"    # I
    .param p5, "macSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 27
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 30
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 31
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    .line 34
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    .line 37
    const/4 v7, 0x4

    .line 39
    .local v7, "fixed_iv_length":I
    mul-int/lit8 v13, p4, 0x2

    add-int/lit8 v9, v13, 0x8

    .line 41
    .local v9, "key_block_size":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v8

    .line 43
    .local v8, "key_block":[B
    const/4 v10, 0x0

    .line 45
    .local v10, "offset":I
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v3, v8, v10, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 46
    .local v3, "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v10, v10, p4

    .line 47
    new-instance v12, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v12, v8, v10, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 48
    .local v12, "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v10, v10, p4

    .line 49
    add-int v13, v10, v7

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 50
    .local v2, "client_write_IV":[B
    add-int/2addr v10, v7

    .line 51
    add-int v13, v10, v7

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 52
    .local v11, "server_write_IV":[B
    add-int/2addr v10, v7

    .line 54
    if-eq v10, v9, :cond_1

    .line 56
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 60
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 62
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 63
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 64
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    .line 65
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    .line 66
    move-object v6, v12

    .line 67
    .local v6, "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v4, v3

    .line 79
    .local v4, "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    add-int/2addr v13, v7

    new-array v5, v13, [B

    .line 81
    .local v5, "dummyNonce":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v14, 0x1

    new-instance v15, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v16, p5, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v6, v0, v5}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v13, v14, v15}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v14, 0x0

    new-instance v15, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v16, p5, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v4, v0, v5}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v13, v14, v15}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 83
    return-void

    .line 71
    .end local v4    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v5    # "dummyNonce":[B
    .end local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 72
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 73
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    .line 74
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    .line 75
    move-object v6, v3

    .line 76
    .restart local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v4, v12

    .restart local v4    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 17
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
    .line 138
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getPlaintextLimit(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 140
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    add-int/2addr v4, v5

    new-array v12, v4, [B

    .line 144
    .local v12, "nonce":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v5, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v12, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    add-int v6, p5, v4

    .line 148
    .local v6, "ciphertextOffset":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    sub-int v7, p6, v4

    .line 149
    .local v7, "ciphertextLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v14

    .line 151
    .local v14, "plaintextLength":I
    new-array v8, v14, [B

    .line 152
    .local v8, "output":[B
    const/4 v9, 0x0

    .line 154
    .local v9, "outputPos":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v10

    .line 155
    .local v10, "additionalData":[B
    new-instance v13, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v13, v4, v5, v12, v10}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 159
    .local v13, "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v13}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v5, p4

    invoke-interface/range {v4 .. v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v4

    add-int/2addr v9, v4

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v8, v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v9, v4

    .line 168
    array-length v4, v8

    if-eq v9, v4, :cond_1

    .line 171
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 163
    :catch_0
    move-exception v11

    .line 165
    .local v11, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 174
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v8
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 17
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
    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    add-int/2addr v4, v5

    new-array v13, v4, [B

    .line 95
    .local v13, "nonce":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v5, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 104
    move/from16 v6, p5

    .line 105
    .local v6, "plaintextOffset":I
    move/from16 v7, p6

    .line 106
    .local v7, "plaintextLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v11

    .line 108
    .local v11, "ciphertextLength":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    add-int/2addr v4, v11

    new-array v8, v4, [B

    .line 109
    .local v8, "output":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    invoke-static {v13, v4, v8, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    .line 112
    .local v9, "outputPos":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v7}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v10

    .line 113
    .local v10, "additionalData":[B
    new-instance v14, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v14, v4, v5, v13, v10}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 117
    .local v14, "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v14}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v5, p4

    invoke-interface/range {v4 .. v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v4

    add-int/2addr v9, v4

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v8, v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v9, v4

    .line 126
    array-length v4, v8

    if-eq v9, v4, :cond_0

    .line 129
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 121
    :catch_0
    move-exception v12

    .line 123
    .local v12, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 132
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8
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
    .line 185
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 186
    .local v0, "additional_data":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 187
    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 188
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 189
    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 191
    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 2
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonce_explicit_length:I

    sub-int/2addr v0, v1

    return v0
.end method
