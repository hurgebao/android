.class Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSAuthenticatedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsAuthenticatedDataOutputStream"
.end annotation


# instance fields
.field private cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private dataStream:Ljava/io/OutputStream;

.field private digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

.field private eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private macCalculator:Lorg/spongycastle/operator/MacCalculator;

.field final synthetic this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;


# virtual methods
.method public close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 270
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 271
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 275
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v4, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v5}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v6}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 279
    .local v2, "parameters":Ljava/util/Map;
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, v3, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-nez v3, :cond_0

    .line 281
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    new-instance v4, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;

    invoke-direct {v4}, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;-><init>()V

    iput-object v4, v3, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    .line 284
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, v3, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v3, v2}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 286
    .local v0, "authed":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {v3}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 288
    .local v1, "mOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 290
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 292
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v5, 0x2

    invoke-direct {v4, v8, v5, v0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 299
    .end local v0    # "authed":Lorg/spongycastle/asn1/ASN1Set;
    .end local v1    # "mOut":Ljava/io/OutputStream;
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {v5}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 301
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, v3, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->unauthGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v5, 0x3

    new-instance v6, Lorg/spongycastle/asn1/BERSet;

    iget-object v7, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v7, v7, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator;->unauthGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v7, v2}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/BERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v8, v5, v6}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 306
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 307
    iget-object v3, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->cGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 308
    return-void

    .line 296
    .end local v2    # "parameters":Ljava/util/Map;
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .restart local v2    # "parameters":Ljava/util/Map;
    goto :goto_0
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
    .line 248
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 249
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
    .line 264
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 265
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
    .line 257
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 258
    return-void
.end method
