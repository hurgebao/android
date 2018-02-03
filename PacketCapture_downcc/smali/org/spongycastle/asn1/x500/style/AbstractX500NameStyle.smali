.class public abstract Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcHashCode(Lorg/spongycastle/asn1/ASN1Encodable;)I
    .locals 2
    .param p1, "enc"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 46
    invoke-static {p1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .prologue
    .line 32
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 34
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 35
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private foundMatch(ZLorg/spongycastle/asn1/x500/RDN;[Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 4
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lorg/spongycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 162
    if-eqz p1, :cond_1

    .line 164
    array-length v2, p3

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 166
    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    aget-object v2, p3, v0

    invoke-virtual {p0, p2, v2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    aput-object v3, p3, v0

    .line 185
    :goto_1
    return v1

    .line 164
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p3

    if-eq v0, v2, :cond_3

    .line 177
    aget-object v2, p3, v0

    if-eqz v2, :cond_2

    aget-object v2, p3, v0

    invoke-virtual {p0, p2, v2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    aput-object v3, p3, v0

    goto :goto_1

    .line 175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 185
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    .locals 8
    .param p1, "name1"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v1

    .line 135
    .local v1, "rdns1":[Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 137
    .local v2, "rdns2":[Lorg/spongycastle/asn1/x500/RDN;
    array-length v6, v1

    array-length v7, v2

    if-eq v6, v7, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v5

    .line 142
    :cond_1
    const/4 v3, 0x0

    .line 144
    .local v3, "reverse":Z
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    if-eqz v6, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 146
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    .line 149
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, v1

    if-eq v0, v6, :cond_4

    .line 151
    aget-object v6, v1, v0

    invoke-direct {p0, v3, v6, v2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLorg/spongycastle/asn1/x500/RDN;[Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_3
    move v3, v5

    .line 146
    goto :goto_1

    .restart local v0    # "i":I
    :cond_4
    move v5, v4

    .line 157
    goto :goto_0
.end method

.method public calculateHashCode(Lorg/spongycastle/asn1/x500/X500Name;)I
    .locals 6
    .param p1, "name"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "hashCodeValue":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v4

    .line 57
    .local v4, "rdns":[Lorg/spongycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 59
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 63
    .local v0, "atv":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v0

    if-eq v3, v5, :cond_1

    .line 65
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 66
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/spongycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v1, v5

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "atv":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v3    # "j":I
    :cond_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 72
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/spongycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v1, v5

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return v1
.end method

.method protected encodeStringValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected rdnAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 1
    .param p1, "rdn1"    # Lorg/spongycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    .line 190
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public stringToValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 5
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 100
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2, v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 110
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    goto :goto_0
.end method
