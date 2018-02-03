.class Landroid/databinding/ViewDataBinding$WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$ObservableReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public unregister()Z
    .locals 3

    .prologue
    .line 1265
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    const/4 v0, 0x0

    .line 1266
    .local v0, "unregistered":Z
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/databinding/ViewDataBinding$ObservableReference;->removeListener(Ljava/lang/Object;)V

    .line 1268
    const/4 v0, 0x1

    .line 1270
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 1271
    return v0
.end method
