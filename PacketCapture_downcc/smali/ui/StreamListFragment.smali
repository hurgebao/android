.class public final Lui/StreamListFragment;
.super Landroid/support/v4/app/Fragment;
.source "StreamListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/StreamListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/StreamListFragment$Companion;


# instance fields
.field private final LOADER_CAPTURE_SET:I

.field private adapter:Lui/StreamListAdapter;

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/StreamListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/StreamListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/StreamListFragment;->Companion:Lui/StreamListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 80
    new-instance v0, Lui/StreamListFragment$loaderCallback$1;

    invoke-direct {v0, p0}, Lui/StreamListFragment$loaderCallback$1;-><init>(Lui/StreamListFragment;)V

    check-cast v0, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iput-object v0, p0, Lui/StreamListFragment;->loaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lui/StreamListFragment;)Lui/StreamListAdapter;
    .locals 1
    .param p0, "$this"    # Lui/StreamListFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lui/StreamListFragment;->adapter:Lui/StreamListAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lui/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lui/StreamListFragment;->LOADER_CAPTURE_SET:I

    const/4 v2, 0x0

    iget-object v3, p0, Lui/StreamListFragment;->loaderCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui/StreamListFragment;->setHasOptionsMenu(Z)V

    .line 53
    new-instance v1, Lui/StreamListAdapter;

    invoke-virtual {p0}, Lui/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "getActivity()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lui/StreamListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lui/StreamListFragment;->adapter:Lui/StreamListAdapter;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "inflater"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lui/StreamListFragment;->viewProgress:Landroid/view/View;

    .line 59
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lui/StreamListFragment;->viewList:Landroid/widget/ListView;

    .line 60
    iget-object v2, p0, Lui/StreamListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lui/StreamListFragment;->adapter:Lui/StreamListAdapter;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lui/StreamListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 62
    :cond_1
    iget-object v2, p0, Lui/StreamListFragment;->viewList:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    new-instance v1, Lui/StreamListFragment$onCreateView$1;

    invoke-direct {v1, p0}, Lui/StreamListFragment$onCreateView$1;-><init>(Lui/StreamListFragment;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    :cond_2
    return-object v0
.end method
