.class Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile dhDefaultParams:Ljava/lang/Object;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 18
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 20
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "SC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 5
    .param p1, "keySize"    # I

    .prologue
    .line 137
    iget-object v4, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "params":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 143
    :cond_0
    instance-of v4, v1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 145
    check-cast v2, Ljavax/crypto/spec/DHParameterSpec;

    .line 147
    .local v2, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 165
    .end local v1    # "params":Ljava/lang/Object;
    .end local v2    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    return-object v2

    .line 152
    .restart local v1    # "params":Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_3

    .line 154
    check-cast v1, [Ljavax/crypto/spec/DHParameterSpec;

    .end local v1    # "params":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, [Ljavax/crypto/spec/DHParameterSpec;

    .line 156
    .local v3, "specs":[Ljavax/crypto/spec/DHParameterSpec;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-eq v0, v4, :cond_3

    .line 158
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 160
    aget-object v2, v3, v0

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    .end local v3    # "specs":[Ljavax/crypto/spec/DHParameterSpec;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    .line 127
    .local v0, "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    .line 132
    .end local v0    # "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .restart local v0    # "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method
