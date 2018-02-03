.class Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMSDigestAuthenticatedSecureReadable"
.end annotation


# instance fields
.field private digestCalculator:Lorg/spongycastle/operator/DigestCalculator;


# direct methods
.method static synthetic access$000(Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;)Lorg/spongycastle/operator/DigestCalculator;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    return-object v0
.end method
