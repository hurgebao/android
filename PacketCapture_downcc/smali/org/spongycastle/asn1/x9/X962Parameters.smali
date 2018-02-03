.class public Lorg/spongycastle/asn1/x9/X962Parameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 48
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 54
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 1
    .param p1, "ecParameters"    # Lorg/spongycastle/asn1/x9/X9ECParameters;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x9/X962Parameters;

    .line 26
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x9/X962Parameters;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Primitive;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    move-object p0, v0

    goto :goto_0

    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public isImplicitlyCA()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Null;

    return v0
.end method

.method public isNamedCurve()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->params:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
