.class public Lorg/spongycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;


# instance fields
.field private certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 217
    if-ne p1, p0, :cond_0

    .line 219
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    .line 222
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    if-nez v1, :cond_1

    .line 224
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 227
    check-cast v0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    .line 229
    .local v0, "other":Lorg/spongycastle/pkcs/PKCS10CertificationRequest;
    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    return-object v0
.end method
