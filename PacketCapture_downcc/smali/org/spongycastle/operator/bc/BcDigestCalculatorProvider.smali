.class public Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;
.super Ljava/lang/Object;
.source "BcDigestCalculatorProvider.java"

# interfaces
.implements Lorg/spongycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    }
.end annotation


# instance fields
.field private digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lorg/spongycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/spongycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;

    .line 45
    return-void
.end method


# virtual methods
.method public get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;
    .locals 3
    .param p1, "algorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v2, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;

    invoke-interface {v2, p1}, Lorg/spongycastle/operator/bc/BcDigestProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/ExtendedDigest;

    move-result-object v0

    .line 24
    .local v0, "dig":Lorg/spongycastle/crypto/Digest;
    new-instance v1, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;-><init>(Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;Lorg/spongycastle/crypto/Digest;)V

    .line 26
    .local v1, "stream":Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    new-instance v2, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;

    invoke-direct {v2, p0, p1, v1}, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;-><init>(Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;)V

    return-object v2
.end method
