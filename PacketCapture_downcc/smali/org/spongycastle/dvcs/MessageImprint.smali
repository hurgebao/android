.class public Lorg/spongycastle/dvcs/MessageImprint;
.super Ljava/lang/Object;
.source "MessageImprint.java"


# instance fields
.field private final messageImprint:Lorg/spongycastle/asn1/x509/DigestInfo;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-ne p1, p0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 31
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 26
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/dvcs/MessageImprint;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lorg/spongycastle/dvcs/MessageImprint;->messageImprint:Lorg/spongycastle/asn1/x509/DigestInfo;

    check-cast p1, Lorg/spongycastle/dvcs/MessageImprint;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/spongycastle/dvcs/MessageImprint;->messageImprint:Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/DigestInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 31
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/dvcs/MessageImprint;->messageImprint:Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->hashCode()I

    move-result v0

    return v0
.end method
