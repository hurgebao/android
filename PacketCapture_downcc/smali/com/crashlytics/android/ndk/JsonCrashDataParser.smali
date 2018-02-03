.class Lcom/crashlytics/android/ndk/JsonCrashDataParser;
.super Ljava/lang/Object;
.source "JsonCrashDataParser.java"


# static fields
.field private static final EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

.field private static final EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

.field private static final EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;


# instance fields
.field private final fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 60
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 61
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V
    .locals 0
    .param p1, "fileIdStrategy"    # Lcom/crashlytics/android/ndk/FileIdStrategy;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    .line 77
    return-void
.end method

.method private static correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "missingFile"    # Ljava/io/File;

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 297
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "missingFile":Ljava/io/File;
    .local v3, "missingFile":Ljava/io/File;
    move-object p0, v3

    .line 302
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "missingFile":Ljava/io/File;
    .restart local p0    # "missingFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p0

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "JsonCrashDataParser"

    const-string v6, "Error getting ApplicationInfo"

    invoke-interface {v4, v5, v6, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-static {v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 288
    :cond_0
    return-object v0
.end method

.method private static isRelevant(Lcom/crashlytics/android/ndk/ProcMapEntry;)Z
    .locals 3
    .param p0, "mapEntry"    # Lcom/crashlytics/android/ndk/ProcMapEntry;

    .prologue
    const/4 v2, -0x1

    .line 306
    iget-object v0, p0, Lcom/crashlytics/android/ndk/ProcMapEntry;->perms:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .locals 18
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    sget-object v4, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 220
    :goto_0
    return-object v4

    .line 190
    :cond_0
    :try_start_0
    const-string v4, "maps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 191
    .local v12, "entries":Lorg/json/JSONArray;
    invoke-static {v12}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 196
    .local v17, "mapsString":Ljava/lang/String;
    const-string v4, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, "mapsEntries":[Ljava/lang/String;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 199
    .local v10, "binaryImages":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/internal/models/BinaryImageData;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v13, v4, :cond_3

    .line 200
    aget-object v14, v16, v13

    .line 201
    .local v14, "mapEntryString":Ljava/lang/String;
    invoke-static {v14}, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/crashlytics/android/ndk/ProcMapEntry;

    move-result-object v15

    .line 203
    .local v15, "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    if-eqz v15, :cond_1

    invoke-static {v15}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->isRelevant(Lcom/crashlytics/android/ndk/ProcMapEntry;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 192
    .end local v10    # "binaryImages":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/internal/models/BinaryImageData;>;"
    .end local v12    # "entries":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v14    # "mapEntryString":Ljava/lang/String;
    .end local v15    # "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    .end local v16    # "mapsEntries":[Ljava/lang/String;
    .end local v17    # "mapsString":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 193
    .local v11, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    goto :goto_0

    .line 207
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v10    # "binaryImages":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/internal/models/BinaryImageData;>;"
    .restart local v12    # "entries":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v14    # "mapEntryString":Ljava/lang/String;
    .restart local v15    # "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    .restart local v16    # "mapsEntries":[Ljava/lang/String;
    .restart local v17    # "mapsString":Ljava/lang/String;
    :cond_2
    iget-object v8, v15, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    .line 208
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 211
    .local v2, "binFile":Ljava/io/File;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    invoke-interface {v4, v2}, Lcom/crashlytics/android/ndk/FileIdStrategy;->getId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "id":Ljava/lang/String;
    new-instance v3, Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    iget-wide v4, v15, Lcom/crashlytics/android/ndk/ProcMapEntry;->address:J

    iget-wide v6, v15, Lcom/crashlytics/android/ndk/ProcMapEntry;->size:J

    invoke-direct/range {v3 .. v9}, Lcom/crashlytics/android/core/internal/models/BinaryImageData;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v3, "binaryImage":Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 215
    .end local v3    # "binaryImage":Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .end local v9    # "id":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 216
    .local v11, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "JsonCrashDataParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not generate ID for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v15, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v11}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 220
    .end local v2    # "binFile":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "mapEntryString":Ljava/lang/String;
    .end local v15    # "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    goto :goto_0
.end method

.method public parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 21
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v3, "\\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "jsonLines":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 83
    .local v19, "topFrame":Lorg/json/JSONObject;
    const/16 v16, 0x0

    .line 84
    .local v16, "signalInfo":Lorg/json/JSONObject;
    const/16 v18, 0x0

    .line 85
    .local v18, "time":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 86
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 87
    .local v17, "threadsObj":Lorg/json/JSONObject;
    const/4 v14, 0x0

    .line 89
    .local v14, "mapsObj":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v3, v13

    if-ge v12, v3, :cond_0

    .line 92
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    aget-object v3, v13, v12

    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v15, "parsed":Lorg/json/JSONObject;
    packed-switch v12, :pswitch_data_0

    .line 89
    :goto_1
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 93
    .end local v15    # "parsed":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 120
    :cond_0
    if-eqz v18, :cond_1

    if-eqz v16, :cond_1

    if-nez v19, :cond_2

    .line 121
    :cond_1
    new-instance v3, Lorg/json/JSONException;

    const-string v20, "Could not parse required crash data"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .restart local v15    # "parsed":Lorg/json/JSONObject;
    :pswitch_1
    move-object/from16 v19, v15

    .line 99
    goto :goto_1

    .line 101
    :pswitch_2
    move-object/from16 v16, v15

    .line 102
    goto :goto_1

    .line 104
    :pswitch_3
    move-object/from16 v18, v15

    .line 105
    goto :goto_1

    .line 107
    :pswitch_4
    move-object v2, v15

    .line 108
    goto :goto_1

    .line 110
    :pswitch_5
    move-object/from16 v17, v15

    .line 111
    goto :goto_1

    .line 113
    :pswitch_6
    move-object v14, v15

    .line 114
    goto :goto_1

    .line 124
    .end local v15    # "parsed":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 125
    .local v4, "timestamp":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;

    move-result-object v6

    .line 127
    .local v6, "signal":Lcom/crashlytics/android/core/internal/models/SignalData;
    if-nez v17, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseTopFrameData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;

    move-result-object v7

    .line 130
    .local v7, "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-result-object v9

    .line 131
    .local v9, "customAttributes":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;

    move-result-object v10

    .line 132
    .local v10, "deviceData":Lcom/crashlytics/android/core/internal/models/DeviceData;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    move-result-object v8

    .line 134
    .local v8, "binaryImages":[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    new-instance v3, Lcom/crashlytics/android/core/internal/models/SessionEventData;

    invoke-direct/range {v3 .. v10}, Lcom/crashlytics/android/core/internal/models/SessionEventData;-><init>(JLcom/crashlytics/android/core/internal/models/SignalData;[Lcom/crashlytics/android/core/internal/models/ThreadData;[Lcom/crashlytics/android/core/internal/models/BinaryImageData;[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Lcom/crashlytics/android/core/internal/models/DeviceData;)V

    return-object v3

    .line 127
    .end local v7    # "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .end local v8    # "binaryImages":[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .end local v9    # "customAttributes":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .end local v10    # "deviceData":Lcom/crashlytics/android/core/internal/models/DeviceData;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;

    move-result-object v7

    goto :goto_2

    .line 131
    .restart local v7    # "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .restart local v9    # "customAttributes":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    const-string v3, "json_session"

    invoke-direct {v2, v3, p1}, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;
    .locals 14
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, "orientation":I
    const-string v0, "total_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 147
    .local v2, "totalPhysicalMemory":J
    const-string v0, "total_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 148
    .local v4, "totalInternalStorage":J
    const-string v0, "available_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 149
    .local v6, "availablePhysicalMemory":J
    const-string v0, "available_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 150
    .local v8, "availableInternalStorage":J
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 152
    .local v10, "batteryCapacity":I
    const-string v0, "battery_velocity"

    const/4 v13, 0x1

    invoke-virtual {p1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 153
    .local v11, "batteryVelocity":I
    const-string v0, "proximity_enabled"

    const/4 v13, 0x0

    invoke-virtual {p1, v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 155
    .local v12, "proximity":Z
    new-instance v0, Lcom/crashlytics/android/core/internal/models/DeviceData;

    invoke-direct/range {v0 .. v12}, Lcom/crashlytics/android/core/internal/models/DeviceData;-><init>(IJJJJIIZ)V

    return-object v0
.end method

.method public parseFrame(Lorg/json/JSONObject;I)Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    .locals 9
    .param p1, "frame"    # Lorg/json/JSONObject;
    .param p2, "threadImportance"    # I

    .prologue
    .line 263
    const-string v1, "pc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 264
    .local v2, "pc":J
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "maybeSymbol":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v4, ""

    .line 266
    .local v4, "symbol":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    const-string v5, ""

    const-wide/16 v6, 0x0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    return-object v1

    .end local v4    # "symbol":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    .line 265
    goto :goto_0
.end method

.method public parseFrames(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    .locals 6
    .param p1, "jsonThread"    # Lorg/json/JSONObject;
    .param p2, "threadImportance"    # I

    .prologue
    .line 244
    const-string v5, "frames"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 245
    .local v3, "jsonFrames":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 246
    sget-object v1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 259
    :cond_0
    return-object v1

    .line 249
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 250
    .local v4, "len":I
    new-array v1, v4, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 251
    .local v1, "frames":[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 252
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 253
    .local v0, "frame":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 251
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseFrame(Lorg/json/JSONObject;I)Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    move-result-object v5

    aput-object v5, v1, v2

    goto :goto_1
.end method

.method public parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;
    .locals 6
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 168
    const-string v4, "sig_name"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "sigName":Ljava/lang/String;
    const-string v4, "sig_code"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "sigCode":Ljava/lang/String;
    const-string v4, "si_addr"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 171
    .local v0, "sigAddr":J
    new-instance v4, Lcom/crashlytics/android/core/internal/models/SignalData;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/crashlytics/android/core/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .locals 9
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 224
    const-string v7, "threads"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 225
    .local v2, "jsonThreads":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 226
    sget-object v6, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 239
    :cond_0
    return-object v6

    .line 229
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 230
    .local v3, "len":I
    new-array v6, v3, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 231
    .local v6, "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 232
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    .local v1, "jsonThread":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "threadName":Ljava/lang/String;
    const-string v7, "crashed"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x4

    .line 236
    .local v4, "threadImportance":I
    :goto_1
    new-instance v7, Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-virtual {p0, v1, v4}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseFrames(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    move-result-object v8

    invoke-direct {v7, v5, v4, v8}, Lcom/crashlytics/android/core/internal/models/ThreadData;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    aput-object v7, v6, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v4    # "threadImportance":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public parseTopFrameData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .locals 6
    .param p1, "topFrame"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    new-array v0, v4, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    invoke-virtual {p0, p1, v5}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseFrame(Lorg/json/JSONObject;I)Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    move-result-object v2

    aput-object v2, v0, v3

    .line 179
    .local v0, "frames":[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    new-instance v1, Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-direct {v1, v5, v0}, Lcom/crashlytics/android/core/internal/models/ThreadData;-><init>(I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    .line 180
    .local v1, "thread":Lcom/crashlytics/android/core/internal/models/ThreadData;
    new-array v2, v4, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    aput-object v1, v2, v3

    return-object v2
.end method
