.class public final Lui/Stat;
.super Ljava/lang/Object;
.source "Stat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/Stat$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/Stat$Companion;

.field private static stat:Lui/Stat;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/Stat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/Stat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/Stat;->Companion:Lui/Stat$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/Stat;->ctx:Landroid/content/Context;

    .line 11
    iget-object v0, p0, Lui/Stat;->ctx:Landroid/content/Context;

    const-string v1, "PREF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ctx.getSharedPreferences(\"PREF\", 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lui/Stat;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lui/Stat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getStat$cp()Lui/Stat;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lui/Stat;->stat:Lui/Stat;

    return-object v0
.end method

.method public static final synthetic access$setStat$cp(Lui/Stat;)V
    .locals 0
    .param p0, "<set-?>"    # Lui/Stat;

    .prologue
    .line 6
    sput-object p0, Lui/Stat;->stat:Lui/Stat;

    return-void
.end method


# virtual methods
.method public final clearFirstLaunchDate()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lui/Stat;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstLaunch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public final getFirstLaunchDate()Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 25
    iget-object v2, p0, Lui/Stat;->pref:Landroid/content/SharedPreferences;

    const-string v3, "firstLaunch"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 26
    .local v0, "date":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public final isFirstLaunch()Z
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lui/Stat;->getFirstLaunchDate()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFirstLaunchDate()V
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    .local v0, "date":J
    iget-object v2, p0, Lui/Stat;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstLaunch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    return-void
.end method
