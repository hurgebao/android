.class public Lorg/spongycastle/operator/bc/BcSignerOutputStream;
.super Ljava/io/OutputStream;
.source "BcSignerOutputStream.java"


# instance fields
.field private sig:Lorg/spongycastle/crypto/Signer;


# virtual methods
.method getSignature()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Signer;->update(B)V

    .line 35
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 29
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 23
    return-void
.end method
