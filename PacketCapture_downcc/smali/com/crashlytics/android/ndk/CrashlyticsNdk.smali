.class public Lcom/crashlytics/android/ndk/CrashlyticsNdk;
.super Lio/fabric/sdk/android/Kit;
.source "CrashlyticsNdk.java"

# interfaces
.implements Lcom/crashlytics/android/core/internal/CrashEventDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/crashlytics/android/core/internal/CrashEventDataProvider;"
    }
.end annotation


# instance fields
.field private kitController:Lcom/crashlytics/android/ndk/NdkKitController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->kitController:Lcom/crashlytics/android/ndk/NdkKitController;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/NdkKitController;->loadPreviousCrashData()V

    .line 83
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->kitController:Lcom/crashlytics/android/ndk/NdkKitController;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/NdkKitController;->clearCachedData()V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->kitController:Lcom/crashlytics/android/ndk/NdkKitController;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/NdkKitController;->getPreviousCrashData()Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "1.1.6.167"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 4

    .prologue
    .line 50
    const-class v2, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v2}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 51
    .local v0, "crashlyticsCore":Lcom/crashlytics/android/core/CrashlyticsCore;
    if-nez v0, :cond_0

    .line 52
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v3, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->create(Lcom/crashlytics/android/ndk/CrashlyticsNdk;)Lcom/crashlytics/android/ndk/NdkKitController;

    move-result-object v1

    .line 55
    .local v1, "kitController":Lcom/crashlytics/android/ndk/NdkKitController;
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsKitBinder;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->onPreExecute(Lcom/crashlytics/android/ndk/NdkKitController;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z

    move-result v2

    return v2
.end method

.method onPreExecute(Lcom/crashlytics/android/ndk/NdkKitController;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z
    .locals 4
    .param p1, "kitController"    # Lcom/crashlytics/android/ndk/NdkKitController;
    .param p2, "crashlyticsCore"    # Lcom/crashlytics/android/core/CrashlyticsCore;
    .param p3, "kitBinder"    # Lcom/crashlytics/android/core/CrashlyticsKitBinder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->kitController:Lcom/crashlytics/android/ndk/NdkKitController;

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/crashlytics/android/ndk/NdkKitController;->initialize(Landroid/content/Context;)Z

    move-result v0

    .line 66
    .local v0, "initSuccessful":Z
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p3, p2, p0}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;->bindCrashEventDataProvider(Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/ndk/CrashlyticsNdk;)V

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsNdk"

    const-string v3, "Crashlytics NDK initialization successful"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return v0
.end method
