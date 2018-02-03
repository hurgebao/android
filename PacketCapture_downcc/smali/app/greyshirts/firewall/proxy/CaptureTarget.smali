.class public final Lapp/greyshirts/firewall/proxy/CaptureTarget;
.super Ljava/lang/Object;
.source "CaptureTarget.kt"


# static fields
.field public static final INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

.field public static pref:Landroid/content/SharedPreferences;

.field private static targetUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;

    invoke-direct {v0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/greyshirts/firewall/proxy/CaptureTarget;

    .end local p0    # "this":Lapp/greyshirts/firewall/proxy/CaptureTarget;
    sput-object p0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    .line 10
    const/4 v0, -0x1

    sput v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->targetUid:I

    return-void
.end method


# virtual methods
.method public final clearCaptureTarget()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->setCaptureTarget(I)V

    .line 26
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v0, "PREF"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ctx.getSharedPreferences(\"PREF\", 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->pref:Landroid/content/SharedPreferences;

    .line 14
    sget-object v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->pref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "pref"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v1, "targetUid"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->targetUid:I

    .line 15
    return-void
.end method

.method public final isCaptureTarget(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 18
    sget v1, Lapp/greyshirts/firewall/proxy/CaptureTarget;->targetUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lapp/greyshirts/firewall/proxy/CaptureTarget;->targetUid:I

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCaptureTarget(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 32
    sput p1, Lapp/greyshirts/firewall/proxy/CaptureTarget;->targetUid:I

    .line 33
    sget-object v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->pref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "pref"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "targetUid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method
