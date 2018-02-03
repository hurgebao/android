.class public Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsDHKeyExchange.java"


# static fields
.field protected static final ONE:Ljava/math/BigInteger;

.field protected static final TWO:Ljava/math/BigInteger;


# instance fields
.field protected agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

.field protected dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeClientPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhAgreeServerPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->ONE:Ljava/math/BigInteger;

    .line 23
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 2
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "dhParameters"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 53
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 56
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    .line 57
    return-void

    .line 47
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 50
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 186
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
    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 67
    :cond_0
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
    .line 157
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    .end local p1    # "clientCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    .line 171
    :cond_0
    return-void

    .line 163
    .restart local p1    # "clientCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
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

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 83
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 85
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 88
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v3, :cond_1

    .line 99
    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 118
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 119
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 101
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 110
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 115
    :cond_2
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    goto :goto_0
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->keyExchange:I

    sparse-switch v0, :sswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xb -> :sswitch_0
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
    .line 72
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
    .line 137
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    .line 138
    .local v1, "types":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 140
    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 149
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 138
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
