.class public Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;
.super Ljava/lang/Object;
.source "DefaultAuthenticatedAttributeTableGenerator.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    .line 28
    return-void
.end method


# virtual methods
.method protected createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 9
    .param p1, "parameters"    # Ljava/util/Map;

    .prologue
    .line 61
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 63
    .local v5, "std":Ljava/util/Hashtable;
    iget-object v6, p0, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 67
    .local v3, "key":Ljava/lang/Object;
    iget-object v6, p0, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    sget-object v6, Lorg/spongycastle/asn1/cms/CMSAttributes;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 72
    const-string v6, "contentType"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 74
    .local v1, "contentType":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    new-instance v0, Lorg/spongycastle/asn1/cms/Attribute;

    sget-object v6, Lorg/spongycastle/asn1/cms/CMSAttributes;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v7, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 76
    .local v0, "attr":Lorg/spongycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v0    # "attr":Lorg/spongycastle/asn1/cms/Attribute;
    .end local v1    # "contentType":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    sget-object v6, Lorg/spongycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    const-string v6, "digest"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v4, v6

    check-cast v4, [B

    .line 83
    .local v4, "messageDigest":[B
    new-instance v0, Lorg/spongycastle/asn1/cms/Attribute;

    sget-object v6, Lorg/spongycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    new-instance v8, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v8, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 85
    .restart local v0    # "attr":Lorg/spongycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v0    # "attr":Lorg/spongycastle/asn1/cms/Attribute;
    .end local v4    # "messageDigest":[B
    :cond_2
    return-object v5
.end method

.method public getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 2
    .param p1, "parameters"    # Ljava/util/Map;

    .prologue
    .line 97
    new-instance v0, Lorg/spongycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0, p1}, Lorg/spongycastle/cms/DefaultAuthenticatedAttributeTableGenerator;->createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
