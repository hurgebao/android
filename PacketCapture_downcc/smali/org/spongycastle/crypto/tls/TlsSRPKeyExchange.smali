.class public Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsSRPKeyExchange.java"


# instance fields
.field protected B:Ljava/math/BigInteger;

.field protected identity:[B

.field protected password:[B

.field protected s:[B

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->s:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    invoke-virtual {v1, v2, v3, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 182
    .local v0, "A":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 183
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->B:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p3, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 201
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 202
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 203
    return-object v0
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
    .line 176
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
    .line 79
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 88
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 90
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 93
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 105
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 107
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 108
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 16
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v9

    .line 119
    .local v9, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    const/4 v4, 0x0

    .line 120
    .local v4, "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    move-object/from16 v12, p1

    .line 122
    .local v12, "teeIn":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v13, :cond_0

    .line 124
    new-instance v4, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    .end local v4    # "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    invoke-direct {v4}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 125
    .restart local v4    # "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    new-instance v12, Lorg/spongycastle/util/io/TeeInputStream;

    .end local v12    # "teeIn":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-direct {v12, v0, v4}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    .restart local v12    # "teeIn":Ljava/io/InputStream;
    :cond_0
    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 129
    .local v3, "NBytes":[B
    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 130
    .local v7, "gBytes":[B
    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 131
    .local v8, "sBytes":[B
    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 133
    .local v1, "BBytes":[B
    if-eqz v4, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v10

    .line 137
    .local v10, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v11

    .line 138
    .local v11, "signer":Lorg/spongycastle/crypto/Signer;
    invoke-virtual {v4, v11}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    .line 139
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v13

    if-nez v13, :cond_1

    .line 141
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x33

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 145
    .end local v10    # "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    .end local v11    # "signer":Lorg/spongycastle/crypto/Signer;
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-direct {v2, v13, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 146
    .local v2, "N":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-direct {v6, v13, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 151
    .local v6, "g":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->s:[B

    .line 159
    :try_start_0
    new-instance v13, Ljava/math/BigInteger;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v2, v13}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->B:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    const/4 v14, 0x2

    invoke-static {v14}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v15}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v15

    invoke-virtual {v13, v2, v6, v14, v15}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 167
    return-void

    .line 161
    :catch_0
    move-exception v5

    .line 163
    .local v5, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x2f

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 75
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
    .line 171
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
