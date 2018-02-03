.class public Lorg/spongycastle/cert/jcajce/JcaX509ExtensionUtils;
.super Lorg/spongycastle/cert/X509ExtensionUtils;
.source "JcaX509ExtensionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/jcajce/JcaX509ExtensionUtils$SHA1DigestCalculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509ExtensionUtils$SHA1DigestCalculator;

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/jcajce/JcaX509ExtensionUtils$SHA1DigestCalculator;-><init>(Ljava/security/MessageDigest;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/X509ExtensionUtils;-><init>(Lorg/spongycastle/operator/DigestCalculator;)V

    .line 41
    return-void
.end method
