.class public final Lui/PacketActivity$Companion;
.super Ljava/lang/Object;
.source "PacketActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/PacketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 44
    invoke-direct {p0}, Lui/PacketActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStartingIntent(Landroid/content/Context;Ljava/lang/String;Lui/decode/DecodeArg;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "decodeArg"    # Lui/decode/DecodeArg;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "decodeArg"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui/PacketActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "decodeArg"

    check-cast p3, Ljava/io/Serializable;

    .end local p3    # "decodeArg":Lui/decode/DecodeArg;
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method
