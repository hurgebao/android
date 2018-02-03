.class public final Lcom/bumptech/glide/util/pool/FactoryPools;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;,
        Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;,
        Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;,
        Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
    }
.end annotation


# static fields
.field private static final EMPTY_RESETTER:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/util/pool/FactoryPools$1;

    invoke-direct {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    return-void
.end method

.method private static build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;",
            ">(",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;)",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "pool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<TT;>;"
    .local p1, "factory":Lcom/bumptech/glide/util/pool/FactoryPools$Factory;, "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<TT;>;"
    invoke-static {}, Lcom/bumptech/glide/util/pool/FactoryPools;->emptyResetter()Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method private static build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter",
            "<TT;>;)",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "pool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<TT;>;"
    .local p1, "factory":Lcom/bumptech/glide/util/pool/FactoryPools$Factory;, "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<TT;>;"
    .local p2, "resetter":Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;, "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter<TT;>;"
    new-instance v0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;-><init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)V

    return-object v0
.end method

.method private static emptyResetter()Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/bumptech/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    return-object v0
.end method

.method public static simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;",
            ">(I",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;)",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "factory":Lcom/bumptech/glide/util/pool/FactoryPools$Factory;, "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<TT;>;"
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools;->build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;",
            ">(I",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;)",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "factory":Lcom/bumptech/glide/util/pool/FactoryPools$Factory;, "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<TT;>;"
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools;->build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafeList()Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafeList(I)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafeList(I)Landroid/support/v4/util/Pools$Pool;
    .locals 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance v1, Lcom/bumptech/glide/util/pool/FactoryPools$2;

    invoke-direct {v1}, Lcom/bumptech/glide/util/pool/FactoryPools$2;-><init>()V

    new-instance v2, Lcom/bumptech/glide/util/pool/FactoryPools$3;

    invoke-direct {v2}, Lcom/bumptech/glide/util/pool/FactoryPools$3;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/pool/FactoryPools;->build(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method
