.class public abstract Landroid/databinding/OnRebindCallback;
.super Ljava/lang/Object;
.source "OnRebindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/databinding/ViewDataBinding;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Landroid/databinding/OnRebindCallback;, "Landroid/databinding/OnRebindCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound(Landroid/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Landroid/databinding/OnRebindCallback;, "Landroid/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    return-void
.end method

.method public onCanceled(Landroid/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/databinding/OnRebindCallback;, "Landroid/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    return-void
.end method

.method public onPreBind(Landroid/databinding/ViewDataBinding;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Landroid/databinding/OnRebindCallback;, "Landroid/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
