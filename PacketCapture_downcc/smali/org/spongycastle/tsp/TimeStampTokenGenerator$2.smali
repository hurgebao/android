.class Lorg/spongycastle/tsp/TimeStampTokenGenerator$2;
.super Ljava/lang/Object;
.source "TimeStampTokenGenerator.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/tsp/TimeStampTokenGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$essCertid:Lorg/spongycastle/asn1/ess/ESSCertIDv2;

.field final synthetic val$signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;


# virtual methods
.method public getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 4
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator$2;->val$signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getSignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 188
    .local v0, "table":Lorg/spongycastle/asn1/cms/AttributeTable;
    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;->get(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/ess/SigningCertificateV2;

    iget-object v3, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator$2;->val$essCertid:Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ess/SigningCertificateV2;-><init>(Lorg/spongycastle/asn1/ess/ESSCertIDv2;)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/cms/AttributeTable;->add(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 193
    .end local v0    # "table":Lorg/spongycastle/asn1/cms/AttributeTable;
    :cond_0
    return-object v0
.end method
