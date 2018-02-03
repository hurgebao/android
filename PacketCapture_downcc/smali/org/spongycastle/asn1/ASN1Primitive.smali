.class public abstract Lorg/spongycastle/asn1/ASN1Primitive;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    return-void
.end method

.method public static fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 30
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 32
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "cannot recognise object in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method abstract asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodedLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 40
    if-ne p0, p1, :cond_1

    .line 45
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method

.method abstract isConstructed()Z
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .prologue
    .line 70
    return-object p0
.end method
