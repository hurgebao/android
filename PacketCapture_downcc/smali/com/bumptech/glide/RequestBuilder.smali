.class public Lcom/bumptech/glide/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final context:Lcom/bumptech/glide/GlideContext;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final glide:Lcom/bumptech/glide/Glide;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field protected requestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 38
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;)V
    .locals 1
    .param p1, "glide"    # Lcom/bumptech/glide/Glide;
    .param p2, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 65
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 66
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 67
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    .line 68
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 69
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 70
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 72
    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .locals 8
    .param p2, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v4

    .line 594
    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 593
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .locals 21
    .param p2, "parentCoordinator"    # Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .param p4, "priority"    # Lcom/bumptech/glide/Priority;
    .param p5, "overrideWidth"    # I
    .param p6, "overrideHeight"    # I
    .param p7, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p3, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v2, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-eqz v2, :cond_0

    .line 604
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v2, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    move-object/from16 v19, v0

    .line 613
    .local v19, "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-boolean v2, v2, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v2, :cond_1

    .line 614
    move-object/from16 v19, p3

    .line 617
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->isPrioritySet()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 618
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v17

    .line 620
    .local v17, "thumbPriority":Lcom/bumptech/glide/Priority;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v16

    .line 621
    .local v16, "thumbOverrideWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v15

    .line 622
    .local v15, "thumbOverrideHeight":I
    invoke-static/range {p5 .. p6}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 623
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v16

    .line 625
    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v15

    .line 628
    :cond_2
    new-instance v5, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .local v5, "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 629
    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v14

    .line 631
    .local v14, "fullRequest":Lcom/bumptech/glide/request/Request;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v10, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v4, p1

    move-object/from16 v6, v19

    move-object/from16 v7, v17

    move/from16 v8, v16

    move v9, v15

    .line 634
    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v18

    .line 642
    .local v18, "thumbRequest":Lcom/bumptech/glide/request/Request;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 643
    move-object/from16 v0, v18

    invoke-virtual {v5, v14, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 660
    .end local v5    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v14    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v15    # "thumbOverrideHeight":I
    .end local v16    # "thumbOverrideWidth":I
    .end local v17    # "thumbPriority":Lcom/bumptech/glide/Priority;
    .end local v18    # "thumbRequest":Lcom/bumptech/glide/request/Request;
    .end local v19    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :goto_1
    return-object v5

    .line 618
    .restart local v19    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v17

    goto :goto_0

    .line 645
    .end local v19    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 647
    new-instance v5, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .restart local v5    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 648
    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v14

    .line 650
    .restart local v14    # "fullRequest":Lcom/bumptech/glide/request/Request;
    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 651
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    .line 654
    .local v4, "thumbnailOptions":Lcom/bumptech/glide/request/RequestOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 653
    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v20

    .line 656
    .local v20, "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    move-object/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    goto :goto_1

    .end local v4    # "thumbnailOptions":Lcom/bumptech/glide/request/RequestOptions;
    .end local v5    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v14    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v20    # "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    :cond_5
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 660
    invoke-direct/range {v6 .. v13}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v5

    goto :goto_1
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 3
    .param p1, "current"    # Lcom/bumptech/glide/Priority;

    .prologue
    .line 579
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$com$bumptech$glide$Priority:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 586
    :goto_0
    return-object v0

    .line 583
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 586
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .param p2, "options"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")TY;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 359
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-boolean v2, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-nez v2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must call #load() before calling #into()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_0
    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 367
    .local v1, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 368
    .local v0, "previous":Lcom/bumptech/glide/request/Request;
    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 374
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 384
    :cond_1
    :goto_0
    return-object p1

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 381
    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 382
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, p1, v1}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    goto :goto_0
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 203
    return-object p0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;
    .locals 12
    .param p2, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p3, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "overrideWidth"    # I
    .param p7, "overrideHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p4, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v8, p0, Lcom/bumptech/glide/RequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v3, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    .line 680
    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v10

    .line 681
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v11

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p1

    move-object v9, p3

    .line 669
    invoke-static/range {v0 .. v11}, Lcom/bumptech/glide/request/SingleRequest;->obtain(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 91
    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 338
    .local v1, "result":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 339
    iget-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-object v1

    .line 341
    .end local v1    # "result":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 96
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 401
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 404
    .local v0, "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    sget-object v1, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    return-object v1

    .line 412
    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 413
    goto :goto_0

    .line 415
    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 416
    goto :goto_0

    .line 420
    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 421
    goto :goto_0

    .line 423
    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 424
    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .param p1, "model"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 321
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method
