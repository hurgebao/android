.class public Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;
.super Ljava/lang/Object;
.source "JcePEMEncryptorBuilder.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static synthetic access$000(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    .prologue
    .line 13
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    .prologue
    .line 13
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-object v0
.end method
