.class public Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolderSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private final attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

.field private final attributeCertificateValid:Ljava/util/Date;

.field private final holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

.field private final issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final targetGroups:Ljava/util/Collection;

.field private final targetNames:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/spongycastle/cert/AttributeCertificateHolder;Lorg/spongycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/spongycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "holder"    # Lorg/spongycastle/cert/AttributeCertificateHolder;
    .param p2, "issuer"    # Lorg/spongycastle/cert/AttributeCertificateIssuer;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;
    .param p4, "attributeCertificateValid"    # Ljava/util/Date;
    .param p5, "attributeCert"    # Lorg/spongycastle/cert/X509AttributeCertificateHolder;
    .param p6, "targetNames"    # Ljava/util/Collection;
    .param p7, "targetGroups"    # Ljava/util/Collection;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    .line 51
    iput-object p2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    .line 52
    iput-object p3, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 53
    iput-object p4, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 54
    iput-object p5, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .line 55
    iput-object p6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    .line 56
    iput-object p7, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 184
    new-instance v0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    iget-object v7, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/spongycastle/cert/AttributeCertificateHolder;Lorg/spongycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/spongycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 187
    .local v0, "sel":Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 68
    instance-of v11, p1, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    if-nez v11, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object v0, p1

    .line 73
    check-cast v0, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .line 75
    .local v0, "attrCert":Lorg/spongycastle/cert/X509AttributeCertificateHolder;
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    if-eqz v11, :cond_2

    .line 77
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    invoke-virtual {v11, v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 82
    :cond_2
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v11, :cond_3

    .line 84
    invoke-virtual {v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    iget-object v12, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 89
    :cond_3
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    if-eqz v11, :cond_4

    .line 91
    invoke-virtual {v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getHolder()Lorg/spongycastle/cert/AttributeCertificateHolder;

    move-result-object v11

    iget-object v12, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    invoke-virtual {v11, v12}, Lorg/spongycastle/cert/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 96
    :cond_4
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    if-eqz v11, :cond_5

    .line 98
    invoke-virtual {v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/spongycastle/cert/AttributeCertificateIssuer;

    move-result-object v11

    iget-object v12, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    invoke-virtual {v11, v12}, Lorg/spongycastle/cert/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 104
    :cond_5
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v11, :cond_6

    .line 106
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v0, v11}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    :cond_6
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 113
    :cond_7
    sget-object v11, Lorg/spongycastle/asn1/x509/Extension;->targetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 114
    .local v6, "targetInfoExt":Lorg/spongycastle/asn1/x509/Extension;
    if-eqz v6, :cond_f

    .line 119
    :try_start_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lorg/spongycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 125
    .local v7, "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/spongycastle/asn1/x509/Targets;

    move-result-object v9

    .line 126
    .local v9, "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v9

    if-ge v3, v11, :cond_a

    .line 132
    aget-object v5, v9, v3

    .line 133
    .local v5, "t":Lorg/spongycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v8

    .line 134
    .local v8, "targets":[Lorg/spongycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v11, v8

    if-ge v4, v11, :cond_8

    .line 136
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/Target;->getTargetName()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 139
    const/4 v2, 0x1

    .line 130
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    .end local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .restart local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .restart local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    .restart local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 144
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    :cond_a
    if-eqz v2, :cond_0

    .line 149
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_b
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 151
    const/4 v2, 0x0

    .line 153
    .restart local v2    # "found":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v11, v9

    if-ge v3, v11, :cond_e

    .line 155
    aget-object v5, v9, v3

    .line 156
    .restart local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v8

    .line 157
    .restart local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    array-length v11, v8

    if-ge v4, v11, :cond_c

    .line 159
    iget-object v11, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/Target;->getTargetGroup()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 162
    const/4 v2, 0x1

    .line 153
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 157
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 167
    .end local v4    # "j":I
    .end local v5    # "t":Lorg/spongycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/spongycastle/asn1/x509/Target;
    :cond_e
    if-eqz v2, :cond_0

    .line 174
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v6    # "targetInfoExt":Lorg/spongycastle/asn1/x509/Extension;
    .end local v7    # "targetinfo":Lorg/spongycastle/asn1/x509/TargetInformation;
    .end local v9    # "targetss":[Lorg/spongycastle/asn1/x509/Targets;
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
