.class public Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OCSPResponseStatus.java"


# instance fields
.field private value:Lorg/spongycastle/asn1/ASN1Enumerated;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/ASN1Enumerated;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;-><init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method
