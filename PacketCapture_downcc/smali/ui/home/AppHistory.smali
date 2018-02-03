.class public final Lui/home/AppHistory;
.super Ljava/lang/Object;
.source "AppHistory.kt"


# static fields
.field public static final INSTANCE:Lui/home/AppHistory; = null

.field private static final MAX_HISTORY:I = 0x3

.field public static ctx:Landroid/content/Context;

.field public static history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui/home/History;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lui/home/AppHistory;

    invoke-direct {v0}, Lui/home/AppHistory;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lui/home/AppHistory;

    .end local p0    # "this":Lui/home/AppHistory;
    sput-object p0, Lui/home/AppHistory;->INSTANCE:Lui/home/AppHistory;

    .line 23
    const/4 v0, 0x3

    sput v0, Lui/home/AppHistory;->MAX_HISTORY:I

    return-void
.end method


# virtual methods
.method public final getHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lui/home/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "history"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sput-object p1, Lui/home/AppHistory;->ctx:Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Lui/home/AppHistory;->loadHistory()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public final loadHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lui/home/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v1, "gson":Lcom/google/gson/Gson;
    sget-object v2, Lui/home/AppHistory;->ctx:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v3, "ctx"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v3, "PREF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "appHistory"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lui/home/AppHistory$loadHistory$arr$1;

    invoke-direct {v3}, Lui/home/AppHistory$loadHistory$arr$1;-><init>()V

    invoke-virtual {v3}, Lui/home/AppHistory$loadHistory$arr$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 45
    .local v0, "arr":Ljava/util/ArrayList;
    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :cond_1
    return-object v0
.end method

.method public final saveHistory(Landroid/content/pm/ApplicationInfo;)V
    .locals 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v9, 0x0

    const-string v4, "app"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v4, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    const-string v5, "history"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 27
    .local v2, "iter":Ljava/util/ListIterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui/home/History;

    .line 29
    .local v1, "h":Lui/home/History;
    invoke-virtual {v1}, Lui/home/History;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 33
    .end local v1    # "h":Lui/home/History;
    :cond_2
    sget-object v4, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    const-string v5, "history"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v5, Lui/home/History;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "app.packageName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lui/home/History;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    :goto_1
    sget-object v4, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    const-string v5, "history"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lui/home/AppHistory;->MAX_HISTORY:I

    if-le v4, v5, :cond_6

    .line 35
    sget-object v4, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    const-string v5, "history"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget v5, Lui/home/AppHistory;->MAX_HISTORY:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 38
    .local v0, "gson":Lcom/google/gson/Gson;
    sget-object v4, Lui/home/AppHistory;->history:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    const-string v5, "history"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "str":Ljava/lang/String;
    sget-object v4, Lui/home/AppHistory;->ctx:Landroid/content/Context;

    if-nez v4, :cond_8

    const-string v5, "ctx"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const-string v5, "PREF"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "appHistory"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method
