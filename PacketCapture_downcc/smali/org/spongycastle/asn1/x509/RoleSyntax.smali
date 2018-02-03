.class public Lorg/spongycastle/asn1/x509/RoleSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RoleSyntax.java"


# instance fields
.field private roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

.field private roleName:Lorg/spongycastle/asn1/x509/GeneralName;


# virtual methods
.method public getRoleAuthorityAsString()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 172
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-nez v4, :cond_1

    .line 174
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 191
    :cond_0
    return-object v2

    .line 177
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 178
    .local v1, "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 179
    .local v2, "namesString":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 181
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 182
    .local v3, "value":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v4, v3, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v4, :cond_2

    .line 184
    check-cast v3, Lorg/spongycastle/asn1/ASN1String;

    .end local v3    # "value":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .restart local v3    # "value":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1
.end method

.method public getRoleNameAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleName:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    .line 162
    .local v0, "str":Lorg/spongycastle/asn1/ASN1String;
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 208
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 212
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleName:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RoleSyntax;->getRoleNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 223
    :cond_0
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RoleSyntax;->getRoleAuthorityAsString()[Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "names":[Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 231
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
