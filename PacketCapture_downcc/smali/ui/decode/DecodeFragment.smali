.class public final Lui/decode/DecodeFragment;
.super Landroid/support/v4/app/Fragment;
.source "DecodeFragment.kt"

# interfaces
.implements Lui/decode/PacketAdapter$Listener;
.implements Lui/decode/RetainedFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/decode/DecodeFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/decode/DecodeFragment$Companion;


# instance fields
.field private adapter:Lui/decode/PacketAdapter;

.field private retainFragment:Lui/decode/RetainedFragment;

.field private viewList:Landroid/widget/ListView;

.field private viewProgress:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/decode/DecodeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/decode/DecodeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/decode/DecodeFragment;->Companion:Lui/decode/DecodeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private final getArgDecodeArg()Lui/decode/DecodeArg;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getArguments()Landroid/os/Bundle;

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

.method private final getArgHeuristic()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "heuristic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 129
    if-nez p1, :cond_3

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 130
    if-eqz p3, :cond_1

    const-string v4, "fileName"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "outFile":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    .line 143
    .end local v2    # "outFile":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v2, v3

    .line 130
    goto :goto_0

    .line 134
    .restart local v2    # "outFile":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lui/decode/RetainedFragment;->getDecodedV1File()Ljava/io/File;

    move-result-object v1

    .line 135
    .local v1, "inFile":Ljava/io/File;
    :goto_2
    iget-object v4, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lui/decode/PacketAdapter;->getTargetHeader()Lcapt/V1Header;

    move-result-object v0

    .line 136
    .local v0, "header":Lcapt/V1Header;
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcapt/V1Header;->getRawFileOffset()I

    move-result v3

    invoke-virtual {v0}, Lcapt/V1Header;->getRawDataSize()I

    move-result v4

    invoke-virtual {p0, v2, v1, v3, v4}, Lui/decode/DecodeFragment;->saveAsync(Ljava/lang/String;Ljava/io/File;II)V

    .line 142
    .end local v0    # "header":Lcapt/V1Header;
    .end local v1    # "inFile":Ljava/io/File;
    .end local v2    # "outFile":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .restart local v2    # "outFile":Ljava/lang/String;
    :cond_4
    move-object v1, v3

    .line 134
    goto :goto_2

    .restart local v1    # "inFile":Ljava/io/File;
    :cond_5
    move-object v0, v3

    .line 135
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lui/decode/DecodeFragment;->setHasOptionsMenu(Z)V

    .line 56
    new-instance v2, Lui/decode/PacketAdapter;

    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "getActivity()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lui/decode/PacketAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    .line 57
    iget-object v2, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    if-eqz v2, :cond_0

    move-object v1, p0

    check-cast v1, Lui/decode/PacketAdapter$Listener;

    invoke-virtual {v2, v1}, Lui/decode/PacketAdapter;->setListener(Lui/decode/PacketAdapter$Listener;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 60
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v1, "retain"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lui/decode/RetainedFragment;

    iput-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    .line 61
    iget-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-nez v1, :cond_2

    .line 62
    sget-object v1, Lui/decode/RetainedFragment;->Companion:Lui/decode/RetainedFragment$Companion;

    invoke-virtual {v1}, Lui/decode/RetainedFragment$Companion;->newFragment()Lui/decode/RetainedFragment;

    move-result-object v1

    iput-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    const-string v3, "retain"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    iget-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lui/decode/DecodeFragment;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v2

    invoke-direct {p0}, Lui/decode/DecodeFragment;->getArgHeuristic()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lui/decode/RetainedFragment;->startDecoding(Lui/decode/DecodeArg;Z)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    if-nez p1, :cond_1

    .line 66
    iget-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lui/decode/DecodeFragment;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v2

    invoke-direct {p0}, Lui/decode/DecodeFragment;->getArgHeuristic()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lui/decode/RetainedFragment;->startDecoding(Lui/decode/DecodeArg;Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const-string v1, "inflater"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const v1, 0x7f03002a

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lui/decode/DecodeFragment;->viewProgress:Landroid/view/View;

    .line 73
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    .line 74
    iget-object v1, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    iget-object v2, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_1
    iget-object v1, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    :cond_2
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 92
    iget-object v0, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui/decode/PacketAdapter;->close()V

    .line 93
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 87
    iget-object v1, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Lui/decode/RetainedFragment$Listener;

    invoke-virtual {v1, v0}, Lui/decode/RetainedFragment;->setListener(Lui/decode/RetainedFragment$Listener;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 82
    iget-object v0, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lui/decode/RetainedFragment$Listener;

    .end local p0    # "this":Lui/decode/DecodeFragment;
    invoke-virtual {v0, p0}, Lui/decode/RetainedFragment;->setListener(Lui/decode/RetainedFragment$Listener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onSaveDumpClicked()V
    .locals 4

    .prologue
    .line 124
    sget-object v2, Lui/folder/FolderChooserActivity;->Companion:Lui/folder/FolderChooserActivity$Companion;

    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "getActivity()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lui/folder/FolderChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lui/decode/DecodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method public onStateChanged(Lui/decode/RetainedFragment$State;)V
    .locals 8
    .param p1, "state"    # Lui/decode/RetainedFragment$State;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    const-string v4, "state"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v4, Lui/decode/DecodeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lui/decode/RetainedFragment$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 116
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewProgress:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_0
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v4, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lui/decode/RetainedFragment;->getHeaderStates()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, "headerStates":Ljava/util/ArrayList;
    :goto_1
    iget-object v4, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lui/decode/RetainedFragment;->getDecodedV1File()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "v1FileName":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 103
    iget-object v3, p0, Lui/decode/DecodeFragment;->adapter:Lui/decode/PacketAdapter;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, v0}, Lui/decode/PacketAdapter;->setData(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    :cond_2
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewProgress:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_3
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "headerStates":Ljava/util/ArrayList;
    .end local v2    # "v1FileName":Ljava/lang/String;
    :cond_4
    move-object v0, v3

    .line 98
    goto :goto_1

    .restart local v0    # "headerStates":Ljava/util/ArrayList;
    :cond_5
    move-object v2, v3

    .line 99
    goto :goto_2

    .line 109
    .end local v0    # "headerStates":Ljava/util/ArrayList;
    :pswitch_1
    invoke-virtual {p0}, Lui/decode/DecodeFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    const v3, 0x7f0b0084

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v1, v3

    .line 110
    .local v1, "tv":Landroid/widget/TextView;
    :goto_3
    if-eqz v1, :cond_6

    iget-object v3, p0, Lui/decode/DecodeFragment;->retainFragment:Lui/decode/RetainedFragment;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lui/decode/RetainedFragment;->getError()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_7
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewProgress:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_8
    iget-object v3, p0, Lui/decode/DecodeFragment;->viewList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_9
    move-object v1, v3

    .line 109
    goto :goto_3

    .line 110
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_a
    const-string v3, "unknown error"

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_4

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final saveAsync(Ljava/lang/String;Ljava/io/File;II)V
    .locals 6
    .param p1, "outFile"    # Ljava/lang/String;
    .param p2, "inFile"    # Ljava/io/File;
    .param p3, "offset"    # I
    .param p4, "size"    # I

    .prologue
    const-string v1, "outFile"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inFile"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lui/decode/DecodeFragment$saveAsync$task$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lui/decode/DecodeFragment$saveAsync$task$1;-><init>(Lui/decode/DecodeFragment;Ljava/io/File;Ljava/lang/String;II)V

    .line 171
    .local v0, "task":Lui/decode/DecodeFragment$saveAsync$task$1;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lui/decode/DecodeFragment$saveAsync$task$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void
.end method
