.class public Lorg/spongycastle/asn1/BERSequenceGenerator;
.super Lorg/spongycastle/asn1/BERGenerator;
.source "BERSequenceGenerator.java"


# virtual methods
.method public addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "object"    # Lorg/spongycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/BEROutputStream;

    iget-object v2, p0, Lorg/spongycastle/asn1/BERSequenceGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    .line 34
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->writeBEREnd()V

    .line 40
    return-void
.end method
