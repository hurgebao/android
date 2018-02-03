.class Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsSignedDataOutputStream"
.end annotation


# instance fields
.field private _contentOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private _eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/io/OutputStream;

.field private _sGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field private _sigGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

.field final synthetic this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;


# virtual methods
.method public close()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 401
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 402
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_eiGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 404
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->digests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 406
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 408
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    invoke-static {v8}, Lorg/spongycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    .line 410
    .local v1, "certSet":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    new-instance v9, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-direct {v9, v11, v11, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 413
    .end local v1    # "certSet":Lorg/spongycastle/asn1/ASN1Set;
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 415
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    invoke-static {v8}, Lorg/spongycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    .line 417
    .local v2, "crlSet":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    new-instance v9, Lorg/spongycastle/asn1/BERTaggedObject;

    const/4 v10, 0x1

    invoke-direct {v9, v11, v10, v2}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 423
    .end local v2    # "crlSet":Lorg/spongycastle/asn1/ASN1Set;
    :cond_1
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 429
    .local v7, "signerInfos":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 431
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/cms/SignerInfoGenerator;

    .line 436
    .local v5, "sigGen":Lorg/spongycastle/cms/SignerInfoGenerator;
    :try_start_0
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_contentOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v8}, Lorg/spongycastle/cms/SignerInfoGenerator;->generate(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 438
    invoke-virtual {v5}, Lorg/spongycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v0

    .line 440
    .local v0, "calculatedDigest":[B
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/spongycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    .end local v0    # "calculatedDigest":[B
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Lorg/spongycastle/cms/CMSException;
    new-instance v8, Lorg/spongycastle/cms/CMSStreamException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception generating signers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/cms/CMSStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 452
    .end local v3    # "e":Lorg/spongycastle/cms/CMSException;
    .end local v5    # "sigGen":Lorg/spongycastle/cms/SignerInfoGenerator;
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->this$0:Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v8, v8, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 453
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 455
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/cms/SignerInformation;

    .line 476
    .local v6, "signer":Lorg/spongycastle/cms/SignerInformation;
    invoke-virtual {v6}, Lorg/spongycastle/cms/SignerInformation;->toASN1Structure()Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 480
    .end local v6    # "signer":Lorg/spongycastle/cms/SignerInformation;
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    new-instance v9, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v9, v7}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 482
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sigGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 483
    iget-object v8, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_sGen:Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 484
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
    .line 379
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 380
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
    .line 395
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 396
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
    .line 388
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 389
    return-void
.end method
