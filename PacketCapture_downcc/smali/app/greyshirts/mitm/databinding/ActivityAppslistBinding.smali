.class public Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityAppslistBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final list:Landroid/support/v7/widget/RecyclerView;

.field public final loading:Landroid/widget/ProgressBar;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final searchText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0076

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0077

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0078

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 82
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mDirtyFlags:J

    .line 28
    const/4 v1, 0x4

    sget-object v2, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->list:Landroid/support/v7/widget/RecyclerView;

    .line 30
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->loading:Landroid/widget/ProgressBar;

    .line 31
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 32
    iget-object v1, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 33
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->searchText:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p0, p2}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->setRootTag(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->invalidateAll()V

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    .line 100
    const-string v0, "layout/activity_appslist_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-instance v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    invoke-direct {v0, p1, p0}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mDirtyFlags:J

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mDirtyFlags:J

    .line 76
    monitor-exit p0

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    monitor-exit p0

    .line 54
    :goto_0
    return v0

    .line 53
    :cond_0
    monitor-exit p0

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    .line 42
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->mDirtyFlags:J

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->requestRebind()V

    .line 45
    return-void

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
