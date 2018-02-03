.class public abstract Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "BaseWrapCipher.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeType:I

.field protected wrapEngine:Lorg/spongycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 66
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    .line 53
    iput v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    .line 54
    iput v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    .line 58
    iput-object v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 60
    iput-object v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Wrapper;)V
    .locals 1
    .param p1, "wrapEngine"    # Lorg/spongycastle/crypto/Wrapper;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/spongycastle/crypto/Wrapper;I)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Wrapper;I)V
    .locals 6
    .param p1, "wrapEngine"    # Lorg/spongycastle/crypto/Wrapper;
    .param p2, "ivSize"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    .line 53
    iput v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    .line 54
    iput v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    .line 58
    iput-object v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 60
    iput-object v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    .line 79
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    .line 80
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    .line 81
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 96
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    :cond_0
    if-nez v1, :cond_1

    .line 215
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :catch_0
    move-exception v2

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 220
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 221
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 133
    instance-of v4, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v4, :cond_3

    move-object v1, p2

    .line 135
    check-cast v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 137
    .local v1, "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    instance-of v4, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 155
    .end local v1    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    instance-of v4, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v4, :cond_0

    move-object v0, p3

    .line 157
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 158
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v2, v3

    .line 161
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v4, v2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    if-eqz v4, :cond_5

    .line 163
    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    .line 164
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 165
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {v3, v2, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 168
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_1
    if-eqz p4, :cond_4

    .line 170
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v3, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 173
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 185
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "eeek!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    :goto_3
    return-void

    .line 141
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v1    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 147
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "PBE requires PBE parameters to be set."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v1    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 176
    :pswitch_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 179
    :pswitch_1
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 183
    :pswitch_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "engine only valid for wrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    move-object v2, v3

    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_2

    :cond_5
    move-object v3, v2

    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_1

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 10
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 314
    :try_start_0
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    if-nez v6, :cond_1

    .line 316
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {p0, p1, v6, v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 336
    .local v2, "encoded":[B
    :goto_0
    const/4 v6, 0x3

    if-ne p3, v6, :cond_2

    .line 338
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 378
    :cond_0
    :goto_1
    return-object v5

    .line 320
    .end local v2    # "encoded":[B
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    const/4 v7, 0x0

    array-length v8, p1

    invoke-interface {v6, p1, v7, v8}, Lorg/spongycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .restart local v2    # "encoded":[B
    goto :goto_0

    .line 323
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    .end local v0    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v1

    .line 333
    .local v1, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 340
    .end local v1    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v2    # "encoded":[B
    :cond_2
    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne p3, v9, :cond_3

    .line 348
    :try_start_2
    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 350
    .local v3, "in":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v3}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 352
    .local v5, "privKey":Ljava/security/PrivateKey;
    if-nez v5, :cond_0

    .line 358
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 361
    .end local v3    # "in":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    :catch_3
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Invalid key encoding."

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v6, "SC"

    invoke-static {p2, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 372
    .local v4, "kf":Ljava/security/KeyFactory;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_4

    .line 374
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto/16 :goto_1

    .line 376
    :cond_4
    if-ne p3, v9, :cond_5

    .line 378
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    goto/16 :goto_1

    .line 381
    .end local v4    # "kf":Ljava/security/KeyFactory;
    :catch_4
    move-exception v0

    .line 383
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 385
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_5
    move-exception v1

    .line 387
    .local v1, "e2":Ljava/security/spec/InvalidKeySpecException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 390
    .end local v1    # "e2":Ljava/security/spec/InvalidKeySpecException;
    .restart local v4    # "kf":Ljava/security/KeyFactory;
    :cond_5
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 283
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    .line 285
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    if-nez v2, :cond_1

    .line 292
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object v2

    .line 296
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/spongycastle/crypto/Wrapper;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/spongycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
