.class public Lorg/spongycastle/asn1/x9/DHDomainParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lorg/spongycastle/asn1/ASN1Integer;

.field private j:Lorg/spongycastle/asn1/ASN1Integer;

.field private p:Lorg/spongycastle/asn1/ASN1Integer;

.field private q:Lorg/spongycastle/asn1/ASN1Integer;

.field private validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    .line 100
    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 102
    .local v1, "next":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_2

    .line 104
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    .line 105
    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 108
    :cond_2
    if-eqz v1, :cond_3

    .line 110
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    .line 112
    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    .line 35
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 116
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getG()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getJ()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getP()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getQ()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getValidationParms()Lorg/spongycastle/asn1/x9/DHValidationParms;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 147
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
