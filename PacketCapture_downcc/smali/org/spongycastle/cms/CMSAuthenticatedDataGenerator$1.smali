.class Lorg/spongycastle/cms/CMSAuthenticatedDataGenerator$1;
.super Ljava/lang/Object;
.source "CMSAuthenticatedDataGenerator.java"

# interfaces
.implements Lorg/spongycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSAuthenticatedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$digestCalculator:Lorg/spongycastle/operator/DigestCalculator;


# virtual methods
.method public get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;
    .locals 1
    .param p1, "digestAlgorithmIdentifier"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataGenerator$1;->val$digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    return-object v0
.end method
