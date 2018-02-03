.class public Lapp/greyshirts/firewall/proxy/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "MyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 24
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 31
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 32
    new-instance v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v1, v4}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 34
    const-string v1, "ca-app-pub-3304218499422412~3822906083"

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v2}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 37
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    .line 38
    .local v0, "persistentLog":Lapp/greyshirts/firewall/app/debuglog/PersistentLog;
    const-string v1, "Application started"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v1, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    invoke-virtual {v1, p0}, Lsetting/AppSetting;->init(Landroid/content/Context;)V

    .line 41
    sget-object v1, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    invoke-virtual {v1, p0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->init(Landroid/content/Context;)V

    .line 42
    sget-object v1, Lui/home/AppHistory;->INSTANCE:Lui/home/AppHistory;

    invoke-virtual {v1, p0}, Lui/home/AppHistory;->init(Landroid/content/Context;)V

    goto :goto_0
.end method
