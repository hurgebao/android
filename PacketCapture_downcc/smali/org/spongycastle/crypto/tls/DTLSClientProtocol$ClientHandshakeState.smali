.class public Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
.super Ljava/lang/Object;
.source "DTLSClientProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSClientProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClientHandshakeState"
.end annotation


# instance fields
.field allowCertificateStatus:Z

.field authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field client:Lorg/spongycastle/crypto/tls/TlsClient;

.field clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

.field clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field maxFragmentLength:S

.field offeredCipherSuites:[I

.field offeredCompressionMethods:[S

.field secure_renegotiation:Z

.field selectedCipherSuite:I

.field selectedCompressionMethod:S

.field selectedSessionID:[B

.field sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

.field sessionParametersBuilder:Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

.field tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 811
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 812
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 813
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 814
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParametersBuilder:Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    .line 815
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 816
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    .line 817
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 818
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    .line 819
    iput v1, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    .line 820
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    .line 821
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    .line 822
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    .line 823
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 824
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    .line 825
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 826
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 827
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 828
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 829
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    return-void
.end method
