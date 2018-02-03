.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private arrayPoolSizeBytes:I

.field private bitmapPoolScreens:F

.field private final context:Landroid/content/Context;

.field private lowMemoryMaxSizeMultiplier:F

.field private maxSizeMultiplier:F

.field private memoryCacheScreens:F

.field private screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 153
    sget v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 154
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    .line 155
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 156
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 159
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    .line 160
    const-string v0, "activity"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 162
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->access$800(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    return v0
.end method

.method static synthetic access$300(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    return v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    return v0
.end method

.method static synthetic access$500(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    return v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 129
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    return v0
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)V

    return-object v0
.end method
