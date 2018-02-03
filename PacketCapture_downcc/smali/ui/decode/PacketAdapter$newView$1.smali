.class final Lui/decode/PacketAdapter$newView$1;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/PacketAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $tag:Lui/decode/PacketAdapter$Tag;

.field final synthetic this$0:Lui/decode/PacketAdapter;


# direct methods
.method constructor <init>(Lui/decode/PacketAdapter;Lui/decode/PacketAdapter$Tag;)V
    .locals 0

    iput-object p1, p0, Lui/decode/PacketAdapter$newView$1;->this$0:Lui/decode/PacketAdapter;

    iput-object p2, p0, Lui/decode/PacketAdapter$newView$1;->$tag:Lui/decode/PacketAdapter$Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v1, p0, Lui/decode/PacketAdapter$newView$1;->this$0:Lui/decode/PacketAdapter;

    iget-object v0, p0, Lui/decode/PacketAdapter$newView$1;->$tag:Lui/decode/PacketAdapter$Tag;

    invoke-virtual {v0}, Lui/decode/PacketAdapter$Tag;->getViewDecoderNameLayout()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lui/decode/PacketAdapter$newView$1;->$tag:Lui/decode/PacketAdapter$Tag;

    invoke-virtual {v0}, Lui/decode/PacketAdapter$Tag;->getViewDecoderNameLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lui/decode/PacketAdapter;->access$handleDecoderNameClick(Lui/decode/PacketAdapter;Landroid/view/View;I)V

    return-void
.end method
