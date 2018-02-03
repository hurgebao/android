.class public final Lui/SetListFragment$onCreateView$touchListener$1;
.super Ljava/lang/Object;
.source "SetListFragment.kt"

# interfaces
.implements Lapp/greyshirts/firewall/swipetodismiss/SwipeDismissListViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SetListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic this$0:Lui/SetListFragment;


# direct methods
.method constructor <init>(Lui/SetListFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "$outer"    # Lui/SetListFragment;
    .param p2, "$captured_local_variable$1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lui/SetListFragment$onCreateView$touchListener$1;->this$0:Lui/SetListFragment;

    iput-object p2, p0, Lui/SetListFragment$onCreateView$touchListener$1;->$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/widget/ListView;[I)V
    .locals 16
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 60
    if-nez p2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lui/SetListFragment$onCreateView$touchListener$1;->this$0:Lui/SetListFragment;

    invoke-static {v12}, Lui/SetListFragment;->access$getAdapter$p(Lui/SetListFragment;)Lui/SetListAdapter;

    move-result-object v4

    .line 64
    .local v4, "a":Lui/SetListAdapter;
    if-eqz v4, :cond_0

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v9, "select":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    array-length v11, v0

    .line 188
    .local v11, "size$iv":I
    new-array v7, v11, [Ljava/lang/String;

    .line 189
    .local v7, "result$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    add-int/lit8 v12, v11, -0x1

    if-gt v6, v12, :cond_2

    .line 68
    :goto_1
    const-string v13, ""

    aput-object v13, v7, v6

    .line 189
    if-eq v6, v12, :cond_2

    add-int/lit8 v6, v6, 0x1

    .local v6, "i$iv":I
    goto :goto_1

    .line 68
    .end local v6    # "i$iv":I
    :cond_2
    move-object v10, v7

    .line 69
    .local v10, "selectArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    if-gt v5, v12, :cond_4

    .line 70
    :goto_2
    aget v13, p2, v5

    invoke-virtual {v4, v13}, Lui/SetListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 71
    .local v2, "_id":J
    if-lez v5, :cond_3

    .line 72
    const-string v13, ","

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    const/16 v13, 0x3f

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v5

    .line 69
    if-eq v5, v12, :cond_4

    add-int/lit8 v5, v5, 0x1

    .local v5, "i":I
    goto :goto_2

    .line 77
    .end local v2    # "_id":J
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lui/SetListAdapter;->delete([I)V

    .line 78
    const-string v12, "SSL"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "select="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v12, 0x0

    :goto_3
    array-length v13, v10

    if-ge v12, v13, :cond_5

    aget-object v8, v10, v12

    .line 80
    .local v8, "s":Ljava/lang/String;
    const-string v13, "SSL"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "selectArgs="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 82
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lui/SetListFragment$onCreateView$touchListener$1;->$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lapp/greyshirts/provider/Contract/CaptureSet;->_ID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
