.class Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsEnvelopedDataOutputStream"
.end annotation


# instance fields
.field private _cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 290
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 292
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;

    iget-object v2, v2, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;->unprotectedAttributeGenerator:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;

    iget-object v2, v2, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator;->unprotectedAttributeGenerator:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 296
    .local v0, "attrTable":Lorg/spongycastle/asn1/cms/AttributeTable;
    new-instance v1, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 298
    .local v1, "unprotectedAttrs":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 301
    .end local v0    # "attrTable":Lorg/spongycastle/asn1/cms/AttributeTable;
    .end local v1    # "unprotectedAttrs":Lorg/spongycastle/asn1/ASN1Set;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 302
    iget-object v2, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 303
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
    .line 267
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 268
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
    .line 283
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 284
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
    .line 276
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 277
    return-void
.end method
