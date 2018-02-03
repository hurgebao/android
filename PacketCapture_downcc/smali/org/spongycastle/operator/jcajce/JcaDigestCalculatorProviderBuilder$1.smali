.class Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;


# virtual methods
.method public get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;
    .locals 6
    .param p1, "algorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-static {v3}, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->access$000(Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lorg/spongycastle/operator/jcajce/OperatorHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;->createDigest(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    .local v0, "dig":Ljava/security/MessageDigest;
    new-instance v2, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    iget-object v3, p0, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;-><init>(Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v2, "stream":Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    new-instance v3, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;

    invoke-direct {v3, p0, p1, v2}, Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;-><init>(Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;)V

    return-object v3

    .line 55
    .end local v0    # "dig":Ljava/security/MessageDigest;
    .end local v2    # "stream":Lorg/spongycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/spongycastle/operator/OperatorCreationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception on setup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
