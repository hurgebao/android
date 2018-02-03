.class public Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsECDHKeyExchange.java"


# instance fields
.field protected agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

.field protected clientECPointFormats:[S

.field protected ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field protected ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field protected namedCurves:[I

.field protected serverECPointFormats:[S

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 2
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "namedCurves"    # [I
    .param p4, "clientECPointFormats"    # [S
    .param p5, "serverECPointFormats"    # [S

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 52
    :goto_0
    iput p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->keyExchange:I

    .line 53
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->namedCurves:[I

    .line 54
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->clientECPointFormats:[S

    .line 55
    iput-object p5, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    .line 56
    return-void

    .line 42
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


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
    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 181
    :cond_0
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->calculateECDHBasicAgreement(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 66
    :cond_0
    return-void
.end method

.method public processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 0
    .param p1, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    return-void
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
    .line 158
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_1

    .line 162
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    .end local p1    # "clientCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    .line 172
    :cond_0
    return-void

    .line 164
    .restart local p1    # "clientCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 199
    .local v1, "point":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 201
    .local v0, "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    goto :goto_0
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 6
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2e

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 80
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 82
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 85
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v3, :cond_1

    .line 96
    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 116
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 107
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 112
    :cond_2
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    goto :goto_0
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->keyExchange:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 125
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
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
    .line 139
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    .line 140
    .local v1, "types":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 142
    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 151
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 140
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
