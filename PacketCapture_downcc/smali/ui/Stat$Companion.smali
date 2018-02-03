.class public final Lui/Stat$Companion;
.super Ljava/lang/Object;
.source "Stat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 33
    invoke-direct {p0}, Lui/Stat$Companion;-><init>()V

    return-void
.end method

.method private final getStat()Lui/Stat;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lui/Stat;->access$getStat$cp()Lui/Stat;

    move-result-object v0

    return-object v0
.end method

.method private final setStat(Lui/Stat;)V
    .locals 0
    .param p1, "<set-?>"    # Lui/Stat;

    .prologue
    .line 34
    invoke-static {p1}, Lui/Stat;->access$setStat$cp(Lui/Stat;)V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lui/Stat;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v2, "ctx"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 36
    check-cast v2, Lui/Stat$Companion;

    invoke-direct {v2}, Lui/Stat$Companion;->getStat()Lui/Stat;

    move-result-object v0

    .line 37
    .local v0, "s":Lui/Stat;
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lui/Stat;

    .end local v0    # "s":Lui/Stat;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ctx.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lui/Stat;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .restart local v0    # "s":Lui/Stat;
    check-cast p0, Lui/Stat$Companion;

    .end local p0    # "this":Lui/Stat$Companion;
    invoke-direct {p0, v0}, Lui/Stat$Companion;->setStat(Lui/Stat;)V

    move-object v1, v0

    .line 42
    .end local v0    # "s":Lui/Stat;
    .local v1, "s":Ljava/lang/Object;
    :goto_0
    return-object v1

    .end local v1    # "s":Ljava/lang/Object;
    .restart local v0    # "s":Lui/Stat;
    .restart local p0    # "this":Lui/Stat$Companion;
    :cond_0
    move-object v1, v0

    .restart local v1    # "s":Ljava/lang/Object;
    goto :goto_0
.end method
