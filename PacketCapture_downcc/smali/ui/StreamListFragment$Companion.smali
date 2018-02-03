.class public final Lui/StreamListFragment$Companion;
.super Ljava/lang/Object;
.source "StreamListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 34
    invoke-direct {p0}, Lui/StreamListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFragment(Ljava/lang/String;)Lui/StreamListFragment;
    .locals 3
    .param p1, "setId"    # Ljava/lang/String;

    .prologue
    const-string v2, "setId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lui/StreamListFragment;

    invoke-direct {v1}, Lui/StreamListFragment;-><init>()V

    .line 37
    .local v1, "f":Lui/StreamListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "setId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lui/StreamListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method
