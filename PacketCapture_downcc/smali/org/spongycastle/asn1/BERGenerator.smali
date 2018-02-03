.class public Lorg/spongycastle/asn1/BERGenerator;
.super Lorg/spongycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagged:Z


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBEREnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 99
    :cond_0
    return-void
.end method
