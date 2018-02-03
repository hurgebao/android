.class public Lorg/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator;
.super Ljava/lang/Object;
.source "JcePKMACValuesCalculator.java"

# interfaces
.implements Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;


# instance fields
.field private helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

.field private mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator;->helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public calculateMac([B[B)[B
    .locals 4
    .param p1, "pwd"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator;->mac:Ljavax/crypto/Mac;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lorg/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 62
    iget-object v1, p0, Lorg/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure in setup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
