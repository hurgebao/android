.class public Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.source "TlsECDHEKeyExchange.java"


# instance fields
.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 1
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "namedCurves"    # [I
    .param p4, "clientECPointFormats"    # [S
    .param p5, "serverECPointFormats"    # [S

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 28
    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v9, -0x1

    .line 50
    .local v9, "namedCurve":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    if-nez v14, :cond_2

    .line 53
    const/16 v9, 0x17

    .line 68
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 69
    .local v2, "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    if-ltz v9, :cond_4

    .line 71
    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 88
    :cond_1
    :goto_1
    if-nez v2, :cond_6

    .line 94
    new-instance v14, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v15, 0x50

    invoke-direct {v14, v15}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v14

    .line 57
    .end local v2    # "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    array-length v14, v14

    if-ge v7, v14, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    aget v5, v14, v7

    .line 60
    .local v5, "entry":I
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/NamedCurve;->isValid(I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 62
    move v9, v5

    .line 63
    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 78
    .end local v5    # "entry":I
    .end local v7    # "i":I
    .restart local v2    # "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v15, 0xff01

    invoke-static {v14, v15}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 80
    const/16 v14, 0x17

    invoke-static {v14}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    goto :goto_1

    .line 82
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v15, 0xff02

    invoke-static {v14, v15}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 84
    const/16 v14, 0xa

    invoke-static {v14}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    goto :goto_1

    .line 97
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v14

    invoke-static {v14, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v8

    .line 98
    .local v8, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 100
    new-instance v1, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 102
    .local v1, "buf":Lorg/spongycastle/crypto/tls/DigestInputBuffer;
    if-gez v9, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v14, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeExplicitECParameters([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V

    .line 111
    :goto_3
    invoke-virtual {v8}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 112
    .local v4, "ecPublicKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-static {v14, v15, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v14}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v12

    .line 123
    .local v12, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez v12, :cond_8

    .line 125
    new-instance v14, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v15, 0x50

    invoke-direct {v14, v15}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v14

    .line 108
    .end local v4    # "ecPublicKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local v12    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_7
    invoke-static {v9, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeNamedECParameters(ILjava/io/OutputStream;)V

    goto :goto_3

    .line 128
    .restart local v4    # "ecPublicKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .restart local v12    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_8
    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v14

    invoke-static {v14}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 136
    .local v3, "d":Lorg/spongycastle/crypto/Digest;
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v10

    .line 137
    .local v10, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v14, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    const/4 v15, 0x0

    iget-object v0, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v3, v14, v15, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v14, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    const/4 v15, 0x0

    iget-object v0, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v3, v14, v15, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 139
    invoke-virtual {v1, v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 141
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v6, v14, [B

    .line 142
    .local v6, "hash":[B
    const/4 v14, 0x0

    invoke-interface {v3, v6, v14}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v14, v6}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v11

    .line 146
    .local v11, "signature":[B
    new-instance v13, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v13, v12, v11}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 147
    .local v13, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-virtual {v13, v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 149
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v14

    return-object v14

    .line 132
    .end local v3    # "d":Lorg/spongycastle/crypto/Digest;
    .end local v6    # "hash":[B
    .end local v10    # "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    .end local v11    # "signature":[B
    .end local v12    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v13    # "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    :cond_9
    const/4 v12, 0x0

    .line 133
    .restart local v12    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    new-instance v3, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .restart local v3    # "d":Lorg/spongycastle/crypto/Digest;
    goto :goto_4
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p3, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 217
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 218
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 219
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
    .line 204
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
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
    .line 33
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 38
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 40
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .end local p1    # "serverCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 41
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 157
    .local v3, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v0, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 158
    .local v0, "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    new-instance v6, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v6, p1, v0}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 160
    .local v6, "teeIn":Ljava/io/InputStream;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v7, v8, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameters([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 162
    .local v1, "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 164
    .local v2, "point":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v7, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v4

    .line 166
    .local v4, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v3}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v5

    .line 167
    .local v5, "signer":Lorg/spongycastle/crypto/Signer;
    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    .line 168
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v7

    if-nez v7, :cond_0

    .line 170
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x33

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 173
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v7, v1, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 175
    return-void
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    .line 187
    .local v1, "types":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 189
    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 196
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 187
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
