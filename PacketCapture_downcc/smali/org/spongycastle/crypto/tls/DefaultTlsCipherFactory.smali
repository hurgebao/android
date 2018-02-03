.class public Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;
.super Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;
.source "DefaultTlsCipherFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createAESEngine()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    return-object v0
.end method

.method protected createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lorg/spongycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/CamelliaEngine;-><init>()V

    return-object v0
.end method

.method protected createChaCha20Poly1305(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-object v0
.end method

.method public createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 3
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "encryptionAlgorithm"    # I
    .param p3, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/16 v1, 0x20

    const/16 v0, 0x10

    .line 30
    sparse-switch p2, :sswitch_data_0

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 33
    :sswitch_0
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 36
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createChaCha20Poly1305(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 38
    :sswitch_2
    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    .line 41
    :sswitch_3
    invoke-virtual {p0, p1, v0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 44
    :sswitch_4
    invoke-virtual {p0, p1, v0, v2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_5
    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 50
    :sswitch_6
    invoke-virtual {p0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_7
    invoke-virtual {p0, p1, v0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_8
    invoke-virtual {p0, p1, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_9
    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_a
    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_b
    invoke-virtual {p0, p1, v0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_c
    invoke-virtual {p0, p1, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_d
    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_e
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20Cipher(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_f
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createNullCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_10
    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4Cipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    .line 76
    :sswitch_11
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20Cipher(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_12
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x2 -> :sswitch_10
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0xe -> :sswitch_12
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_b
        0x14 -> :sswitch_d
        0x64 -> :sswitch_e
        0x65 -> :sswitch_11
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method protected createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createDESedeCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x18

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createHMACDigest(I)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p1, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    packed-switch p1, :pswitch_data_0

    .line 234
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 224
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    .line 226
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_4
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_5
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected createNullCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;
    .locals 3
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method protected createRC4Cipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;
    .locals 8
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "cipherKeySize"    # I
    .param p3, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lorg/spongycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC4Engine;-><init>()V

    return-object v0
.end method

.method protected createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/SEEDEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createSEEDCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createSalsa20Cipher(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;
    .locals 8
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "rounds"    # I
    .param p3, "cipherKeySize"    # I
    .param p4, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20StreamCipher(I)Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20StreamCipher(I)Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p4}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p4}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x1

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected createSalsa20StreamCipher(I)Lorg/spongycastle/crypto/StreamCipher;
    .locals 1
    .param p1, "rounds"    # I

    .prologue
    .line 209
    new-instance v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-object v0
.end method
