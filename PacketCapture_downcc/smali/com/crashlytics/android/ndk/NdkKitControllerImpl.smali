.class Lcom/crashlytics/android/ndk/NdkKitControllerImpl;
.super Ljava/lang/Object;
.source "NdkKitControllerImpl.java"

# interfaces
.implements Lcom/crashlytics/android/ndk/NdkKitController;


# instance fields
.field private final crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

.field private final crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

.field private lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

.field private final nativeApi:Lcom/crashlytics/android/ndk/NativeApi;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/ndk/NativeApi;Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/ndk/JsonCrashDataParser;)V
    .locals 0
    .param p1, "nativeApi"    # Lcom/crashlytics/android/ndk/NativeApi;
    .param p2, "crashFileManager"    # Lcom/crashlytics/android/ndk/CrashFileManager;
    .param p3, "crashDataParser"    # Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    .line 35
    iput-object p2, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    .line 36
    iput-object p3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    .line 37
    return-void
.end method

.method public static create(Lcom/crashlytics/android/ndk/CrashlyticsNdk;)Lcom/crashlytics/android/ndk/NdkKitController;
    .locals 5
    .param p0, "kit"    # Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    .prologue
    .line 19
    new-instance v3, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v3}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    .line 20
    .local v3, "nativeApi":Lcom/crashlytics/android/ndk/NativeApi;
    new-instance v2, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    invoke-direct {v2, p0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 21
    .local v2, "fileStore":Lio/fabric/sdk/android/services/persistence/FileStore;
    new-instance v1, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;-><init>(Lio/fabric/sdk/android/services/persistence/FileStore;)V

    .line 22
    .local v1, "crashFileManager":Lcom/crashlytics/android/ndk/CrashFileManager;
    new-instance v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>()V

    .line 23
    .local v0, "crashDataParser":Lcom/crashlytics/android/ndk/JsonCrashDataParser;
    new-instance v4, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;

    invoke-direct {v4, v3, v1, v0}, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;-><init>(Lcom/crashlytics/android/ndk/NativeApi;Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/ndk/JsonCrashDataParser;)V

    return-object v4
.end method

.method private readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "crashFile"    # Ljava/io/File;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "crashData":Ljava/lang/String;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsNdk"

    const-string v6, "Reading NDK crash data..."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 103
    const-string v4, "Error closing crash data file."

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v2, v3

    .line 106
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsNdk"

    const-string v6, "Failed to read NDK crash data."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    const-string v4, "Error closing crash data file."

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    const-string v5, "Error closing crash data file."

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 100
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public clearCachedData()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/CrashFileManager;->clearCrashFiles()V

    .line 81
    return-void
.end method

.method public getPreviousCrashData()Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "initSuccess":Z
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v3}, Lcom/crashlytics/android/ndk/CrashFileManager;->getNewCrashFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "crashFilePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/crashlytics/android/ndk/NativeApi;->initialize(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 49
    .end local v0    # "crashFilePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsNdk"

    const-string v5, "Error initializing CrashlyticsNdk"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadPreviousCrashData()V
    .locals 6

    .prologue
    .line 54
    iget-object v3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v3}, Lcom/crashlytics/android/ndk/CrashFileManager;->getLastWrittenCrashFile()Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "lastCrashFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsNdk"

    const-string v5, "Found NDK crash file..."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v1}, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "rawCrashData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v3

    iput-object v3, p0, Lcom/crashlytics/android/ndk/NdkKitControllerImpl;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsNdk"

    const-string v5, "Crashlytics failed to parse prior crash data."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
