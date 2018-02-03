.class public Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/UnitModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<TModel;TModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;, "Lcom/bumptech/glide/load/model/UnitModelLoader$Factory<TModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "multiFactory"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;TModel;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;, "Lcom/bumptech/glide/load/model/UnitModelLoader$Factory<TModel;>;"
    new-instance v0, Lcom/bumptech/glide/load/model/UnitModelLoader;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/UnitModelLoader;-><init>()V

    return-object v0
.end method
