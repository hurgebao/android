.class public Lui/home/AppsListActivity$AppsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/home/AppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsViewHolder"
.end annotation


# instance fields
.field private binding:Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;


# direct methods
.method public constructor <init>(Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;)V
    .locals 1
    .param p1, "binding"    # Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    .prologue
    .line 196
    invoke-virtual {p1}, Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    iput-object p1, p0, Lui/home/AppsListActivity$AppsViewHolder;->binding:Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lui/home/AppsListActivity$AppsViewHolder;)Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;
    .locals 1
    .param p0, "x0"    # Lui/home/AppsListActivity$AppsViewHolder;

    .prologue
    .line 191
    iget-object v0, p0, Lui/home/AppsListActivity$AppsViewHolder;->binding:Lapp/greyshirts/mitm/databinding/ListitemTargetappBinding;

    return-object v0
.end method
