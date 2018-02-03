.class final Lorg/spongycastle/pkcs/bc/PKCS12PBEUtils$1;
.super Ljava/lang/Object;
.source "PKCS12PBEUtils.java"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pkcs/bc/PKCS12PBEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hMac:Lorg/spongycastle/crypto/macs/HMac;


# virtual methods
.method public getMac()[B
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lorg/spongycastle/pkcs/bc/PKCS12PBEUtils$1;->val$hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    new-array v0, v1, [B

    .line 118
    .local v0, "res":[B
    iget-object v1, p0, Lorg/spongycastle/pkcs/bc/PKCS12PBEUtils$1;->val$hMac:Lorg/spongycastle/crypto/macs/HMac;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 120
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lorg/spongycastle/crypto/io/MacOutputStream;

    iget-object v1, p0, Lorg/spongycastle/pkcs/bc/PKCS12PBEUtils$1;->val$hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/io/MacOutputStream;-><init>(Lorg/spongycastle/crypto/Mac;)V

    return-object v0
.end method
