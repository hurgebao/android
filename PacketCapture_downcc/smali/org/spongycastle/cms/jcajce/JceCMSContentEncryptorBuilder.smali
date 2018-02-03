.class public Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.super Ljava/lang/Object;
.source "JceCMSContentEncryptorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;
    }
.end annotation


# static fields
.field private static final KEY_SIZE_PROVIDER:Lorg/spongycastle/operator/SecretKeySizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/spongycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/spongycastle/operator/SecretKeySizeProvider;

    sput-object v0, Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/spongycastle/operator/SecretKeySizeProvider;

    return-void
.end method
