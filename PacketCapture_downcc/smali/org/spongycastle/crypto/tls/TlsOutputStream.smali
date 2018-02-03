.class Lorg/spongycastle/crypto/tls/TlsOutputStream;
.super Ljava/io/OutputStream;
.source "TlsOutputStream.java"


# instance fields
.field private buf:[B

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsOutputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->close()V

    .line 37
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsOutputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->flush()V

    .line 43
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsOutputStream;->buf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsOutputStream;->buf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsOutputStream;->write([BII)V

    .line 31
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsOutputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeData([BII)V

    .line 24
    return-void
.end method
