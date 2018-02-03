.class Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$1;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 153
    iput-object p1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$1;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$1;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    if-eq p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->setEnabled(Z)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
