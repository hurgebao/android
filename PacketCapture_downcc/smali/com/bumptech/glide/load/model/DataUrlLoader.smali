.class public final Lcom/bumptech/glide/load/model/DataUrlLoader;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;,
        Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;,
        Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final dataDecoder:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader;, "Lcom/bumptech/glide/load/model/DataUrlLoader<TData;>;"
    .local p1, "dataDecoder":Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader;, "Lcom/bumptech/glide/load/model/DataUrlLoader<TData;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/DataUrlLoader;->buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0
.end method

.method public buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 4
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader;, "Lcom/bumptech/glide/load/model/DataUrlLoader<TData;>;"
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    invoke-direct {v2, p1, v3}, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object v0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader;, "Lcom/bumptech/glide/load/model/DataUrlLoader<TData;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DataUrlLoader;->handles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader;, "Lcom/bumptech/glide/load/model/DataUrlLoader<TData;>;"
    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
