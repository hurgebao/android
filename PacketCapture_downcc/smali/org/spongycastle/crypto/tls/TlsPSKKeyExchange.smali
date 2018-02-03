.class public Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsPSKKeyExchange.java"


# instance fields
.field protected dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

.field protected premasterSecret:[B

.field protected pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    .line 213
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    .line 215
    .local v0, "psk_identity":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 217
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 219
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 232
    :cond_0
    :goto_1
    return-void

    .line 210
    .end local v0    # "psk_identity":[B
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    goto :goto_0

    .line 222
    .restart local v0    # "psk_identity":[B
    :cond_2
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    .line 225
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 227
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_1
.end method

.method protected generateOtherSecret(I)[B
    .locals 3
    .param p1, "pskLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 258
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 261
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 264
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_0

    .line 269
    :cond_3
    new-array v0, p1, [B

    goto :goto_0
.end method

.method public generatePremasterSecret()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v2

    .line 238
    .local v2, "psk":[B
    array-length v3, v2

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v1

    .line 240
    .local v1, "other_secret":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 242
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public generateServerKeyExchange()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 89
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->requiresServerKeyExchange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-object v1

    .line 94
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v1, :cond_1

    .line 98
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 105
    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_4

    .line 107
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v1, :cond_2

    .line 109
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_4
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    goto :goto_2
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "clientCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    .line 128
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 130
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 135
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 137
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 140
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 153
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->validateRSAPublicKey(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 155
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 157
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 158
    return-void
.end method

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "serverCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 79
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 81
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    .end local p1    # "serverCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    .line 82
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 177
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 179
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object v0

    .line 181
    .local v0, "serverDHParams":Lorg/spongycastle/crypto/tls/ServerDHParams;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 187
    .end local v0    # "serverDHParams":Lorg/spongycastle/crypto/tls/ServerDHParams;
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    sparse-switch v0, :sswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected validateRSAPublicKey(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 283
    :cond_0
    return-object p1
.end method
