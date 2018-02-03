.class public Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;,
        Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

.field private mDismissAnimationRefCount:I

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "callbacks"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x1

    iput v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 124
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 125
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSlop:I

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    .line 128
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mAnimationTime:J

    .line 130
    iput-object p1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    .line 131
    iput-object p2, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mCallbacks:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 71
    iget v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$106(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 71
    iget v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$200(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 71
    iget-object v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 71
    iget-object v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;

    .prologue
    .line 71
    iget-object v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mCallbacks:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    return-object v0
.end method

.method static synthetic access$502(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;I)I
    .locals 0
    .param p0, "x0"    # Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    return p1
.end method

.method private performDismiss(Landroid/view/View;I)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v5, 0x1

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 344
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 346
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 348
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;

    invoke-direct {v3, p0, v2}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$3;-><init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    new-instance v3, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$4;

    invoke-direct {v3, p0, v1, p1}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$4;-><init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    iget-object v3, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    new-instance v4, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$PendingDismissData;-><init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 398
    return-void
.end method


# virtual methods
.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$1;

    invoke-direct {v0, p0}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$1;-><init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 171
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 319
    :cond_1
    :goto_0
    const/16 v19, 0x0

    :goto_1
    return v19

    .line 173
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 174
    const/16 v19, 0x0

    goto :goto_1

    .line 180
    :cond_2
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v15, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 182
    .local v6, "childCount":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 183
    .local v14, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    aget v20, v14, v20

    sub-int v17, v19, v20

    .line 185
    .local v17, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v14, v20

    sub-int v18, v19, v20

    .line 187
    .local v18, "y":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 189
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 190
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 191
    move-object/from16 v0, p0

    iput-object v5, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 196
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownX:F

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownY:F

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mCallbacks:Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;->canDismiss(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 201
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 207
    :cond_4
    :goto_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v5    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 204
    .end local v5    # "child":Landroid/view/View;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 211
    .end local v6    # "childCount":I
    .end local v13    # "i":I
    .end local v14    # "listViewCoords":[I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v17    # "x":I
    .end local v18    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 218
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    .line 219
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 220
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 221
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 223
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 224
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 225
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownX:F

    .line 226
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownY:F

    .line 227
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 228
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 229
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 234
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 239
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 242
    .local v16, "velocityX":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 243
    .local v2, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 244
    .local v3, "absVelocityY":F
    const/4 v9, 0x0

    .line 245
    .local v9, "dismiss":Z
    const/4 v10, 0x0

    .line 246
    .local v10, "dismissRight":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 247
    const/4 v9, 0x1

    .line 248
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_9

    const/4 v10, 0x1

    .line 255
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 258
    .local v12, "downView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v11, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 259
    .local v11, "downPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 261
    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 262
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 263
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v11}, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$2;-><init>(Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    .line 264
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 278
    .end local v11    # "downPosition":I
    .end local v12    # "downView":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 279
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 280
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownX:F

    .line 281
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownY:F

    .line 282
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 283
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 284
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 248
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 249
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v19, v2

    if-gtz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v2, v19

    if-gtz v19, :cond_8

    cmpg-float v19, v3, v2

    if-gez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 252
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_b

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_7
    const/16 v19, 0x0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_c

    const/16 v19, 0x1

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    .line 253
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_e

    const/4 v10, 0x1

    :goto_a
    goto/16 :goto_4

    .line 252
    :cond_b
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    goto :goto_9

    .line 253
    :cond_e
    const/4 v10, 0x0

    goto :goto_a

    .line 260
    .restart local v11    # "downPosition":I
    .restart local v12    # "downView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_5

    .line 272
    .end local v11    # "downPosition":I
    .end local v12    # "downView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 273
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    .line 274
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 275
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 276
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 289
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v7    # "deltaX":F
    .end local v9    # "dismiss":Z
    .end local v10    # "dismissRight":Z
    .end local v16    # "velocityX":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 295
    .restart local v7    # "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownY:F

    move/from16 v20, v0

    sub-float v8, v19, v20

    .line 296
    .local v8, "deltaY":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_11

    .line 297
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    .line 298
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    :goto_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwipingSlop:I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 302
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 304
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    shl-int/lit8 v19, v19, 0x8

    or-int/lit8 v19, v19, 0x3

    .line 303
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 310
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSwipingSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationX(F)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x40000000    # 2.0f

    .line 313
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v24

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v22, v22, v23

    .line 312
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 314
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 298
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_b

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener;->mPaused:Z

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
