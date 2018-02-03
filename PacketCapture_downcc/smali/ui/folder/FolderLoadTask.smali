.class public Lui/folder/FolderLoadTask;
.super Landroid/os/AsyncTask;
.source "FolderLoadTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "loadDir"    # Ljava/io/File;

    .prologue
    const-string v0, "loadDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lui/folder/FolderLoadTask;->loadDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lui/folder/FolderLoadTask;->doInBackground([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p1, "params"    # [Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    const-string v2, "params"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lui/folder/FolderLoadTask;->loadDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-object v1

    .line 13
    :cond_1
    iget-object v3, p0, Lui/folder/FolderLoadTask;->loadDir:Ljava/io/File;

    sget-object v2, Lui/folder/FolderLoadTask$doInBackground$files$1;->INSTANCE:Lui/folder/FolderLoadTask$doInBackground$files$1;

    check-cast v2, Ljava/io/FilenameFilter;

    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 14
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 17
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "files":[Ljava/io/File;
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/io/File;

    .local v1, "sorted":[Ljava/io/File;
    move-object v2, v1

    .line 18
    check-cast v2, [Ljava/lang/Object;

    sget-object v3, Lui/folder/FolderLoadTask$doInBackground$1;->INSTANCE:Lui/folder/FolderLoadTask$doInBackground$1;

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public final getLoadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lui/folder/FolderLoadTask;->loadDir:Ljava/io/File;

    return-object v0
.end method
