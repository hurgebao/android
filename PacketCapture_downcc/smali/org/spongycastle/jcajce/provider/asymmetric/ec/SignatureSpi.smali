.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecPlainDSARP160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSARipeMD160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAnone;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/spongycastle/crypto/DSA;
    .param p3, "encoder"    # Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 54
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 56
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 58
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 46
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 47
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 48
    return-void
.end method
