.class public Lorg/spongycastle/operator/BufferingContentSigner;
.super Ljava/lang/Object;
.source "BufferingContentSigner.java"

# interfaces
.implements Lorg/spongycastle/operator/ContentSigner;


# instance fields
.field private final contentSigner:Lorg/spongycastle/operator/ContentSigner;

.field private final output:Ljava/io/OutputStream;


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/spongycastle/operator/BufferingContentSigner;->contentSigner:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/operator/BufferingContentSigner;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/operator/BufferingContentSigner;->contentSigner:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    return-object v0
.end method
