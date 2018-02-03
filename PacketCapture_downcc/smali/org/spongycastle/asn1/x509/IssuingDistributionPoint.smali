.class public Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

.field private seq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 151
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :pswitch_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    goto :goto_1

    .line 161
    :pswitch_2
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_1

    .line 164
    :pswitch_3
    new-instance v2, Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v4}, Lorg/spongycastle/asn1/x509/ReasonFlags;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/ReasonFlags;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    goto :goto_1

    .line 167
    :pswitch_4
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_1

    .line 170
    :pswitch_5
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_1

    .line 177
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "    "

    .line 260
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 272
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public isIndirectCRL()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public onlyContainsCACerts()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public onlyContainsUserCerts()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "sep":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_0

    .line 229
    const-string v2, "distributionPoint"

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_1

    .line 233
    const-string v2, "onlyContainsUserCerts"

    iget-boolean v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_2

    .line 237
    const-string v2, "onlyContainsCACerts"

    iget-boolean v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_3

    .line 241
    const-string v2, "onlySomeReasons"

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "onlyContainsAttributeCerts"

    iget-boolean v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_5

    .line 249
    const-string v2, "indirectCRL"

    iget-boolean v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
