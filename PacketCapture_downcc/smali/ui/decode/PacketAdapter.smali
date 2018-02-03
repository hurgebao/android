.class public final Lui/decode/PacketAdapter;
.super Landroid/widget/BaseAdapter;
.source "DecodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/decode/PacketAdapter$Listener;,
        Lui/decode/PacketAdapter$Tag;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private file:Ljava/io/RandomAccessFile;

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/ListViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lui/decode/PacketAdapter$Listener;

.field private targetHeader:Lcapt/V1Header;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    .line 334
    iget-object v0, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lui/decode/PacketAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static final synthetic access$getHeaders$p(Lui/decode/PacketAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lui/decode/PacketAdapter;

    .prologue
    .line 320
    iget-object v0, p0, Lui/decode/PacketAdapter;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getItems$p(Lui/decode/PacketAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lui/decode/PacketAdapter;

    .prologue
    .line 320
    iget-object v0, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$handleDecoderNameClick(Lui/decode/PacketAdapter;Landroid/view/View;I)V
    .locals 0
    .param p0, "$this"    # Lui/decode/PacketAdapter;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lui/decode/PacketAdapter;->handleDecoderNameClick(Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$handleMoreClick(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;I)V
    .locals 0
    .param p0, "$this"    # Lui/decode/PacketAdapter;
    .param p1, "tag"    # Lui/decode/PacketAdapter$Tag;
    .param p2, "position"    # I

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lui/decode/PacketAdapter;->handleMoreClick(Lui/decode/PacketAdapter$Tag;I)V

    return-void
.end method

.method public static final synthetic access$setItems$p(Lui/decode/PacketAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "$this"    # Lui/decode/PacketAdapter;
    .param p1, "<set-?>"    # Ljava/util/ArrayList;

    .prologue
    .line 320
    iput-object p1, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private final handleDecoderNameClick(Landroid/view/View;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 471
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 472
    .local v2, "popup":Landroid/widget/PopupMenu;
    iget-object v3, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lui/decode/ListViewItem;

    move-object v1, v3

    .line 473
    .local v1, "item":Lui/decode/ListViewItem;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lui/decode/ListViewItem;->getV1HeaderState()Lui/decode/V1HeaderState;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lui/decode/V1HeaderState;->getHeader()Lcapt/V1Header;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcapt/V1Header;->getHasPretty()Z

    move-result v0

    .line 474
    .local v0, "hasPretty":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lui/decode/ListViewItem;->getPrettyLabel()Ljava/lang/String;

    move-result-object v3

    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v6, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 477
    :cond_0
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v6, 0x1

    const-string v3, "TEXT"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 478
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v6, 0x2

    const-string v3, "HEX"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 479
    new-instance v3, Lui/decode/PacketAdapter$handleDecoderNameClick$1;

    invoke-direct {v3, p0, v1}, Lui/decode/PacketAdapter$handleDecoderNameClick$1;-><init>(Lui/decode/PacketAdapter;Lui/decode/ListViewItem;)V

    check-cast v3, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 499
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 500
    return-void

    .end local v0    # "hasPretty":Z
    .end local v1    # "item":Lui/decode/ListViewItem;
    :cond_1
    move-object v1, v4

    .line 472
    goto :goto_0

    .restart local v1    # "item":Lui/decode/ListViewItem;
    :cond_2
    move v0, v5

    .line 473
    goto :goto_1

    .restart local v0    # "hasPretty":Z
    :cond_3
    move-object v3, v4

    .line 475
    goto :goto_2
.end method

.method private final handleMoreClick(Lui/decode/PacketAdapter$Tag;I)V
    .locals 5
    .param p1, "tag"    # Lui/decode/PacketAdapter$Tag;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 503
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lui/decode/PacketAdapter$Tag;->getViewMore()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 504
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v1, "Copy"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v4, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 505
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x1

    const-string v1, "Save"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v3, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 506
    new-instance v1, Lui/decode/PacketAdapter$handleMoreClick$1;

    invoke-direct {v1, p0, p1, p2}, Lui/decode/PacketAdapter$handleMoreClick$1;-><init>(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;I)V

    check-cast v1, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 521
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 522
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v10, 0x7f020069

    const v7, 0x7f020068

    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    const-string v3, "view"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type ui.decode.PacketAdapter.Tag"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v2, Lui/decode/PacketAdapter$Tag;

    .line 401
    .local v2, "tag":Lui/decode/PacketAdapter$Tag;
    iget-object v3, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lui/decode/ListViewItem;

    move-object v1, v3

    .line 402
    .local v1, "item":Lui/decode/ListViewItem;
    :goto_0
    if-nez v1, :cond_2

    .line 466
    :goto_1
    return-void

    .end local v1    # "item":Lui/decode/ListViewItem;
    :cond_1
    move-object v1, v4

    .line 401
    goto :goto_0

    .line 406
    .restart local v1    # "item":Lui/decode/ListViewItem;
    :cond_2
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderNameLayout()Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewMore()Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v1}, Lui/decode/ListViewItem;->isParent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 410
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewHeader()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :goto_2
    invoke-virtual {v1}, Lui/decode/ListViewItem;->getServer2App()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 415
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDirection()Landroid/widget/TextView;

    move-result-object v5

    const-string v3, "--->"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 418
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 424
    :goto_3
    invoke-virtual {v1}, Lui/decode/ListViewItem;->getViewType()Lui/decode/ViewType;

    move-result-object v3

    sget-object v5, Lui/decode/PacketAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lui/decode/ViewType;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 442
    :goto_4
    invoke-virtual {v1}, Lui/decode/ListViewItem;->getSize()I

    move-result v3

    new-array v0, v3, [B

    .line 445
    .local v0, "bytes":[B
    iget-object v3, p0, Lui/decode/PacketAdapter;->file:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lui/decode/ListViewItem;->getFileOffset()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 446
    :cond_3
    iget-object v3, p0, Lui/decode/PacketAdapter;->file:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 447
    :cond_4
    invoke-virtual {v1}, Lui/decode/ListViewItem;->getViewType()Lui/decode/ViewType;

    move-result-object v3

    sget-object v5, Lui/decode/PacketAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lui/decode/ViewType;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 449
    :pswitch_0
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v0}, Lui/decode/ListviewitemKt;->HexDump([B)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 412
    .end local v0    # "bytes":[B
    :cond_5
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewHeader()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 420
    :cond_6
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDirection()Landroid/widget/TextView;

    move-result-object v5

    const-string v3, "<---"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 423
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 427
    :pswitch_1
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 428
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v5

    const-string v3, "HEX"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 431
    :pswitch_2
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 432
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v5

    const-string v3, "TEXT"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 435
    :pswitch_3
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 436
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lui/decode/ListViewItem;->getPrettyLabel()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 439
    :pswitch_4
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 440
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewDecoderName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lui/decode/ListViewItem;->getPrettyLabel()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 455
    .restart local v0    # "bytes":[B
    :pswitch_5
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 461
    :pswitch_6
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lui/decode/PacketAdapter$Tag;->getViewImage()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_1

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 447
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lui/decode/PacketAdapter;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 339
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lui/decode/PacketAdapter;->file:Ljava/io/RandomAccessFile;

    .line 340
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/decode/ListViewItem;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 351
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getListener()Lui/decode/PacketAdapter$Listener;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lui/decode/PacketAdapter;->listener:Lui/decode/PacketAdapter$Listener;

    return-object v0
.end method

.method public final getTargetHeader()Lcapt/V1Header;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lui/decode/PacketAdapter;->targetHeader:Lcapt/V1Header;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "parent"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    if-nez p2, :cond_0

    .line 369
    invoke-virtual {p0, p3}, Lui/decode/PacketAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lui/decode/PacketAdapter;->bindView(Landroid/view/View;I)V

    .line 374
    return-object v0

    .line 371
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lui/decode/PacketAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 379
    .local v9, "v":Landroid/view/View;
    new-instance v0, Lui/decode/PacketAdapter$Tag;

    const v1, 0x7f0b0091

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.header)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0b0092

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "v.findViewById<TextView>(R.id.direction)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0093

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "v.findViewById<View>(R.id.decoderNameLayout)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0b0094

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "v.findViewById<TextView>(R.id.decoderName)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0012

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "v.findViewById<TextView>(R.id.text)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0095

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "v.findViewById(R.id.more)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0b004a

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v10, "v.findViewById(R.id.image)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/ImageView;

    invoke-direct/range {v0 .. v7}, Lui/decode/PacketAdapter$Tag;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 387
    .local v0, "tag":Lui/decode/PacketAdapter$Tag;
    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    iget-object v1, p0, Lui/decode/PacketAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "DroidSansMono.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 390
    .local v8, "face":Landroid/graphics/Typeface;
    invoke-virtual {v0}, Lui/decode/PacketAdapter$Tag;->getViewText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    invoke-virtual {v0}, Lui/decode/PacketAdapter$Tag;->getViewDecoderNameLayout()Landroid/view/View;

    move-result-object v2

    new-instance v1, Lui/decode/PacketAdapter$newView$1;

    invoke-direct {v1, p0, v0}, Lui/decode/PacketAdapter$newView$1;-><init>(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-virtual {v0}, Lui/decode/PacketAdapter$Tag;->getViewMore()Landroid/view/View;

    move-result-object v2

    new-instance v1, Lui/decode/PacketAdapter$newView$2;

    invoke-direct {v1, p0, v0}, Lui/decode/PacketAdapter$newView$2;-><init>(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const-string v1, "v"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9
.end method

.method public final setData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "fileName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-static {p2}, Lui/decode/ListviewitemKt;->BuildListViewItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    .local v0, "items":Ljava/util/ArrayList;
    invoke-virtual {p0, p1, p2, v0}, Lui/decode/PacketAdapter;->setData(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 357
    return-void
.end method

.method public final setData(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/ArrayList;
    .param p3, "items"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/ListViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p2, p0, Lui/decode/PacketAdapter;->headers:Ljava/util/ArrayList;

    .line 361
    iput-object p3, p0, Lui/decode/PacketAdapter;->items:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lui/decode/PacketAdapter;->file:Ljava/io/RandomAccessFile;

    .line 363
    invoke-virtual {p0}, Lui/decode/PacketAdapter;->notifyDataSetChanged()V

    .line 364
    return-void
.end method

.method public final setListener(Lui/decode/PacketAdapter$Listener;)V
    .locals 0
    .param p1, "<set-?>"    # Lui/decode/PacketAdapter$Listener;

    .prologue
    .line 330
    iput-object p1, p0, Lui/decode/PacketAdapter;->listener:Lui/decode/PacketAdapter$Listener;

    return-void
.end method

.method public final setTargetHeader(Lcapt/V1Header;)V
    .locals 0
    .param p1, "<set-?>"    # Lcapt/V1Header;

    .prologue
    .line 331
    iput-object p1, p0, Lui/decode/PacketAdapter;->targetHeader:Lcapt/V1Header;

    return-void
.end method
