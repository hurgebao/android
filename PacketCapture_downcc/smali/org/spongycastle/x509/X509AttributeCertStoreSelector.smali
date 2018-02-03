.class public Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertStoreSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

.field private issuer:Lorg/spongycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 201
    .local v0, "sel":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 202
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 203
    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

    .line 204
    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    .line 205
    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    .line 206
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 207
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 208
    return-object v0
.end method

.method public getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 66
    instance-of v10, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-nez v10, :cond_0

    move v10, v11

    .line 190
    :goto_0
    return v10

    :cond_0
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 73
    .local v0, "attrCert":Lorg/spongycastle/x509/X509AttributeCertificate;
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v10, :cond_1

    .line 75
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v10, :cond_2

    .line 82
    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v12, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v11

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

    if-eqz v10, :cond_3

    .line 89
    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    iget-object v12, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/spongycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v10, v12}, Lorg/spongycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v11

    .line 91
    goto :goto_0

    .line 94
    :cond_3
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    if-eqz v10, :cond_4

    .line 96
    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v10

    iget-object v12, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v10, v12}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    .line 98
    goto :goto_0

    .line 102
    :cond_4
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v10, :cond_5

    .line 106
    :try_start_0
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {v0, v10}, Lorg/spongycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :cond_5
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 120
    :cond_6
    sget-object v10, Lorg/spongycastle/asn1/x509/X509Extensions;->TargetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v6

    .line 122
    .local v6, "targetInfoExt":[B
    if-eqz v6, :cond_e

    .line 127
    :try_start_1
    new-instance v12, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static {v6}, Lorg/spongycastle/asn1/DEROctetString;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v10

    invoke-direct {v12, v10}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 141
    .local v7, "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/spongycastle/asn1/x509/Targets;

    move-result-object v9

    .line 142
    .local v9, "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v9

    if-ge v3, v10, :cond_9

    .line 148
    aget-object v5, v9, v3

    .line 149
    .local v5, "t":Lorg/spongycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v8

    .line 150
    .local v8, "targets":[Lorg/spongycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_7

    .line 152
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/Target;->getTargetName()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 155
    const/4 v2, 0x1

    .line 146
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v6    # "targetInfoExt":[B
    .end local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    .end local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateExpiredException;
    move v10, v11

    .line 110
    goto/16 :goto_0

    .line 112
    .end local v1    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    move v10, v11

    .line 114
    goto/16 :goto_0

    .line 133
    .end local v1    # "e":Ljava/security/cert/CertificateNotYetValidException;
    .restart local v6    # "targetInfoExt":[B
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v10, v11

    .line 135
    goto/16 :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move v10, v11

    .line 139
    goto/16 :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .restart local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .restart local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    .restart local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 160
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    :cond_9
    if-nez v2, :cond_a

    move v10, v11

    .line 162
    goto/16 :goto_0

    .line 165
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_a
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 167
    const/4 v2, 0x0

    .line 169
    .restart local v2    # "found":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v10, v9

    if-ge v3, v10, :cond_d

    .line 171
    aget-object v5, v9, v3

    .line 172
    .restart local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v8

    .line 173
    .restart local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_b

    .line 175
    iget-object v10, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/Target;->getTargetGroup()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 178
    const/4 v2, 0x1

    .line 169
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 173
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 183
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    :cond_d
    if-nez v2, :cond_e

    move v10, v11

    .line 185
    goto/16 :goto_0

    .line 190
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v6    # "targetInfoExt":[B
    .end local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .end local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
