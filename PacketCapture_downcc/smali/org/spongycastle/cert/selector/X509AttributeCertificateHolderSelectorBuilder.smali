.class public Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolderSelectorBuilder.java"


# instance fields
.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    .line 41
    return-void
.end method
