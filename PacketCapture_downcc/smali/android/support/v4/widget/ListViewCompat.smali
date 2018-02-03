.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 5
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .prologue
    .line 36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 42
    .local v0, "firstPosition":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 46
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, p1

    .line 52
    .local v2, "newTop":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
