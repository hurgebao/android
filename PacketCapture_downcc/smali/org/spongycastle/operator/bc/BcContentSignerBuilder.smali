.class public abstract Lorg/spongycastle/operator/bc/BcContentSignerBuilder;
.super Ljava/lang/Object;
.source "BcContentSignerBuilder.java"


# instance fields
.field private sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static synthetic access$000(Lorg/spongycastle/operator/bc/BcContentSignerBuilder;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/operator/bc/BcContentSignerBuilder;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
