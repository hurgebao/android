.class public Lorg/spongycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SignerInfoGenerator.java"


# instance fields
.field private calculatedDigest:[B

.field private final digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

.field private final digester:Lorg/spongycastle/operator/DigestCalculator;

.field private final sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

.field private final sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final signer:Lorg/spongycastle/operator/ContentSigner;

.field private final signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

.field private final unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method private getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 2
    .param p1, "attr"    # Lorg/spongycastle/asn1/cms/AttributeTable;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 252
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digAlgId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "hash"    # [B

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "param":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 264
    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "digest"

    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-object v0
.end method


# virtual methods
.method public generate(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/SignerInfo;
    .locals 13
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 186
    .local v3, "signedAttr":Lorg/spongycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .line 188
    .local v2, "digestAlg":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 191
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 192
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v8

    .line 193
    .local v8, "parameters":Ljava/util/Map;
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v11

    .line 195
    .local v11, "signed":Lorg/spongycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v11}, Lorg/spongycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    .line 198
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 200
    .local v9, "sOut":Ljava/io/OutputStream;
    const-string v0, "DER"

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 218
    .end local v8    # "parameters":Ljava/util/Map;
    .end local v9    # "sOut":Ljava/io/OutputStream;
    .end local v11    # "signed":Lorg/spongycastle/asn1/cms/AttributeTable;
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v10

    .line 220
    .local v10, "sigBytes":[B
    const/4 v6, 0x0

    .line 221
    .local v6, "unsignedAttr":Lorg/spongycastle/asn1/ASN1Set;
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v0}, Lorg/spongycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v8

    .line 224
    .restart local v8    # "parameters":Ljava/util/Map;
    const-string v0, "encryptedDigest"

    invoke-static {v10}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v12

    .line 228
    .local v12, "unsigned":Lorg/spongycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v12}, Lorg/spongycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v6

    .line 231
    .end local v8    # "parameters":Ljava/util/Map;
    .end local v12    # "unsigned":Lorg/spongycastle/asn1/cms/AttributeTable;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 233
    .local v4, "digestEncryptionAlgorithm":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Lorg/spongycastle/asn1/cms/SignerInfo;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v5, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/asn1/cms/SignerInfo;-><init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V

    return-object v0

    .line 206
    .end local v4    # "digestEncryptionAlgorithm":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "unsignedAttr":Lorg/spongycastle/asn1/ASN1Set;
    .end local v10    # "sigBytes":[B
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 209
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v7

    .line 238
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    const-string v1, "encoding error."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 213
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getCalculatedDigest()[B
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method
