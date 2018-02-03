.class Lorg/spongycastle/cms/jcajce/JceKEKAuthenticatedRecipient$1;
.super Ljava/lang/Object;
.source "JceKEKAuthenticatedRecipient.java"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/jcajce/JceKEKAuthenticatedRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dataMac:Ljavax/crypto/Mac;


# virtual methods
.method public getMac()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/cms/jcajce/JceKEKAuthenticatedRecipient$1;->val$dataMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/io/MacOutputStream;

    iget-object v1, p0, Lorg/spongycastle/cms/jcajce/JceKEKAuthenticatedRecipient$1;->val$dataMac:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
