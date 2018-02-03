.class public abstract Lorg/spongycastle/crypto/tls/DefaultTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "DefaultTlsClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .param p1, "keyExchange"    # I

    .prologue
    .line 434
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .param p1, "keyExchange"    # I

    .prologue
    .line 429
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 6
    .param p1, "keyExchange"    # I

    .prologue
    .line 445
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 6
    .param p1, "keyExchange"    # I

    .prologue
    .line 439
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 213
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 423
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 224
    :sswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 229
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 240
    :sswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 251
    :sswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 255
    :sswitch_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 259
    :sswitch_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 270
    :sswitch_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 281
    :sswitch_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 288
    :sswitch_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 294
    :sswitch_9
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 298
    :sswitch_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 313
    :sswitch_c
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 320
    :sswitch_d
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 331
    :sswitch_e
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 342
    :sswitch_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 349
    :sswitch_10
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 356
    :sswitch_11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :sswitch_12
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 373
    :sswitch_13
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v7, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :sswitch_14
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 382
    :sswitch_15
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 389
    :sswitch_16
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 392
    :sswitch_17
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 395
    :sswitch_18
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 402
    :sswitch_19
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :sswitch_1a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 415
    :sswitch_1b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_16
        0x4 -> :sswitch_18
        0x5 -> :sswitch_19
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x3b -> :sswitch_17
        0x3c -> :sswitch_3
        0x3d -> :sswitch_8
        0x3e -> :sswitch_3
        0x3f -> :sswitch_3
        0x40 -> :sswitch_3
        0x41 -> :sswitch_d
        0x42 -> :sswitch_d
        0x43 -> :sswitch_d
        0x44 -> :sswitch_d
        0x45 -> :sswitch_d
        0x67 -> :sswitch_3
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_8
        0x6b -> :sswitch_8
        0x84 -> :sswitch_10
        0x85 -> :sswitch_10
        0x86 -> :sswitch_10
        0x87 -> :sswitch_10
        0x88 -> :sswitch_10
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1b
        0x99 -> :sswitch_1b
        0x9a -> :sswitch_1b
        0x9c -> :sswitch_6
        0x9d -> :sswitch_c
        0x9e -> :sswitch_6
        0x9f -> :sswitch_c
        0xa0 -> :sswitch_6
        0xa1 -> :sswitch_c
        0xa2 -> :sswitch_6
        0xa3 -> :sswitch_c
        0xa4 -> :sswitch_6
        0xa5 -> :sswitch_c
        0xba -> :sswitch_e
        0xbb -> :sswitch_e
        0xbc -> :sswitch_e
        0xbd -> :sswitch_e
        0xbe -> :sswitch_e
        0xc0 -> :sswitch_11
        0xc1 -> :sswitch_11
        0xc2 -> :sswitch_11
        0xc3 -> :sswitch_11
        0xc4 -> :sswitch_11
        0xc001 -> :sswitch_16
        0xc002 -> :sswitch_19
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_2
        0xc005 -> :sswitch_7
        0xc006 -> :sswitch_16
        0xc007 -> :sswitch_19
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_7
        0xc00b -> :sswitch_16
        0xc00c -> :sswitch_19
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_7
        0xc010 -> :sswitch_16
        0xc011 -> :sswitch_19
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_7
        0xc023 -> :sswitch_3
        0xc024 -> :sswitch_9
        0xc025 -> :sswitch_3
        0xc026 -> :sswitch_9
        0xc027 -> :sswitch_3
        0xc028 -> :sswitch_9
        0xc029 -> :sswitch_3
        0xc02a -> :sswitch_9
        0xc02b -> :sswitch_6
        0xc02c -> :sswitch_c
        0xc02d -> :sswitch_6
        0xc02e -> :sswitch_c
        0xc02f -> :sswitch_6
        0xc030 -> :sswitch_c
        0xc031 -> :sswitch_6
        0xc032 -> :sswitch_c
        0xc072 -> :sswitch_e
        0xc073 -> :sswitch_13
        0xc074 -> :sswitch_e
        0xc075 -> :sswitch_13
        0xc076 -> :sswitch_e
        0xc077 -> :sswitch_13
        0xc078 -> :sswitch_e
        0xc079 -> :sswitch_13
        0xc07a -> :sswitch_f
        0xc07b -> :sswitch_12
        0xc07c -> :sswitch_f
        0xc07d -> :sswitch_12
        0xc07e -> :sswitch_f
        0xc07f -> :sswitch_12
        0xc080 -> :sswitch_f
        0xc081 -> :sswitch_12
        0xc082 -> :sswitch_f
        0xc083 -> :sswitch_12
        0xc086 -> :sswitch_f
        0xc087 -> :sswitch_12
        0xc088 -> :sswitch_f
        0xc089 -> :sswitch_12
        0xc08a -> :sswitch_f
        0xc08b -> :sswitch_12
        0xc08c -> :sswitch_f
        0xc08d -> :sswitch_12
        0xc09c -> :sswitch_4
        0xc09d -> :sswitch_a
        0xc09e -> :sswitch_4
        0xc09f -> :sswitch_a
        0xc0a0 -> :sswitch_5
        0xc0a1 -> :sswitch_b
        0xc0a2 -> :sswitch_5
        0xc0a3 -> :sswitch_b
        0xcc13 -> :sswitch_1
        0xcc14 -> :sswitch_1
        0xcc15 -> :sswitch_1
        0xe410 -> :sswitch_14
        0xe411 -> :sswitch_1a
        0xe412 -> :sswitch_14
        0xe413 -> :sswitch_1a
        0xe414 -> :sswitch_14
        0xe415 -> :sswitch_1a
        0xe41e -> :sswitch_14
        0xe41f -> :sswitch_1a
    .end sparse-switch
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 206
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 50
    :sswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 66
    :sswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 120
    :sswitch_4
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_5
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 153
    :sswitch_6
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 171
    :sswitch_7
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 198
    :sswitch_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0xa -> :sswitch_8
        0xd -> :sswitch_0
        0x10 -> :sswitch_1
        0x13 -> :sswitch_2
        0x16 -> :sswitch_3
        0x2f -> :sswitch_8
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x35 -> :sswitch_8
        0x36 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3b -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_0
        0x3f -> :sswitch_1
        0x40 -> :sswitch_2
        0x41 -> :sswitch_8
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x45 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
        0x84 -> :sswitch_8
        0x85 -> :sswitch_0
        0x86 -> :sswitch_1
        0x87 -> :sswitch_2
        0x88 -> :sswitch_3
        0x96 -> :sswitch_8
        0x97 -> :sswitch_0
        0x98 -> :sswitch_1
        0x99 -> :sswitch_2
        0x9a -> :sswitch_3
        0x9c -> :sswitch_8
        0x9d -> :sswitch_8
        0x9e -> :sswitch_3
        0x9f -> :sswitch_3
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xba -> :sswitch_8
        0xbb -> :sswitch_0
        0xbc -> :sswitch_1
        0xbd -> :sswitch_2
        0xbe -> :sswitch_3
        0xc0 -> :sswitch_8
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_3
        0xc001 -> :sswitch_4
        0xc002 -> :sswitch_4
        0xc003 -> :sswitch_4
        0xc004 -> :sswitch_4
        0xc005 -> :sswitch_4
        0xc006 -> :sswitch_6
        0xc007 -> :sswitch_6
        0xc008 -> :sswitch_6
        0xc009 -> :sswitch_6
        0xc00a -> :sswitch_6
        0xc00b -> :sswitch_5
        0xc00c -> :sswitch_5
        0xc00d -> :sswitch_5
        0xc00e -> :sswitch_5
        0xc00f -> :sswitch_5
        0xc010 -> :sswitch_7
        0xc011 -> :sswitch_7
        0xc012 -> :sswitch_7
        0xc013 -> :sswitch_7
        0xc014 -> :sswitch_7
        0xc023 -> :sswitch_6
        0xc024 -> :sswitch_6
        0xc025 -> :sswitch_4
        0xc026 -> :sswitch_4
        0xc027 -> :sswitch_7
        0xc028 -> :sswitch_7
        0xc029 -> :sswitch_5
        0xc02a -> :sswitch_5
        0xc02b -> :sswitch_6
        0xc02c -> :sswitch_6
        0xc02d -> :sswitch_4
        0xc02e -> :sswitch_4
        0xc02f -> :sswitch_7
        0xc030 -> :sswitch_7
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_5
        0xc072 -> :sswitch_6
        0xc073 -> :sswitch_6
        0xc074 -> :sswitch_4
        0xc075 -> :sswitch_4
        0xc076 -> :sswitch_7
        0xc077 -> :sswitch_7
        0xc078 -> :sswitch_5
        0xc079 -> :sswitch_5
        0xc07a -> :sswitch_8
        0xc07b -> :sswitch_8
        0xc07c -> :sswitch_3
        0xc07d -> :sswitch_3
        0xc07e -> :sswitch_1
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_2
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc086 -> :sswitch_6
        0xc087 -> :sswitch_6
        0xc088 -> :sswitch_4
        0xc089 -> :sswitch_4
        0xc08a -> :sswitch_7
        0xc08b -> :sswitch_7
        0xc08c -> :sswitch_5
        0xc08d -> :sswitch_5
        0xc09c -> :sswitch_8
        0xc09d -> :sswitch_8
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_3
        0xc0a0 -> :sswitch_8
        0xc0a1 -> :sswitch_8
        0xc0a2 -> :sswitch_3
        0xc0a3 -> :sswitch_3
        0xcc13 -> :sswitch_7
        0xcc14 -> :sswitch_6
        0xcc15 -> :sswitch_3
        0xe410 -> :sswitch_8
        0xe411 -> :sswitch_8
        0xe412 -> :sswitch_7
        0xe413 -> :sswitch_7
        0xe414 -> :sswitch_6
        0xe415 -> :sswitch_6
        0xe41e -> :sswitch_3
        0xe41f -> :sswitch_3
    .end sparse-switch
.end method
