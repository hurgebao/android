.class final Lui/decode/PacketAdapter$handleMoreClick$1;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/PacketAdapter;->handleMoreClick(Lui/decode/PacketAdapter$Tag;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic $tag:Lui/decode/PacketAdapter$Tag;

.field final synthetic this$0:Lui/decode/PacketAdapter;


# direct methods
.method constructor <init>(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;I)V
    .locals 0

    iput-object p1, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    iput-object p2, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->$tag:Lui/decode/PacketAdapter$Tag;

    iput p3, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "it"    # Landroid/view/MenuItem;

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 509
    :pswitch_0
    iget-object v2, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-virtual {v2}, Lui/decode/PacketAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v1, Landroid/content/ClipboardManager;

    .line 510
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "packet data"

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->$tag:Lui/decode/PacketAdapter$Tag;

    invoke-virtual {v3}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 511
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 512
    iget-object v2, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-virtual {v2}, Lui/decode/PacketAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v2, "Copied to clipboard"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 515
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :pswitch_1
    iget-object v3, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    iget-object v2, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-static {v2}, Lui/decode/PacketAdapter;->access$getItems$p(Lui/decode/PacketAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v4, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui/decode/ListViewItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lui/decode/PacketAdapter;->setTargetHeader(Lcapt/V1Header;)V

    .line 516
    iget-object v2, p0, Lui/decode/PacketAdapter$handleMoreClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-virtual {v2}, Lui/decode/PacketAdapter;->getListener()Lui/decode/PacketAdapter$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lui/decode/PacketAdapter$Listener;->onSaveDumpClicked()V

    goto :goto_0

    .line 515
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
