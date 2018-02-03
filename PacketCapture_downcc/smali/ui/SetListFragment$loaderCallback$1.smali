.class public final Lui/SetListFragment$loaderCallback$1;
.super Ljava/lang/Object;
.source "SetListFragment.kt"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SetListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/SetListFragment;


# direct methods
.method constructor <init>(Lui/SetListFragment;)V
    .locals 0
    .param p1, "$outer"    # Lui/SetListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lui/SetListFragment$loaderCallback$1;->this$0:Lui/SetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    .line 103
    .local v2, "baseUri":Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->_ID:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_START_TIME:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x3

    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_NUM:Ljava/lang/String;

    aput-object v1, v7, v0

    .local v7, "elements$iv":[Ljava/lang/Object;
    move-object v3, v7

    .line 108
    .local v3, "projection":[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lui/SetListFragment$loaderCallback$1;->this$0:Lui/SetListFragment;

    invoke-virtual {v1}, Lui/SetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_START_TIME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "loader"    # Landroid/support/v4/content/Loader;
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lui/SetListFragment$loaderCallback$1;->this$0:Lui/SetListFragment;

    invoke-static {v0}, Lui/SetListFragment;->access$getAdapter$p(Lui/SetListFragment;)Lui/SetListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lui/SetListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 113
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lui/SetListFragment$loaderCallback$1;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .param p1, "loader"    # Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lui/SetListFragment$loaderCallback$1;->this$0:Lui/SetListFragment;

    invoke-static {v0}, Lui/SetListFragment;->access$getAdapter$p(Lui/SetListFragment;)Lui/SetListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/SetListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 117
    :cond_0
    return-void
.end method
