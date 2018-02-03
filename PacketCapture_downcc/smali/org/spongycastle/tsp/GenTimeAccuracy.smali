.class public Lorg/spongycastle/tsp/GenTimeAccuracy;
.super Ljava/lang/Object;
.source "GenTimeAccuracy.java"


# instance fields
.field private accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;


# direct methods
.method private format(I)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 48
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeComponent(Lorg/spongycastle/asn1/ASN1Integer;)I
    .locals 1
    .param p1, "time"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMicros()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/Accuracy;->getMicros()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/spongycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/Accuracy;->getMillis()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/spongycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/Accuracy;->getSeconds()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/spongycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getMillis()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/spongycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/tsp/GenTimeAccuracy;->getMicros()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/spongycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
