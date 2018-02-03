.class public final Lapp/ssldecryptor/HandshakeResult;
.super Ljava/lang/Object;
.source "SSLHandshake.kt"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final peerCert:Ljava/security/cert/X509Certificate;

.field private final sslSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "sslSocket"    # Ljava/net/Socket;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .param p4, "peerCert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    iput-object p2, p0, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    iput-object p4, p0, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lapp/ssldecryptor/HandshakeResult;

    if-eqz v0, :cond_1

    check-cast p1, Lapp/ssldecryptor/HandshakeResult;

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    iget-object v1, p1, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    iget-object v1, p1, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p1, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getPeerCert()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final getSslSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandshakeResult(sslSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/HandshakeResult;->sslSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/HandshakeResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/HandshakeResult;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/HandshakeResult;->peerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
