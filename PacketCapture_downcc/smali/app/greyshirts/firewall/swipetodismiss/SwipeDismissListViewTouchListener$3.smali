.class Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;I)V
    .locals 0
    .param p1, "this$0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 348
    iput-object p1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    iput p2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    .line 351
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$106(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)I

    .line 352
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$100(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)I

    move-result v2

    if-nez v2, :cond_2

    .line 355
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [I

    .line 358
    .local v9, "dismissPositions":[I
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    .line 359
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;

    iget v2, v2, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    aput v2, v9, v10

    .line 358
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 361
    :cond_0
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$400(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-result-object v2

    iget-object v3, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v3}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$300(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 365
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$502(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;I)I

    .line 368
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;

    .line 370
    .local v12, "pendingDismiss":Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;
    iget-object v3, v12, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 371
    iget-object v3, v12, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 372
    iget-object v3, v12, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 373
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    iput v3, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    iget-object v3, v12, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 378
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "pendingDismiss":Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 379
    .local v0, "time":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 381
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$300(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 383
    iget-object v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;->this$0:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 385
    .end local v0    # "time":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "dismissPositions":[I
    .end local v10    # "i":I
    :cond_2
    return-void
.end method
