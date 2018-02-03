.class public Lcom/bumptech/glide/load/model/StringLoader;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;
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
.field private final uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TData;>;"
    .local p1, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 22
    return-void
.end method

.method private static parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const/4 v1, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {p0}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 44
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static toFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TData;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/StringLoader;->buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0
.end method

.method public buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 2
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
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TData;>;"
    invoke-static {p1}, Lcom/bumptech/glide/load/model/StringLoader;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TData;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/StringLoader;->handles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TData;>;"
    const/4 v0, 0x1

    return v0
.end method
