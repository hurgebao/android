.class synthetic Lapp/greyshirts/firewall/proxy/ProxyWorker$4;
.super Ljava/lang/Object;
.source "ProxyWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/greyshirts/firewall/proxy/ProxyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->values()[Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$4;->$SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I

    :try_start_0
    sget-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$4;->$SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I

    sget-object v1, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->LOGGING_QUIET:Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;

    invoke-virtual {v1}, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$4;->$SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I

    sget-object v1, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->LOGGING_LOGCAT:Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;

    invoke-virtual {v1}, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$4;->$SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I

    sget-object v1, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->LOGGING_MEMORY:Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;

    invoke-virtual {v1}, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
