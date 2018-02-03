.class Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;
.super Ljava/io/OutputStream;
.source "CMSCompressedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsCompressedOutputStream"
.end annotation


# instance fields
.field private _cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/io/OutputStream;

.field private _sGen:Lorg/spongycastle/asn1/BERSequenceGenerator;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 161
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 162
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_sGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 163
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 137
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 154
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
    .line 146
    iget-object v0, p0, Lorg/spongycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    return-void
.end method
