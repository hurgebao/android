.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private keySize:I

.field private macEngine:Lorg/spongycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 29
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 34
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 35
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;III)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "pbeType"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 29
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 43
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 44
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    .line 45
    iput p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 46
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 47
    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Map;

    .prologue
    .line 133
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 135
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 126
    .local v0, "out":[B
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 128
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 58
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 63
    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 65
    .local v0, "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    .line 95
    .end local v0    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 96
    return-void

    .line 69
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2

    .line 71
    invoke-static {v0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 75
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    .line 80
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 82
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    instance-of v2, p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    if-eqz v2, :cond_5

    .line 84
    new-instance v2, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    check-cast p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->copyMap(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object v1

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 86
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    if-nez p2, :cond_6

    .line 88
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 92
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_6
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 106
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 112
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 120
    return-void
.end method
