.class public Lorg/spongycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrs"    # Ljava/util/Hashtable;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 23
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 24
    return-void
.end method

.method private addAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/cms/Attribute;)V
    .locals 3
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "a"    # Lorg/spongycastle/asn1/cms/Attribute;

    .prologue
    .line 64
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 68
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    instance-of v2, v1, Lorg/spongycastle/asn1/cms/Attribute;

    if-eqz v2, :cond_1

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 78
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "v":Ljava/util/Vector;
    :cond_1
    move-object v0, v1

    .line 83
    check-cast v0, Ljava/util/Vector;

    .line 85
    .restart local v0    # "v":Ljava/util/Vector;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "in"    # Ljava/util/Hashtable;

    .prologue
    .line 203
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 204
    .local v2, "out":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 206
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 3
    .param p1, "attrType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValue"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 225
    new-instance v0, Lorg/spongycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    .line 227
    .local v0, "newTable":Lorg/spongycastle/asn1/cms/AttributeTable;
    new-instance v1, Lorg/spongycastle/asn1/cms/Attribute;

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;->addAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/cms/Attribute;)V

    .line 229
    return-object v0
.end method

.method public get(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/Attribute;
    .locals 2
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 101
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Ljava/util/Vector;

    .end local v0    # "value":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/cms/Attribute;

    .line 108
    :goto_0
    return-object v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/spongycastle/asn1/cms/Attribute;

    .end local v0    # "value":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 5

    .prologue
    .line 170
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 171
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lorg/spongycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 173
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_1

    .line 179
    check-cast v3, Ljava/util/Vector;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 181
    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 188
    .end local v1    # "en":Ljava/util/Enumeration;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 192
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method
