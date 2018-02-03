.class public Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "JcePKCSPBEInputDecryptorProviderBuilder.java"


# instance fields
.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

.field private keySizeProvider:Lorg/spongycastle/operator/SecretKeySizeProvider;

.field private wrongPKCS12Zero:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->wrongPKCS12Zero:Z

    .line 40
    sget-object v0, Lorg/spongycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/spongycastle/operator/SecretKeySizeProvider;

    iput-object v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->keySizeProvider:Lorg/spongycastle/operator/SecretKeySizeProvider;

    .line 44
    return-void
.end method
