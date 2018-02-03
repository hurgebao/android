.class final Lui/decode/PacketAdapter$handleDecoderNameClick$1;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/PacketAdapter;->handleDecoderNameClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lui/decode/ListViewItem;

.field final synthetic this$0:Lui/decode/PacketAdapter;


# direct methods
.method constructor <init>(Lui/decode/PacketAdapter;Lui/decode/ListViewItem;)V
    .locals 0

    iput-object p1, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->this$0:Lui/decode/PacketAdapter;

    iput-object p2, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "it"    # Landroid/view/MenuItem;

    .prologue
    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->this$0:Lui/decode/PacketAdapter;

    iget-object v1, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-static {v1}, Lui/decode/PacketAdapter;->access$getHeaders$p(Lui/decode/PacketAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v1}, Lui/decode/ListviewitemKt;->BuildListViewItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lui/decode/PacketAdapter;->access$setItems$p(Lui/decode/PacketAdapter;Ljava/util/ArrayList;)V

    .line 496
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->this$0:Lui/decode/PacketAdapter;

    invoke-virtual {v0}, Lui/decode/PacketAdapter;->notifyDataSetChanged()V

    .line 497
    const/4 v0, 0x1

    return v0

    .line 482
    :pswitch_0
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcapt/V1Header;->getPrettyLabel()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "IMAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lui/decode/ViewType;->IMAGE:Lui/decode/ViewType;

    invoke-virtual {v0, v1}, Lui/decode/V1HeaderState;->setViewType(Lui/decode/ViewType;)V

    goto :goto_0

    .line 482
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 485
    :cond_3
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lui/decode/ViewType;->PRETTY:Lui/decode/ViewType;

    invoke-virtual {v0, v1}, Lui/decode/V1HeaderState;->setViewType(Lui/decode/ViewType;)V

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lui/decode/ViewType;->TEXT:Lui/decode/ViewType;

    invoke-virtual {v0, v1}, Lui/decode/V1HeaderState;->setViewType(Lui/decode/ViewType;)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lui/decode/PacketAdapter$handleDecoderNameClick$1;->$item:Lui/decode/ListViewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lui/decode/ViewType;->HEX:Lui/decode/ViewType;

    invoke-virtual {v0, v1}, Lui/decode/V1HeaderState;->setViewType(Lui/decode/ViewType;)V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
