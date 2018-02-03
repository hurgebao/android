.class public Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
.super Ljava/lang/Object;
.source "JcaContentSignerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    .line 32
    new-instance v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    iget-object v3, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v1

    .line 63
    .local v1, "sig":Ljava/security/Signature;
    iget-object v2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 72
    :goto_0
    new-instance v2, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;

    invoke-direct {v2, p0, v1}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;-><init>(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;)V

    return-object v2

    .line 69
    :cond_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/spongycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create signer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    .line 46
    return-object p0
.end method
