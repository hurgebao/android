.class public final Lui/StreamListFragment$loaderCallback$1;
.super Ljava/lang/Object;
.source "StreamListFragment.kt"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/StreamListFragment;-><init>()V
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
.field final synthetic this$0:Lui/StreamListFragment;


# direct methods
.method constructor <init>(Lui/StreamListFragment;)V
    .locals 0
    .param p1, "$outer"    # Lui/StreamListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
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
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 82
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    .line 83
    .local v2, "baseUri":Landroid/net/Uri;
    iget-object v0, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v0}, Lui/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "getActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lui/SettingsActivityKt;->showPacketsFromThisApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "selection":Ljava/lang/String;
    new-array v7, v8, [Ljava/lang/String;

    iget-object v0, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v0}, Lui/StreamListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getArguments().getString(\"setId\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v7, v3

    .line 213
    .local v7, "elements$iv":[Ljava/lang/Object;
    move-object v5, v7

    .line 91
    .local v5, "selectionArgs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "order":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v1}, Lui/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v4/content/Loader;

    return-object v0

    .line 89
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "order":Ljava/lang/String;
    .end local v7    # "elements$iv":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PKG_NAME_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4    # "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v0}, Lui/StreamListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getArguments().getString(\"setId\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v7, v3

    const-string v0, "app.greyshirts.sslcapture"

    aput-object v0, v7, v8

    .line 214
    .restart local v7    # "elements$iv":[Ljava/lang/Object;
    move-object v5, v7

    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0
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
    .line 97
    iget-object v0, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-static {v0}, Lui/StreamListFragment;->access$getAdapter$p(Lui/StreamListFragment;)Lui/StreamListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lui/StreamListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 98
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lui/StreamListFragment$loaderCallback$1;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 101
    iget-object v0, p0, Lui/StreamListFragment$loaderCallback$1;->this$0:Lui/StreamListFragment;

    invoke-static {v0}, Lui/StreamListFragment;->access$getAdapter$p(Lui/StreamListFragment;)Lui/StreamListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/StreamListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 102
    :cond_0
    return-void
.end method
