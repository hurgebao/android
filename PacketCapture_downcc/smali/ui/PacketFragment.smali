.class public final Lui/PacketFragment;
.super Landroid/support/v4/app/Fragment;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/PacketFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/PacketFragment$Companion;


# instance fields
.field private adapter:Lui/PacketAdapter;

.field private isHexMode:Z

.field private viewList:Landroid/widget/ListView;

.field private viewProgress:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/PacketFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/PacketFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/PacketFragment;->Companion:Lui/PacketFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lui/PacketFragment;)Lui/PacketAdapter;
    .locals 1
    .param p0, "$this"    # Lui/PacketFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lui/PacketFragment;->adapter:Lui/PacketAdapter;

    return-object v0
.end method

.method private final getArgDecodeArg()Lui/decode/DecodeArg;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lui/PacketFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "decodeArg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ui.decode.DecodeArg"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lui/decode/DecodeArg;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    new-instance v0, Lui/PacketFragment$onActivityCreated$loader$1;

    invoke-direct {v0, p0}, Lui/PacketFragment$onActivityCreated$loader$1;-><init>(Lui/PacketFragment;)V

    .line 116
    .local v0, "loader":Lui/PacketFragment$onActivityCreated$loader$1;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lui/PacketFragment;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v3

    invoke-virtual {v3}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lui/PacketFragment$onActivityCreated$loader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui/PacketFragment;->setHasOptionsMenu(Z)V

    .line 49
    new-instance v1, Lui/PacketAdapter;

    invoke-virtual {p0}, Lui/PacketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "getActivity()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    new-instance v2, Lcapt/CaptReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lui/PacketFragment;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v4

    invoke-virtual {v4}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcapt/CaptReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0, v2}, Lui/PacketAdapter;-><init>(Landroid/content/Context;Lcapt/CaptReader;)V

    iput-object v1, p0, Lui/PacketFragment;->adapter:Lui/PacketAdapter;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "isHexMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lui/PacketFragment;->isHexMode:Z

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    .line 66
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const v2, 0x7f0d0001

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    const v2, 0x7f0b0012

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 72
    .local v1, "text":Landroid/view/MenuItem;
    const v2, 0x7f0b00b6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, "hex":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lui/PacketFragment;->isHexMode:Z

    if-eqz v2, :cond_2

    .line 74
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 77
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1
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
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lui/PacketFragment;->viewProgress:Landroid/view/View;

    .line 59
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lui/PacketFragment;->viewList:Landroid/widget/ListView;

    .line 60
    iget-object v2, p0, Lui/PacketFragment;->viewList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lui/PacketFragment;->adapter:Lui/PacketAdapter;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lui/PacketFragment;->viewList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 62
    :cond_1
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0}, Lui/PacketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 90
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    :goto_1
    const v2, 0x7f0b00b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v0, p0, Lui/PacketFragment;->adapter:Lui/PacketAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lui/PacketAdapter;->setHexMode(Z)V

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    move v0, v1

    .line 94
    goto :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    :cond_4
    const v2, 0x7f0b0012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lui/PacketFragment;->adapter:Lui/PacketAdapter;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lui/PacketAdapter;->setHexMode(Z)V

    .line 98
    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_6
    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    if-eqz p1, :cond_0

    const-string v0, "isHexMode"

    iget-boolean v1, p0, Lui/PacketFragment;->isHexMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    :cond_0
    return-void
.end method
