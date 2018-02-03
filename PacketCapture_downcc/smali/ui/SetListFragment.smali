.class public final Lui/SetListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SetListFragment.kt"


# instance fields
.field private final LOADER_CAPTURE_SET:I

.field private adapter:Lui/SetListAdapter;

.field private final loaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private viewList:Landroid/widget/ListView;

.field private viewProgress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Lui/SetListFragment$loaderCallback$1;

    invoke-direct {v0, p0}, Lui/SetListFragment$loaderCallback$1;-><init>(Lui/SetListFragment;)V

    check-cast v0, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iput-object v0, p0, Lui/SetListFragment;->loaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lui/SetListFragment;)Lui/SetListAdapter;
    .locals 1
    .param p0, "$this"    # Lui/SetListFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lui/SetListFragment;->adapter:Lui/SetListAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lui/SetListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lui/SetListFragment;->LOADER_CAPTURE_SET:I

    const/4 v2, 0x0

    iget-object v3, p0, Lui/SetListFragment;->loaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui/SetListFragment;->setHasOptionsMenu(Z)V

    .line 34
    new-instance v1, Lui/SetListAdapter;

    invoke-virtual {p0}, Lui/SetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "getActivity()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lui/SetListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lui/SetListFragment;->adapter:Lui/SetListAdapter;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v3, "inflater"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const v3, 0x7f030028

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lui/SetListFragment;->viewProgress:Landroid/view/View;

    .line 40
    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    .line 41
    iget-object v4, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lui/SetListFragment;->adapter:Lui/SetListAdapter;

    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    :cond_0
    iget-object v3, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    const v4, 0x7f0b0084

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 43
    :cond_1
    iget-object v4, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    new-instance v3, Lui/SetListFragment$onCreateView$1;

    invoke-direct {v3, p0}, Lui/SetListFragment$onCreateView$1;-><init>(Lui/SetListFragment;)V

    check-cast v3, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    :cond_2
    invoke-virtual {p0}, Lui/SetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    iget-object v4, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    new-instance v3, Lui/SetListFragment$onCreateView$touchListener$1;

    invoke-direct {v3, p0, v0}, Lui/SetListFragment$onCreateView$touchListener$1;-><init>(Lui/SetListFragment;Landroid/content/Context;)V

    check-cast v3, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    invoke-direct {v1, v4, v3}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    .line 87
    .local v1, "touchListener":Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
    iget-object v4, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v4, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    :cond_3
    iget-object v3, p0, Lui/SetListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    :cond_4
    return-object v2
.end method
