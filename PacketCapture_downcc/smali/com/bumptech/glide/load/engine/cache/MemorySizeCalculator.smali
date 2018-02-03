.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# instance fields
.field private final arrayPoolSize:I

.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)V
    .locals 11
    .param p1, "builder"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$000(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$100(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/app/ActivityManager;

    move-result-object v8

    invoke-static {v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$200(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 38
    :goto_0
    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 41
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$100(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/app/ActivityManager;

    move-result-object v8

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$300(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v9

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$400(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v10

    .line 40
    invoke-static {v8, v9, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;FF)I

    move-result v2

    .line 43
    .local v2, "maxSize":I
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$500(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    move-result-object v8

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v7

    .line 44
    .local v7, "widthPixels":I
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$500(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    move-result-object v8

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v1

    .line 45
    .local v1, "heightPixels":I
    mul-int v8, v7, v1

    mul-int/lit8 v4, v8, 0x4

    .line 47
    .local v4, "screenSize":I
    int-to-float v8, v4

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$600(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 49
    .local v5, "targetBitmapPoolSize":I
    int-to-float v8, v4

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$700(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 50
    .local v6, "targetMemoryCacheSize":I
    iget v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    sub-int v0, v2, v8

    .line 52
    .local v0, "availableSize":I
    add-int v8, v6, v5

    if-gt v8, v0, :cond_2

    .line 53
    iput v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 54
    iput v5, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 61
    :goto_1
    const-string v8, "MemorySizeCalculator"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    const-string v9, "MemorySizeCalculator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 66
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", pool size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 68
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", byte array size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 70
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", memory class limited? "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v8, v6, v5

    if-le v8, v2, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", max size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", memoryClass: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 76
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$100(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/app/ActivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", isLowMemoryDevice: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 78
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$100(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/app/ActivityManager;

    move-result-object v10

    invoke-static {v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void

    .line 38
    .end local v0    # "availableSize":I
    .end local v1    # "heightPixels":I
    .end local v2    # "maxSize":I
    .end local v4    # "screenSize":I
    .end local v5    # "targetBitmapPoolSize":I
    .end local v6    # "targetMemoryCacheSize":I
    .end local v7    # "widthPixels":I
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$200(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)I

    move-result v8

    goto/16 :goto_0

    .line 56
    .restart local v0    # "availableSize":I
    .restart local v1    # "heightPixels":I
    .restart local v2    # "maxSize":I
    .restart local v4    # "screenSize":I
    .restart local v5    # "targetBitmapPoolSize":I
    .restart local v6    # "targetMemoryCacheSize":I
    .restart local v7    # "widthPixels":I
    :cond_2
    int-to-float v8, v0

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$600(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v9

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$700(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v10

    add-float/2addr v9, v10

    div-float v3, v8, v9

    .line 57
    .local v3, "part":F
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$700(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 58
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->access$600(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F

    move-result v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto/16 :goto_1

    .line 70
    .end local v3    # "part":F
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method static synthetic access$800(Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityManager;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;FF)I
    .locals 3
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "maxSizeMultiplier"    # F
    .param p2, "lowMemoryMaxSizeMultiplier"    # F

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v1, v2, 0x400

    .line 106
    .local v1, "memoryClassBytes":I
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    .line 107
    .local v0, "isLowMemoryDevice":Z
    int-to-float v2, v1

    if-eqz v0, :cond_0

    .end local p2    # "lowMemoryMaxSizeMultiplier":F
    :goto_0
    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .restart local p2    # "lowMemoryMaxSizeMultiplier":F
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArrayPoolSizeInBytes()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    return v0
.end method

.method public getBitmapPoolSize()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
