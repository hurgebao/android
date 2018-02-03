.class public final Lui/HomeActivity$Companion;
.super Ljava/lang/Object;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 252
    invoke-direct {p0}, Lui/HomeActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lui/HomeActivity$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lui/HomeActivity$Companion;

    .prologue
    .line 252
    invoke-direct {p0}, Lui/HomeActivity$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lui/HomeActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
