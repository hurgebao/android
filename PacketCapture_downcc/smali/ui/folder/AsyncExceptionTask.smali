.class public abstract Lui/folder/AsyncExceptionTask;
.super Landroid/os/AsyncTask;
.source "AsyncExceptionTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT1;TT2;TT3;>;"
    }
.end annotation


# instance fields
.field private ex:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT1;)TT3;"
        }
    .end annotation

    .prologue
    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    nop

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lui/folder/AsyncExceptionTask;->doInBackground2([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 14
    :goto_0
    return-object v1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lui/folder/AsyncExceptionTask;->ex:Ljava/lang/Exception;

    .line 14
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract doInBackground2([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT1;)TT3;"
        }
    .end annotation
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT3;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lui/folder/AsyncExceptionTask;->ex:Ljava/lang/Exception;

    invoke-virtual {p0, p1, v0}, Lui/folder/AsyncExceptionTask;->onPostExecute2(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 20
    return-void
.end method

.method public abstract onPostExecute2(Ljava/lang/Object;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT3;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
