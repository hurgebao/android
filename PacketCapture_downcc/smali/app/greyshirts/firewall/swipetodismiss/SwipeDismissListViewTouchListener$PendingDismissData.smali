.class Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 326
    iput-object p1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    .line 328
    iput-object p3, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 329
    return-void
.end method


# virtual methods
.method public compareTo(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;

    .prologue
    .line 334
    iget v0, p1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 322
    check-cast p1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-virtual {p0, p1}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->compareTo(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
