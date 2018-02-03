.class public Lui/CaptureLoader;
.super Landroid/os/AsyncTask;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcapt/CaptHeader;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lui/CaptureLoader;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "params"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcapt/CaptReader;

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcapt/CaptReader;-><init>(Ljava/io/File;)V

    .line 124
    .local v1, "reader":Lcapt/CaptReader;
    invoke-virtual {v1}, Lcapt/CaptReader;->readHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    .local v0, "headers":Ljava/util/ArrayList;
    return-object v0
.end method
