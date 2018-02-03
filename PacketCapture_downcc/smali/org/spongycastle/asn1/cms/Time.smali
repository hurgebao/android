.class public Lorg/spongycastle/asn1/cms/Time;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field time:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 7
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 72
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 73
    .local v2, "tz":Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "year":I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_0

    const/16 v4, 0x801

    if-le v3, v4, :cond_1

    .line 82
    :cond_0
    new-instance v4, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/spongycastle/asn1/cms/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v4, Lorg/spongycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/spongycastle/asn1/cms/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
