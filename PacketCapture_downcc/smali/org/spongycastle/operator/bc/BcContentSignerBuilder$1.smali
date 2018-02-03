.class Lorg/spongycastle/operator/bc/BcContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "BcContentSignerBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/operator/bc/BcContentSignerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private stream:Lorg/spongycastle/operator/bc/BcSignerOutputStream;

.field final synthetic this$0:Lorg/spongycastle/operator/bc/BcContentSignerBuilder;


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcContentSignerBuilder$1;->this$0:Lorg/spongycastle/operator/bc/BcContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/operator/bc/BcContentSignerBuilder;->access$000(Lorg/spongycastle/operator/bc/BcContentSignerBuilder;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/spongycastle/operator/bc/BcSignerOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/spongycastle/operator/bc/BcSignerOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/operator/bc/BcSignerOutputStream;->getSignature()[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Lorg/spongycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
