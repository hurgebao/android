.class public abstract Landroid/databinding/ViewDataBinding;
.super Landroid/databinding/BaseObservable;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/ViewDataBinding$IncludedLayouts;,
        Landroid/databinding/ViewDataBinding$CreateWeakListener;,
        Landroid/databinding/ViewDataBinding$WeakListener;,
        Landroid/databinding/ViewDataBinding$ObservableReference;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I

.field private static final CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry$NotifierCallback",
            "<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TAG_ID:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBindingComponent:Landroid/databinding/DataBindingComponent;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroid/databinding/ViewDataBinding;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsExecutingPendingBindings:Z

.field private mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroid/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry",
            "<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    .line 74
    const-string v0, "binding_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    .line 77
    sget v0, Landroid/databinding/DataBinderMapper;->TARGET_MIN_SDK:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    .line 79
    sget v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    .line 84
    new-instance v0, Landroid/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 94
    new-instance v0, Landroid/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 104
    new-instance v0, Landroid/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 112
    new-instance v0, Landroid/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;

    .line 132
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 138
    const/4 v0, 0x0

    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    .line 155
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_1

    .line 140
    :cond_2
    new-instance v0, Landroid/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_2
.end method

.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V
    .locals 2
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "localFieldCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 160
    new-instance v0, Landroid/databinding/ViewDataBinding$6;

    invoke-direct {v0, p0}, Landroid/databinding/ViewDataBinding$6;-><init>(Landroid/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    .line 185
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 190
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 240
    iput-object p1, p0, Landroid/databinding/ViewDataBinding;->mBindingComponent:Landroid/databinding/DataBindingComponent;

    .line 241
    new-array v0, p3, [Landroid/databinding/ViewDataBinding$WeakListener;

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    .line 242
    iput-object p2, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    .line 243
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    .line 248
    new-instance v0, Landroid/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroid/databinding/ViewDataBinding$7;-><init>(Landroid/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    return p1
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Landroid/databinding/ViewDataBinding;->processReferenceQueue()V

    return-void
.end method

.method static synthetic access$400(Landroid/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private executeBindingsInternal()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 361
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    .line 369
    iput-boolean v3, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 370
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 374
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 378
    :cond_2
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-nez v0, :cond_3

    .line 379
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executeBindings()V

    .line 380
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 384
    :cond_3
    iput-boolean v3, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    goto :goto_0
.end method

.method private static findIncludeIndex(Ljava/lang/String;ILandroid/databinding/ViewDataBinding$IncludedLayouts;I)I
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "minInclude"    # I
    .param p2, "included"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "includedIndex"    # I

    .prologue
    .line 1157
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1158
    .local v5, "slashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1160
    .local v2, "layoutName":Ljava/lang/CharSequence;
    iget-object v6, p2, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aget-object v3, v6, p3

    .line 1161
    .local v3, "layouts":[Ljava/lang/String;
    array-length v4, v3

    .line 1162
    .local v4, "length":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1163
    aget-object v1, v3, v0

    .line 1164
    .local v1, "layout":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1168
    .end local v0    # "i":I
    .end local v1    # "layout":Ljava/lang/String;
    :goto_1
    return v0

    .line 1162
    .restart local v0    # "i":I
    .restart local v1    # "layout":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    .end local v1    # "layout":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static findLastMatching(Landroid/view/ViewGroup;I)I
    .locals 12
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "firstIncludedIndex"    # I

    .prologue
    .line 1172
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1173
    .local v1, "firstView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1174
    .local v2, "firstViewTag":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1175
    .local v7, "tagBase":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1177
    .local v8, "tagSequenceIndex":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1178
    .local v0, "count":I
    move v4, p1

    .line 1179
    .local v4, "max":I
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1180
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1181
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1182
    .local v5, "objTag":Ljava/lang/Object;
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 1183
    .local v6, "tag":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1184
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_2

    .line 1192
    .end local v5    # "objTag":Ljava/lang/Object;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_0
    return v4

    .line 1182
    .restart local v5    # "objTag":Ljava/lang/Object;
    .restart local v9    # "view":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1187
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_2
    invoke-static {v6, v8}, Landroid/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1188
    move v4, v3

    .line 1179
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 430
    if-eqz p0, :cond_1

    .line 431
    sget-boolean v1, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    if-eqz v1, :cond_0

    .line 432
    sget v1, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/databinding/ViewDataBinding;

    .line 440
    :goto_0
    return-object v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/databinding/ViewDataBinding;

    if-eqz v1, :cond_1

    .line 436
    check-cast v0, Landroid/databinding/ViewDataBinding;

    .end local v0    # "tag":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0

    .line 440
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1197
    .local v1, "length":I
    if-ne v1, p1, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return v2

    .line 1200
    :cond_1
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1201
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1205
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .locals 30
    .param p0, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bindings"    # [Ljava/lang/Object;
    .param p3, "includes"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p4, "viewsWithIds"    # Landroid/util/SparseIntArray;
    .param p5, "isRoot"    # Z

    .prologue
    .line 1071
    invoke-static/range {p1 .. p1}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v11

    .line 1072
    .local v11, "existingBinding":Landroid/databinding/ViewDataBinding;
    if-eqz v11, :cond_1

    .line 1153
    :cond_0
    return-void

    .line 1075
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .line 1076
    .local v25, "objTag":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6

    check-cast v25, Ljava/lang/String;

    .end local v25    # "objTag":Ljava/lang/Object;
    move-object/from16 v26, v25

    .line 1077
    .local v26, "tag":Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 1078
    .local v19, "isBound":Z
    if-eqz p5, :cond_9

    if-eqz v26, :cond_9

    const-string v3, "layout"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1079
    const/16 v3, 0x5f

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    .line 1080
    .local v28, "underscoreIndex":I
    if-lez v28, :cond_8

    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1081
    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v17

    .line 1082
    .local v17, "index":I
    aget-object v3, p2, v17

    if-nez v3, :cond_2

    .line 1083
    aput-object p1, p2, v17

    .line 1085
    :cond_2
    if-nez p3, :cond_7

    const/16 v18, -0x1

    .line 1086
    .local v18, "indexInIncludes":I
    :goto_1
    const/16 v19, 0x1

    .line 1101
    .end local v17    # "index":I
    .end local v28    # "underscoreIndex":I
    :goto_2
    if-nez v19, :cond_3

    .line 1102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    .line 1103
    .local v13, "id":I
    if-lez v13, :cond_3

    .line 1105
    if-eqz p4, :cond_3

    const/4 v3, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    .restart local v17    # "index":I
    if-ltz v17, :cond_3

    aget-object v3, p2, v17

    if-nez v3, :cond_3

    .line 1107
    aput-object p1, p2, v17

    .line 1112
    .end local v13    # "id":I
    .end local v17    # "index":I
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object/from16 v29, p1

    .line 1113
    check-cast v29, Landroid/view/ViewGroup;

    .line 1114
    .local v29, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1115
    .local v10, "count":I
    const/16 v24, 0x0

    .line 1116
    .local v24, "minInclude":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v10, :cond_0

    .line 1117
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1118
    .local v4, "child":Landroid/view/View;
    const/16 v20, 0x0

    .line 1119
    .local v20, "isInclude":Z
    if-ltz v18, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1120
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1121
    .local v9, "childTag":Ljava/lang/String;
    const-string v3, "_0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "layout"

    .line 1122
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    .line 1124
    move/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v9, v0, v1, v2}, Landroid/databinding/ViewDataBinding;->findIncludeIndex(Ljava/lang/String;ILandroid/databinding/ViewDataBinding$IncludedLayouts;I)I

    move-result v15

    .line 1126
    .local v15, "includeIndex":I
    if-ltz v15, :cond_4

    .line 1127
    const/16 v20, 0x1

    .line 1128
    add-int/lit8 v24, v15, 0x1

    .line 1129
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aget-object v3, v3, v18

    aget v17, v3, v15

    .line 1130
    .restart local v17    # "index":I
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aget-object v3, v3, v18

    aget v23, v3, v15

    .line 1131
    .local v23, "layoutId":I
    move-object/from16 v0, v29

    invoke-static {v0, v12}, Landroid/databinding/ViewDataBinding;->findLastMatching(Landroid/view/ViewGroup;I)I

    move-result v22

    .line 1132
    .local v22, "lastMatchingIndex":I
    move/from16 v0, v22

    if-ne v0, v12, :cond_d

    .line 1133
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v4, v1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v17

    .line 1148
    .end local v9    # "childTag":Ljava/lang/String;
    .end local v15    # "includeIndex":I
    .end local v17    # "index":I
    .end local v22    # "lastMatchingIndex":I
    .end local v23    # "layoutId":I
    :cond_4
    :goto_4
    if-nez v20, :cond_5

    .line 1149
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v8}, Landroid/databinding/ViewDataBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 1116
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1076
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v18    # "indexInIncludes":I
    .end local v19    # "isBound":Z
    .end local v20    # "isInclude":Z
    .end local v24    # "minInclude":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v29    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v25    # "objTag":Ljava/lang/Object;
    :cond_6
    const/16 v26, 0x0

    goto/16 :goto_0

    .end local v25    # "objTag":Ljava/lang/Object;
    .restart local v17    # "index":I
    .restart local v19    # "isBound":Z
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v28    # "underscoreIndex":I
    :cond_7
    move/from16 v18, v17

    .line 1085
    goto/16 :goto_1

    .line 1088
    .end local v17    # "index":I
    :cond_8
    const/16 v18, -0x1

    .restart local v18    # "indexInIncludes":I
    goto/16 :goto_2

    .line 1090
    .end local v18    # "indexInIncludes":I
    .end local v28    # "underscoreIndex":I
    :cond_9
    if-eqz v26, :cond_c

    const-string v3, "binding_"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1091
    sget v3, Landroid/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v27

    .line 1092
    .local v27, "tagIndex":I
    aget-object v3, p2, v27

    if-nez v3, :cond_a

    .line 1093
    aput-object p1, p2, v27

    .line 1095
    :cond_a
    const/16 v19, 0x1

    .line 1096
    if-nez p3, :cond_b

    const/16 v18, -0x1

    .line 1097
    .restart local v18    # "indexInIncludes":I
    :goto_5
    goto/16 :goto_2

    .end local v18    # "indexInIncludes":I
    :cond_b
    move/from16 v18, v27

    .line 1096
    goto :goto_5

    .line 1099
    .end local v27    # "tagIndex":I
    :cond_c
    const/16 v18, -0x1

    .restart local v18    # "indexInIncludes":I
    goto/16 :goto_2

    .line 1136
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "childTag":Ljava/lang/String;
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v15    # "includeIndex":I
    .restart local v17    # "index":I
    .restart local v20    # "isInclude":Z
    .restart local v22    # "lastMatchingIndex":I
    .restart local v23    # "layoutId":I
    .restart local v24    # "minInclude":I
    .restart local v29    # "viewGroup":Landroid/view/ViewGroup;
    :cond_d
    sub-int v3, v22, v12

    add-int/lit8 v14, v3, 0x1

    .line 1137
    .local v14, "includeCount":I
    new-array v0, v14, [Landroid/view/View;

    move-object/from16 v16, v0

    .line 1138
    .local v16, "included":[Landroid/view/View;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_6
    move/from16 v0, v21

    if-ge v0, v14, :cond_e

    .line 1139
    add-int v3, v12, v21

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v16, v21

    .line 1138
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1141
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/databinding/DataBindingUtil;->bind(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v17

    .line 1143
    add-int/lit8 v3, v14, -0x1

    add-int/2addr v12, v3

    goto :goto_4
.end method

.method protected static mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6
    .param p0, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "numBindings"    # I
    .param p3, "includes"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p4, "viewsWithIds"    # Landroid/util/SparseIntArray;

    .prologue
    .line 599
    new-array v2, p2, [Ljava/lang/Object;

    .line 600
    .local v2, "bindings":[Ljava/lang/Object;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/databinding/ViewDataBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 601
    return-object v2
.end method

.method private static parseTagInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .prologue
    .line 1215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1216
    .local v1, "end":I
    const/4 v3, 0x0

    .line 1217
    .local v3, "val":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1218
    mul-int/lit8 v3, v3, 0xa

    .line 1219
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1220
    .local v0, "c":C
    add-int/lit8 v4, v0, -0x30

    add-int/2addr v3, v4

    .line 1217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "c":C
    :cond_0
    return v3
.end method

.method private static processReferenceQueue()V
    .locals 3

    .prologue
    .line 1230
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Landroid/databinding/ViewDataBinding;>;"
    :cond_0
    :goto_0
    sget-object v2, Landroid/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1231
    instance-of v2, v1, Landroid/databinding/ViewDataBinding$WeakListener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1232
    check-cast v0, Landroid/databinding/ViewDataBinding$WeakListener;

    .line 1233
    .local v0, "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    goto :goto_0

    .line 1236
    .end local v0    # "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Landroid/databinding/ViewDataBinding;->executeBindingsInternal()V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->executePendingBindings()V

    goto :goto_0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public abstract hasPendingBindings()Z
.end method

.method protected requestRebind()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 490
    :goto_0
    return-void

    .line 478
    :cond_0
    monitor-enter p0

    .line 479
    :try_start_0
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_1

    .line 480
    monitor-exit p0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 482
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 483
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setRootTag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    if-eqz v0, :cond_0

    .line 265
    sget v0, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
