.class public Landroid/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action;,
        Landroid/support/v4/app/NotificationCompat$BigTextStyle;,
        Landroid/support/v4/app/NotificationCompat$Style;,
        Landroid/support/v4/app/NotificationCompat$Builder;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi26Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi24Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi21Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi20Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi19Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatApi16Impl;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;,
        Landroid/support/v4/app/NotificationCompat$BuilderExtender;,
        Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 953
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 954
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    .line 968
    :goto_0
    return-void

    .line 955
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 956
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 957
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 958
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 959
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 960
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi20Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi20Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 961
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 962
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi19Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 963
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 964
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 966
    :cond_5
    new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method static addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithActions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithActions;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 947
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 948
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-interface {p0, v0}, Landroid/support/v4/app/NotificationBuilderWithActions;->addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V

    goto :goto_0

    .line 950
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_0
    return-void
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 4823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 4824
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4828
    :goto_0
    return-object v0

    .line 4825
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 4826
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 4828
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
