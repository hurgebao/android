.class public abstract Lorg/spongycastle/asn1/ASN1Null;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Null.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 60
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "NULL"

    return-object v0
.end method
