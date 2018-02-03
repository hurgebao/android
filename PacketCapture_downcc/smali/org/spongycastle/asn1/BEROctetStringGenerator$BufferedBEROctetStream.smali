.class Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lorg/spongycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lorg/spongycastle/asn1/BEROctetStringGenerator;


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v1, :cond_0

    .line 93
    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-array v0, v1, [B

    .line 94
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/spongycastle/asn1/DEROutputStream;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/DEROctetString;->encode(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 99
    .end local v0    # "bytes":[B
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lorg/spongycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 60
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/spongycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;->encode(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 65
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :goto_0
    if-lez p3, :cond_0

    .line 71
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    .local v0, "numToCopy":I
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 75
    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 86
    .end local v0    # "numToCopy":I
    :cond_0
    return-void

    .line 80
    .restart local v0    # "numToCopy":I
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lorg/spongycastle/asn1/DEROutputStream;

    iget-object v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;->encode(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 83
    add-int/2addr p2, v0

    .line 84
    sub-int/2addr p3, v0

    .line 85
    goto :goto_0
.end method
